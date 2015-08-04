<?php
/**
 * @version    Module.php 0.1
 * @package    modules\v1
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend;


use backend\SM\StateMachineAwareInterface;
use SM\Factory\Factory;
use Yii;

class Module extends \yii\base\Module
{
    public $globalComponents;

    public function init()
    {
        parent::init();
        \Yii::configure($this, require(__DIR__ . '/config.php'));

        $this->registerGlobalComponents();
        $modules = $this->getModules();

        $stateMachineConfigs = [];
        foreach ($modules as $key => $value) {
            $module = $this->getModule($key);
            if ($module instanceof StateMachineAwareInterface) {
                $stateMachineConfigs = array_merge($stateMachineConfigs, $module->getStateMachineConfig());
            }
        }


        $factory = new Factory($stateMachineConfigs);
        $this->set('stateMachineFactory', $factory);
        Yii::$container->set('SM\Factory\FactoryInterface', $factory);
        Yii::$container->set('stateMachineFactory', 'SM\Factory\FactoryInterface');
    }

    protected function registerGlobalComponents()
    {
        \Yii::$app->setComponents($this->globalComponents);
    }
} 