<?php
/**
 * @version    SaveRelatedListener.php 0.1
 * @package    backend\modules\file\eventListener
 * @subpackage
 * @category   Controller
 * @author     Hamza Chouaibi {@link http://portalsway.com} {@link hamza.chouaibi[at]gmail[dot]com}
 * @author     Created on Sun, 11 Aug 2013 14:50:52 +0000
 * @license    GNU/GPL
 */

namespace backend\modules\file\eventListener;


use backend\db\Model;
use yii\base\Event;
use yii\base\InvalidCallException;
use yii\db\ActiveRecord;

class ResizeLogoFIle
{


    public static function createSpecialLogo(Event $event)
    {

        /** @var ActiveRecord $model */
        /** @var ActiveRecord $relatedRecord */
        $model = $event->sender;
        if (strpos($model->path, "businessLogo") && $model->folder == "settings/logo") {
            header("content-type: image/" . $model->extension);
            $srcsize = getimagesize($model->path);
//            file_put_contents("logoDetail.txt", $srcsize[0], 10000000);
            $dest_x = $srcsize[0];
            $dest_y = $srcsize[1];
            if ($srcsize[0] > $srcsize[1]) {
                if ($srcsize[0] > 190) {
                    $coefficient = $srcsize[0] / 190;
                    $dest_x = 190;
                    $dest_y = $srcsize[1] / $coefficient;
                }
            } else {
                if ($srcsize[1] > 60) {
                    $coefficient = $srcsize[1] / 60;
                    $dest_y = 60;
                    $dest_x = $srcsize[0] / $coefficient;
                }
            }

            if ($model->extension == "png") {

                $src_img = imagecreatefrompng($model->path);
                $dst_img = imagecreate($dest_x, $dest_y);

                imagecopyresized($dst_img, $src_img, 0, 0, 0, 0, $dest_x, $dest_y, $srcsize[0], $srcsize[1]);
                imagepng($dst_img, $model->path);
            }
            if ($model->extension == "jpeg" || $model->extension == "jpg") {

                $src_img = imagecreatefromjpeg($model->path);
                $dst_img = imagecreatetruecolor($dest_x, $dest_y);

                imagecopyresized($dst_img, $src_img, 0, 0, 0, 0, $dest_x, $dest_y, $srcsize[0], $srcsize[1]);
                imagejpeg($dst_img, $model->path);
            }
        }

    }
} 