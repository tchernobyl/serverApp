<?php

namespace backend\modules\device\models;

use backend\modules\content\models\Content;
use backend\modules\product\models\Product;
use Yii;

/**
 * This is the model class for table "device_device".
 * @property integer $id
 * @property integer $device_product_id
 * @property string $type
 * @property string $name
 * @property string $description
 * @property string $short_description
 * @property string $weight
 * @property string $width
 * @property string $height
 * @property string $depth
 * @property string $price
 * @property string $note
 * @property string $characters
 * @property Content $contents
 * @property Product $product
 */
class Device extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'device_device';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['device_product_id', 'type'], 'required'],
            [['device_product_id'], 'integer'],
            [['name', 'description', 'short_description', 'characters'], 'string'],
            [['weight', 'width', 'height', 'depth', 'price'], 'number'],
            [['type', 'note'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'device_product_id' => 'Product ID',
            'type' => 'Type',
            'name' => 'Name',
            'description' => 'Description',
            'short_description' => 'Short Description',
            'weight' => 'Weight',
            'width' => 'Width',
            'height' => 'Height',
            'depth' => 'Depth',
            'price' => 'Price',
            'note' => 'Note',
            'characters' => 'Characters',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'device_product_id']);
    }

    public function getContents()
    {
        return $this->hasMany(Content::className(), ['device_id' => 'id']);
    }
}
