<?php
namespace backend\modules\file\fileInterface;

interface FileInterface
{
    /**
     * Set file path
     * @param $path
     * @return mixed
     */
    public function setPath($path);

    /**
     * Get path
     * @return String
     */
    public function getPath();

    /**
     * Set file extension
     * @param $extension
     * @return string
     */
    public function setExtension($extension);

    /**
     * Get file extension
     * @return mixed
     */
    public function getExtension();

    /**
     * Set name
     * @param $name
     * @return mixed
     */
    public function setName($name);

    /**
     * Set name
     * @param $systemName
     * @return mixed
     */
    public function setSystemName($systemName);

    /**
     * Get name
     * @return string
     */
    public function getName();

    /**
     * @return string
     */
    public function getFolder();
}