<?php
/**
 * @version    CreateAction.php 0.1
 * @package    backend\rest\action
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\action;

use Yii;
use yii\helpers\Url;

class CreateAction extends \yii\rest\CreateAction
{
    /**
     * Creates a new model.
     * @return \yii\db\ActiveRecordInterface the model newly created
     * @throws \Exception if there is any error when creating the model
     */
    public function run()
    {
        if ($this->checkAccess) {
            call_user_func($this->checkAccess, $this->id);
        }

        /**
         * @var \yii\db\ActiveRecord $model
         */
        $model = new $this->modelClass([
            'scenario' => $this->scenario,
        ]);

        $model->load(Yii::$app->getRequest()->getBodyParams(), '');

        $model->on('afterInsert', array('backend\eventListener\SaveRelatedListener', 'saveRelated'));
        $model->on('beforeValidate', array('backend\eventListener\SaveRelatedListener', 'beforeValidate'));

        if ($model->validate()) {
            $transaction = $model->getDb()->beginTransaction();
            try {
                $model->insert(false);

                $transaction->commit();
            } catch (\Exception $e) {
                $transaction->rollback();
                throw $e;
            }
        }

        if (!$model->hasErrors()) {
            $response = Yii::$app->getResponse();
            $response->setStatusCode(201);
            $id = implode(',', array_values($model->getPrimaryKey(true)));
            $response->getHeaders()->set('Location', Url::toRoute([$this->viewAction, 'id' => $id], true));
        }
        $model->refresh();

        return $model;
    }
}