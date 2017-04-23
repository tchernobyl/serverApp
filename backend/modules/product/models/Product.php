<?php

namespace backend\modules\product\models;

use backend\behaviors\HasParamsBehavior;
use Yii;
use backend\modules\brand\models\Brand;

/**
 * This is the model class for table "product_product".
 * @property integer $id
 * @property string $product
 * @property string $short_description
 * @property string $description
 * @property string $params
 * @property string $extra_fields
 * @property string $name

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
            [['short_description', 'description', 'params', 'extra_fields'], 'string'],
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
            'extra_fields' => 'Extra Fields',
            'name' => 'Name',
        ];
    }





    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'HasParamsBehavior' => [
                    'class' => HasParamsBehavior::className(),
                    'attribute' => 'extra_fields'
                ],
            ]
        );
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



    /**
     * {@inheritdoc}
     */
    public function setExtraFields(array $extra_fields)
    {
        $this->extra_fields = $extra_fields;

        return $this;
    }




    public function defaultExpand()
    {
        return ['images'];

    }

}
