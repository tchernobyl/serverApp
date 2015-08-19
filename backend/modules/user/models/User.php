<?php

namespace backend\modules\user\models;

use backend\modules\content\models\Content;

use backend\modules\file\models\File;
use Yii;

/**
 * This is the model class for table "user".
 * @property integer $id
 * @property string $username
 * @property string $auth_key
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 * @property string $activated_at
 * @property Content[] $contentDevices
 */
class User extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['username', 'email', 'first_name', 'last_name'], 'required'],
            [['status'], 'integer'],
            [['activated_at', 'created_at', 'updated_at', 'last_login'], 'safe'],
            [['username', 'password_hash', 'password_reset_token', 'email'], 'string', 'max' => 255],
            [
                ['auth_key', 'first_name', 'last_name', 'created_at', 'updated_at', 'activated_at', 'last_login'],
                'string',
                'max' => 32
            ]
        ];
    }

    public function fields()
    {
        return [
            'id' => 'id',
            'email' => 'email',
            'username' => 'username',
            'status' => 'status',
            'first_name' => 'first_name',
            'last_name' => 'last_name',
            'activation_code' => 'activation_code',
            'activated_at' => 'activated_at',
            'created_at' => 'created_at',
            'updated_at' => 'updated_at',
            'last_login' => 'last_login',

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'auth_key' => 'Auth Key',
            'password_hash' => 'Password Hash',
            'password_reset_token' => 'Password Reset Token',
            'email' => 'Email',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getContentDevices()
    {
        return $this->hasMany(Content::className(), ['owner_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getImages()
    {
        return $this->hasMany(File::className(), ['id' => 'image_id'])->viaTable(
            'user_image',
            ['user_id' => 'id']
        );
    }
}
