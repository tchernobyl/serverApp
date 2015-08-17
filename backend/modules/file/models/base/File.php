<?php

namespace backend\modules\file\models\base;


use Yii;

/**
 * This is the model class for table "file".
 * @property integer $id
 * @property string $path
 * @property string $name
 * @property string $system_name
 * @property string $folder
 * @property string $description
 * @property string $mime_type
 * @property string $extension
 * @property string $created_at
 * @property string $updated_at
 */
class File extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'file';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['path'], 'required'],
            [['path', 'name', 'system_name', 'folder', 'description'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['mime_type'], 'string', 'max' => 255],
            [['extension'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'path' => Yii::t('app', 'Path'),
            'name' => Yii::t('app', 'Name'),
            'system_name' => Yii::t('app', 'System Name'),
            'folder' => Yii::t('app', 'Folder'),
            'description' => Yii::t('app', 'Description'),
            'mime_type' => Yii::t('app', 'Mime Type'),
            'extension' => Yii::t('app', 'Extension'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }


}
