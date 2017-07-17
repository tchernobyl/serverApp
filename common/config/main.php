<?php
$params = array_merge(
    require(__DIR__ . '/../../backend/config/params.php'),
    require(__DIR__ . '/../../backend/config/params-local.php')
);
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => $params['dsn'],
            'username' => $params['username'],
            'password' => $params['password'],
            'charset' => 'utf8',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'settings' => [
            'class' => 'pheme\settings\components\Settings',
            'cache' => null
        ],
    ],
];
