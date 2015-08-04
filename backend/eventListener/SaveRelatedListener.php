<?php
/**
 * @version    SaveRelatedListener.php 0.1
 * @package    app\modules\v1\eventListener
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\eventListener;


use backend\db\Model;
use yii\base\Event;
use yii\base\InvalidCallException;
use yii\db\ActiveRecord;

class SaveRelatedListener
{

    public static function  beforeValidate(Event $event)
    {
        /** @var Model $model */
        $model = $event->sender;

        /** @var Model[] $relatedRecords */
        $relatedRecords = $model->getRelatedRecords();
        foreach ($relatedRecords as $key => $relatedRecord) {
            $relation = $model->getRelation($key);
            if ($relation->multiple) {
                continue;
            }
            if (!$relatedRecord instanceof Model) {
                continue;
            }

            $relatedRecord->save();
            $p1 = $relatedRecord->isPrimaryKey(array_keys($relation->link));
            $p2 = $model->isPrimaryKey(array_values($relation->link));

            if ($p1 && $p2) {
                if ($model->getIsNewRecord() && $relatedRecord->getIsNewRecord()) {
                    throw new InvalidCallException('Unable to link models: both models are newly created.');
                } elseif ($model->getIsNewRecord()) {
                    $model->softBindModels(array_flip($relation->link), $model, $relatedRecord);
                } else {
                    $model->softBindModels($relation->link, $relatedRecord, $model);
                }
            } elseif ($p1) {
                $model->softBindModels(array_flip($relation->link), $model, $relatedRecord);
            } elseif ($p2) {
                $model->softBindModels($relation->link, $relatedRecord, $model);
            } else {
                throw new InvalidCallException('Unable to link models: the link does not involve any primary key.');
            }
        }
    }

    public static function saveRelated(Event $event)
    {
        /** @var ActiveRecord $model */
        /** @var ActiveRecord $relatedRecord */
        $model = $event->sender;

        $model->setIsNewRecord(false);

        foreach ($model->getRelatedRecords() as $key => $relatedRecords) {
            if (!array_key_exists($key, $model->getModelRelations())) {
                continue;
            }

            $relation = $model->getRelation($key);

            if (!$relation->multiple) {
                if (!$relatedRecords instanceof Model) {
                    continue;
                }
                /** @var ActiveRecord $relatedRecords */
                $dirtyAttributes = $relatedRecords->getDirtyAttributes();
                if (!empty($dirtyAttributes)) {
                    $relatedRecords->save();
                    $model->link($key, $relatedRecords);
                }
            } else {
                foreach ($relatedRecords as $relatedRecord) {
                    //@todo need to check this on more details and cover it with tests
//                    if (!empty($relatedRecord->getDirtyAttributes())) {
                    $relatedRecord->save();
                    $model->link($key, $relatedRecord);
//                    }
                }
            }
        }
    }
} 