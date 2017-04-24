<?php

$params = array_merge(
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
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => $params['dsn'],
            'username' => $params['username'],
            'password' => $params['password'],
            'charset' => 'utf8',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
            'rules' => [
                'POST oauth2/<action:\w+>' => 'oauth2/default/<action>',
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => [
                        'backend/category/category',
                        'backend/brand/brand',
                        'backend/user/user',
                        'backend/brand/Brandcategory',
                        'backend/product/product',

                    ]
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => [
                        'backend/customer/customer',
                    ],
                    'extraPatterns' => [

                        'POST signup' => 'signup'
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
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => [
                        'backend/file/file',
                    ]
                ],
            ],

        ],
        'user' => [
            'identityClass' => 'backend\modules\user\models\User',
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
        'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ]
    ],
    'params' => $params,
];
