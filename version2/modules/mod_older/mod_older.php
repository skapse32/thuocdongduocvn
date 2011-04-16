<?php
/**
* @version		$Id: mod_whosonline.php 10381 2008-06-01 03:35:53Z pasamio $
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

// Include the whosonline functions only once
require_once (dirname(__FILE__).DS.'helper.php');
require_once (JPATH_SITE . '/components/com_content/helpers/route.php');
$view = strtolower(JRequest::getVar('view'));
$option = strtolower(JRequest::getVar('option'));
if($option!='com_content'||$view!='article')
	return;
$rows = modOlderHelper::getList();
require(JModuleHelper::getLayoutPath('mod_older'));
