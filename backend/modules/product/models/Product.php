<?php

namespace backend\modules\product\models;

use backend\modules\content\models\Content;
use Yii;
use backend\modules\brand\models\Brand;
use backend\modules\device\models\Device;

/**
 * This is the model class for table "product_product".
 * @property integer $id
 * @property string $product
 * @property string $short_description
 * @property string $description
 * @property string $params
 * @property string $name
 * @property Content[] $contents
 */
class Product extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product', 'short_description', 'description', 'name'], 'required'],
            [['short_description', 'description', 'params'], 'string'],
            [['product', 'name'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'product' => 'Product',
            'short_description' => 'Short Description',
            'description' => 'Description',
            'params' => 'Params',
            'name' => 'Name',
        ];
    }


    /**
     * @return \yii\db\ActiveQuery
     */
    public function getContents()
    {
        return $this->hasMany(Content::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDevices()
    {
        return $this->hasMany(Device::className(), ['device_product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getBrands()
    {
        return $this->hasMany(Brand::className(), ['id' => 'brand_id'])->viaTable(
            'brand_product',
            ['product_id' => 'id']
        );

    }

//    /**
//     * @return \yii\db\ActiveQuery
//     */
//    public function getDevices()
//    {
//        return $this->hasMany(Brand::className(), ['id' => 'device_id'])->viaTable(
//            'device_product',
//            ['product_id' => 'id']
//        );
//    }
}
