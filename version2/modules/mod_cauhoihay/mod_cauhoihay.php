<?php
/**
* @version		$Id: mod_latestnews.php 10381 2008-06-01 03:35:53Z pasamio $
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

$db = &JFactory::getDBO();
$db->setQuery("select * from #__comment WHERE answer_content!='' and del_flag=1   ORDER BY created DESC LIMIT 5");
$list = $db->loadObjectList();
require(JModuleHelper::getLayoutPath('mod_cauhoihay'));