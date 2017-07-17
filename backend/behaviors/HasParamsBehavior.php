<?php
/**
 * @version    HasConfigBehavior.php 0.1
 * @package    Common\Modules\Resource\Behavior
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\behaviors;

use yii\base\Behavior;
use yii\base\Exception;
use yii\db\ActiveRecord;

class HasParamsBehavior extends Behavior
{
    public $attribute = 'params';
    public $serializationMethod = 'serialize';

    public function events()
    {
        return [
            ActiveRecord::EVENT_BEFORE_VALIDATE => 'beforeValidate',
            ActiveRecord::EVENT_AFTER_FIND => 'afterFind'
        ];
    }

    /**
     * @param ActiveRecord $owner
     */
    public function attach($owner)
    {
        parent::attach($owner);

        if (!$owner->getTableSchema()->getColumn($this->attribute)) {
            $logger = \Yii::getLogger();
            $logger->log(
                sprintf(
                    'Error in % class %s don\'t have a property named ',
                    __CLASS__,
                    get_class($owner),
                    $this->attribute
                ),
                $logger::LEVEL_ERROR
            );
            $this->detach();
        }
    }

    public function beforeValidate()
    {
        if (is_null($this->owner->{$this->attribute}) || empty($this->owner->{$this->attribute})) {
            $this->owner->{$this->attribute} = null;
        }

        if (is_array($this->owner->{$this->attribute}) or is_object($this->owner->{$this->attribute})) {
            $this->owner->{$this->attribute} = $this->serialize($this->owner->{$this->attribute});
        }

        return true;
    }

    public function serialize($data)
    {
        switch ($this->serializationMethod) {
            case 'json':
                return json_encode($data);
            case 'serialize':
            default:
                return serialize($data);
        }
    }

    public function afterFind()
    {
        $value = $this->unserialize($this->owner->{$this->attribute});

        if (is_null($value) || empty($value)) {
            $value = new \stdClass();
        }

        if ($value instanceof \__PHP_Incomplete_Class) {
            throw (new Exception(sprintf('Error while trying to unserialize %s', $this->attribute)));
        }

        $this->owner->{$this->attribute} = $value;
    }

    public function unserialize($data)
    {
        switch ($this->serializationMethod) {
            case 'json':
                return json_decode($data, true);
            case 'serialize':
            default:
                return unserialize($data);
        }
    }

    public function getParam($key, $default = null)
    {
        return isset($this->owner->{$this->attribute}[$key]) ? $this->owner->{$this->attribute}[$key] : $default;
    }
}