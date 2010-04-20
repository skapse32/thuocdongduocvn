<?php
/**
* @version		$Id: mod_mostread.php 10381 2008-06-01 03:35:53Z pasamio $
* @package		Joomla
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
// Include the syndicate functions only once
require_once (dirname(__FILE__).DS.'helper.php');
require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');
$catid = JRequest::getVar('catid','');
if($catid)
	$cats = modNhomThuocHelper::getSubCategories($catid);
else 
	$cats=array();
//$Itemid = JRequest::getVar('Itemid');
$Itemid = $params->get('Itemid','');
$menuStr='';
if($Itemid)
	$menuStr="&Itemid=$Itemid";
	
for($i=0;$i<count($cats);$i++)
{
	$cats[$i]->link = JRoute::_("index.php?option=com_content&view=category&layout=blog&id={$cats[$i]->id}{$menuStr}&catid=$catid");
}
if(count($cats))
	require(JModuleHelper::getLayoutPath('mod_nhomthuoc'));
else
	echo "<center>Chưa có danh mục nào</center>";
