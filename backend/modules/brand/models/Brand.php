<?php

namespace backend\modules\brand\models;

use backend\modules\category\models\Category;
use backend\modules\product\models\Product;
use Yii;

/**
 * This is the model class for table "brand_brand".
 * @property integer $id
 * @property string $type
 * @property Brandcategory[] $brandcategories
 */
class Brand extends \backend\db\Model
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'brand_brand';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['type'], 'string']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'type' => 'Type',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategories()
    {
        return $this->hasMany(Category::className(), ['id' => 'category_id'])->viaTable(
            'brand_category',
            ['brand_id' => 'id']
        );
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProducts()
    {
        return $this->hasMany(Product::className(), ['brand_id' => 'id']);
    }

    /**
     * @return array
     */
    public function defaultExpand()
    {
        return [
//            'categories'
        ];
    }
}
