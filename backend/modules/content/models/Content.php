<?php

namespace backend\modules\content\models;

use backend\modules\brand\models\Brand;
use backend\modules\device\models\Device;
use backend\modules\product\models\Product;
use Yii;
use backend\modules\user\models\User;

/**
 * This is the model class for table "content_device".
 * @property integer $id
 * @property integer $device_id
 * @property integer $owner_id
 * @property string $created_at
 * @property string $updated_at
 * @property string $description
 * @property string $short_description
 * @property string $price
 * @property string $characters
 * @property string $name
 * @property string $product_id
 * @property User $owner
 * @property Device $device
 * @property Product $product
 */
class Content extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'content_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['device_id', 'owner_id'], 'required'],
            [['device_id', 'owner_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['description', 'short_description', 'characters'], 'string'],
            [['price'], 'string', 'max' => 25],
            [['name',], 'string', 'max' => 250]

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'device_id' => 'Device ID',
            'owner_id' => 'Owner ID',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'description' => 'Description',
            'short_description' => 'Short Description',
            'price' => 'Price',
            'characters' => 'Characters',
            'name' => 'Name'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOwner()
    {
        return $this->hasOne(User::className(), ['id' => 'owner_id']);
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevice()
    {
        return $this->hasOne(Device::className(), ['id' => 'device_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductId()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id'])->viaTable(
            'device_device',
            ['id' => 'device_id']
        );
    }

}
