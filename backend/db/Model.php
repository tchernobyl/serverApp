<?php
/**
 * @version    ActiveRecord.php 0.1
 * @package    backend\db
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\db;

use backend\db\event\ToArrayEvent;
use Yii;
use yii\base\InvalidCallException;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveQuery;
use yii\db\ActiveQueryInterface;
use yii\db\ActiveRecord;
use yii\db\Expression;
use yii\helpers\ArrayHelper;
use yii\helpers\Inflector;
use yii\web\Link;
use yii\web\Linkable;

class Model extends ActiveRecord implements Linkable
{
    const EVENT_AFTER_TO_ARRAY = 'after_to_array';

    private $_oldRelated;

    public function init()
    {
        parent::init();
        $updatedAtAttribute = $createdAtAttribute = null;
        if ($this->hasAttribute('created_at')) {
            $createdAtAttribute = 'created_at';
        } elseif ($this->hasAttribute('created')) {
            $createdAtAttribute = 'created';
        }

        if ($this->hasAttribute('updated_at')) {
            $updatedAtAttribute = 'updated_at';
        } elseif ($this->hasAttribute('updated')) {
            $updatedAtAttribute = 'updated';
        }

        $this->attachBehavior(
            TimestampBehavior::className(),
            [
                'class' => TimestampBehavior::className(),
                'createdAtAttribute' => $createdAtAttribute,
                'updatedAtAttribute' => $updatedAtAttribute,
                'value' => new Expression('NOW()')
            ]
        );
    }

    /**
     * @param null $key
     * @return array|null
     */
    public function getOldRelated($key = null)
    {
        if ($key) {
            return isset($this->_oldRelated[$key]) ? $this->_oldRelated[$key] : null;
        }

        return $this->_oldRelated === null ? [] : $this->_oldRelated;
    }

    /**
     * Sets the attribute values in a massive way.
     * @param array $values attribute values (name => value) to be assigned to the model.
     * @param boolean $safeOnly whether the assignments should only be done to the safe attributes.
     * A safe attribute is one that is associated with a validation rule in the current [[scenario]].
     * @see safeAttributes()
     * @see attributes()
     */
    public function setAttributes($values, $safeOnly = true)
    {
        if (is_array($values)) {
            $attributes = array_flip($safeOnly ? $this->safeAttributes() : $this->attributes());
            foreach ($values as $name => $value) {
                $fieldName = Inflector::underscore($name);
                if (isset($attributes[$fieldName])) {
                    $this->$fieldName = $value;
                } elseif (array_key_exists($name, $this->getModelRelations())) {
                    $this->populateRelation($name, $value);
                } elseif ($safeOnly) {
                    $this->onUnsafeAttribute($name, $value);
                }
            }
        }
    }

    /**
     * @inheritdoc
     */
    public function getModelRelations()
    {
        $reflector = new \ReflectionClass($this);
        $stack = array();
        foreach ($reflector->getMethods() AS $method) {
            if (substr($method->name, 0, 3) !== 'get') {
                continue;
            }
            if ($method->name === 'getRelation') {
                continue;
            }
            if ($method->name === 'getBehavior') {
                continue;
            }
            if ($method->name === 'getFirstError') {
                continue;
            }
            if ($method->name === 'getAttribute') {
                continue;
            }
            if ($method->name === 'getAttributeLabel') {
                continue;
            }
            if ($method->name === 'getOldAttribute') {
                continue;
            }
            if ($method->name === 'getModelRelations') {
                continue;
            }
            if ($method->name === 'getTags') {
                continue;
            }
            if ($method->name === 'getRelatedRecord') {
                continue;
            }
            if ($method->name === 'getCategory') {
                continue;
            }
            if ($method->name === 'getAttributeHint') {
                continue;
            }


            $relation = call_user_func(array($this, $method->name));

            if ($relation instanceof ActiveQueryInterface) {


                $stack[lcfirst(str_replace(substr($method->name, 0, 3), '', $method->name))] = $relation;
            }
        }


        return $stack;
    }

    /**
     * @inheritdoc
     */
    public function populateRelation($name, $value)
    {
        /** @var Model $related */
        /** @var Model $relatedRecord */
        $relation = $this->getRelation($name);
        $relatedRecordClass = $relation->modelClass;
        if ($relation->multiple) {
            $relatedRecords = array();
            $this->_oldRelated[$name] = $this->$name;
            foreach ($value as $recordData) {
                $related = null;

                if (isset($recordData['id'])) {
                    $related = $relatedRecordClass::findOne($recordData['id']);
                }

                if (!$related or !$related instanceof Model) {
                    $related = new $relatedRecordClass;
                }

                $related->load($recordData, '');
                $relatedRecords[] = $related;
            }
            parent::populateRelation($name, $relatedRecords);

            /**
             * @param Model $oldRelatedRecord
             * @param integer $key
             * @param Model $args
             */
            $deleteIfNotExitsInNewRelatedList = function ($oldRelatedRecord, $key, $args) {
                $exists = false;
                $relatedRecords = $args[0];
                /** @var ActiveQuery $relation */
                $relation = $args[1];
                foreach ($relatedRecords as $relatedRecord) {
                    if ($relatedRecord->isNewRecord) {
                        continue;
                    }

                    if ($oldRelatedRecord->equals($relatedRecord)) {
                        $exists = true;
                    }
                }
                if ($relation->via instanceof ActiveQueryInterface) {
                    $id = array_keys($relation->via->link);
                    $id = reset($id);
                    $viaTable = reset($relation->via->from);
                    static::getDb()->createCommand()
                        ->delete($viaTable, [$id => $this->id])->execute();
                } elseif (!$exists) { //old related record doesn't exists in the updated list so it has to be deleted
                    $oldRelatedRecord->delete();
                }
            };
            $args = [$relatedRecords, $relation];
            array_walk($this->_oldRelated[$name], $deleteIfNotExitsInNewRelatedList, $args);
        } else {
            $relatedRecord = new $relatedRecordClass;
            if (isset($value['id'])) {
                $relatedRecord = $relatedRecordClass::findOne($value['id']);
            }

            if (!$relatedRecord or !$relatedRecord instanceof Model) {
                $relatedRecord = new $relatedRecordClass;
            }

            $relatedRecord->load($value, '');
            parent::populateRelation($name, $relatedRecord);
        }
    }

    public function validate($attributeNames = null, $clearErrors = true)
    {
        foreach ($this->getRelatedRecords() as $relationName => $relatedRecord) {
            $relation = $this->getRelation($relationName);
            if ($relation->multiple) {
                if (empty($relatedRecord)) {
                    continue;
                }
                /** @var Model[] $relatedRecord */
                $attributes = $relatedRecord[0]->getAttributes();
                foreach ($relation->link as $key => $value) {
                    unset($attributes[$key]);
                }

                if (!$this->validateMultiple($relatedRecord, $attributes)) {
                    foreach ($relatedRecord as $related) {
                        $this->addError($relationName, $related->getErrors());
                    }

                    return false;
                }
            } else {
                if (!$relatedRecord instanceof Model) {
                    continue;
                }
                /** @var Model $relatedRecord */
                if (!$relatedRecord->validate()) {
                    $this->addError($relationName, $relatedRecord->getErrors());

                    return false;
                }
            }
        }

        return parent::validate($attributeNames, $clearErrors);
    }

    /**
     * @param array $link
     * @param Model $foreignModel
     * @param Model $primaryModel
     * @throws InvalidCallException
     */
    public function softBindModels($link, $foreignModel, $primaryModel)
    {
        foreach ($link as $fk => $pk) {
            $value = $primaryModel->$pk;
            if ($value === null) {
                throw new InvalidCallException(
                    'Unable to link models: the primary key of ' . get_class(
                        $primaryModel
                    ) . ' is null.'
                );
            }
            $foreignModel->$fk = $value;
        }
    }

    /**
     * @inheritdoc
     */
    public function getLinks()
    {
        $reflector = new \ReflectionClass(get_called_class());
        $resource = Inflector::camel2id($reflector->getShortName());
        $resource = explode('-', $resource);

        $module = array_shift($resource);
        $resource = implode('', $resource);

        return [
            Link::REL_SELF => Yii::$app->getUrlManager()->createAbsoluteUrl(
                [sprintf('v1/%s/%s/view', $module, $resource), 'id' => $this->getPrimaryKey()]
            ),
        ];
    }

    public function toArray(array $fields = [], array $expand = [], $recursive = true)
    {
        $data = [];

        if (method_exists($this, 'defaultExpand')) {
            $expand = array_merge($expand, $this->defaultExpand());

        }

        foreach ($this->resolveFields($fields, $expand) as $field => $definition) {
            $data[$field] = is_string($definition) ? $this->$definition : call_user_func($definition, $field, $this);
        }

        if ($this instanceof Linkable) {
            $data['_links'] = Link::serialize($this->getLinks());
        }

        $this->trigger(self::EVENT_AFTER_TO_ARRAY, new ToArrayEvent([], $data));

        return $recursive ? ArrayHelper::toArray($data) : $data;
    }

    /**
     * @inheritdoc
     */
    protected function resolveFields(array $fields, array $expand)
    {
        $result = [];

        foreach ($this->fields() as $field => $definition) {
            $field = lcfirst(Inflector::camelize($field));
            if (is_integer($field)) {
                $field = $definition;
            }
            if (empty($fields) || in_array($field, $fields, true)) {
                $result[$field] = $definition;
            }
        }

        if (empty($expand)) {
            return $result;
        }

        foreach ($this->extraFields() as $field => $definition) {
            $field = lcfirst(Inflector::camelize($field));
            if (is_integer($field)) {
                $field = $definition;
            }
            if (in_array($field, $expand, true)) {
                $result[$field] = $definition;
            }
        }

        return $result;
    }

    /**
     * @inheritdoc
     */
    public function fields()
    {
        $fields = array_keys(get_object_vars($this));
        $fields = array_combine($fields, $fields);

        return ArrayHelper::merge(parent::fields(), $fields);
    }

    public function extraFields()
    {
        $relation = array_keys($this->getModelRelations());
        $relation = array_combine($relation, $relation);

        return array_merge(parent::extraFields(), $relation);
    }

    public function getClassShortName()
    {
        return $this->getReflectionClass()->getShortName();
    }

    /**
     * @return \ReflectionClass
     */
    protected function getReflectionClass()
    {
        return new \ReflectionClass($this);
    }

    public function getRelatedRecord($name)
    {
        $relatedRecords = $this->getRelatedRecords();

        return ArrayHelper::getValue($relatedRecords, $name);
    }

    /**
     * Return the error messages as a string
     * @return string
     */
    public function getErrorsAsString()
    {
        $string = '<br> ';
        foreach ($this->errors as $key => $value) {
            if (is_array($value)) {
                $string .= "<br>" . $key . ": " . implode("<br> * ", $value);
            } else {
                $string .= "<br>" . $key . ": " . $value;
            }
        }

        return $string;
    }
}