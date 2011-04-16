<?php


// no direct access
defined('_JEXEC') or die('Restricted access');
// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');
$Itemid		= $params->get('Itemid');
$count		= intval($params->get('count', 5));
$currentItemid = JRequest::getVar("Itemid",'');
$total = 0;
$list = modMostReadStoreHelper::getList($params,$total);
require(JModuleHelper::getLayoutPath('mod_store'));
