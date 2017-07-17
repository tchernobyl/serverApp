<?php
return [
    'modules' => [
        'category' => [
            'class' => 'backend\modules\category\category',
        ],

        'product' => [
            'class' => 'backend\modules\product\product',
        ],

        'brand' => [
            'class' => 'backend\modules\brand\brand',
        ]

    ],
    'globalComponents' => [
        'filterRegistry' => [
            'class' => 'backend\rest\component\query\FilterRegistry',
            'filters' => [
                'eq' => 'backend\rest\component\query\filters\Equals',
                'gt' => 'backend\rest\component\query\filters\GreaterThan',
                'gte' => 'backend\rest\component\query\filters\GreaterThanOrEquals',
                'between' => 'backend\rest\component\query\filters\Between',
                'in' => 'backend\rest\component\query\filters\In',
                'isnull' => 'backend\rest\component\query\filters\IsNull',
                'lt' => 'backend\rest\component\query\filters\LessThan',
                'lte' => 'backend\rest\component\query\filters\LessThanOrEquals',
                'like' => 'backend\rest\component\query\filters\Like',
                'HasMany' => 'backend\rest\component\query\filters\HasMany',
                'neq' => 'backend\rest\component\query\filters\NotEquals',
                'notin' => 'backend\rest\component\query\filters\NotIn',
//                'tags' => 'backend\modules\taggable\query\filters\Tags',
            ]
        ],
        'filterManager' => [
            'class' => 'backend\rest\component\query\FilterManager'
        ]
    ]
];