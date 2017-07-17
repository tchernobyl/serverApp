<?php
/**
 * @version    IndexAction.php 0.1
 * @package    backend\rest\action
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\rest\action;

use backend\rest\component\query\FilterManager;
use backend\rest\data\Sort;
use yii\data\ActiveDataProvider;

class IndexAction extends \yii\rest\IndexAction
{
    /**
     * Prepares the data provider that should return the requested collection of the models.
     * @return ActiveDataProvider
     */
    protected function prepareDataProvider()
    {
        if ($this->prepareDataProvider !== null) {
            return call_user_func($this->prepareDataProvider, $this);
        }

        /**
         * @var \yii\db\BaseActiveRecord $modelClass
         */
        $modelClass = $this->modelClass;

        $filter = \Yii::$app->getRequest()->getQueryParam('filter');

        $activeDataProvider = new ActiveDataProvider([
            'query' => $modelClass::find()->where($filter),
        ]);

        /** @var FilterManager $filterManager */
        $filterManager = \Yii::$app->get('filterManager');

        $queries = \Yii::$app->getRequest()->getQueryParam('query');

        if ($queries) {
            $filterManager->apply($activeDataProvider, $queries);
        }

        $activeDataProvider->setPagination(['pageSizeLimit' => [1, 500]]);
        $config = ['class' => Sort::className(), 'enableMultiSort' => true];

        $sort = \Yii::createObject($config);
        $activeDataProvider->setSort($sort);

        return $activeDataProvider;
    }
}