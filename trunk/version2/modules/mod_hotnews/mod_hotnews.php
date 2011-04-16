<?php
/**
* @version		$Id: mod_search.php 13338 2009-10-27 02:15:55Z ian $
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
require_once( dirname(__FILE__).DS.'helper.php' );
$section=array();
$maxnews = $params->get('maxnews', '');
$sectionid = $params->get('sectionid', '');
if($sectionid){
	$section=explode(',',$sectionid);
}	
$ListNews=modMain_SlideHelper::getNews($section,$maxnews);

require(JModuleHelper::getLayoutPath('mod_hotnews'));
