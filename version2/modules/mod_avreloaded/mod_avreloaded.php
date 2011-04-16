<?php
/**
 * AllVideos Reloaded Module Entry Point
 */

// no direct access
defined( '_JEXEC' ) or die('Restricted access');

// Include the syndicate functions only once
require_once(dirname(__FILE__).DS.'helper.php');

$video = modAvReloadedHelper::getVideo($params, $module);
//echo JUtility::dump($video);die;
require(JModuleHelper::getLayoutPath('mod_avreloaded'));
