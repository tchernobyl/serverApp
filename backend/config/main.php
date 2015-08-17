<?php

$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

$module = require(__DIR__ . '/modules.php');
return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'aliases' => [
        'bootstrap' => realpath(Yii::getAlias('vendor') . '/clevertech/yii-booster/src')
    ],
    'bootstrap' => [

    ],
    'modules' => $module,
    'components' => [
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => false,
            'showScriptName' => false,
            'rules' => [
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => [
                        'backend/category/category',
                        'backend/brand/brand',
                        'backend/brand/Brandcategory',
                        'backend/product/product',
                        'backend/field/field',
                        'backend/device/device',
                        'backend/content/content',
                        'backend/user/user'
                    ]
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => [
                        'backend/category/category'
                    ],
                    'extraPatterns' => [
                        'GET formatted/<parent_id:\w+>' => 'formattedCategories',
                        'GET formatted' => 'formattedCategories'
                    ]
                ],
            ],

        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
    ],
    'params' => $params,
];
