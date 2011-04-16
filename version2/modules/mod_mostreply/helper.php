<?php

/**
* @version		$Id: helper.php 10857 2008-08-30 06:41:16Z willebil $
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

require_once (JPATH_SITE.DS.'components'.DS.'com_content'.DS.'helpers'.DS.'route.php');

class modMostReplyHelper
{
	function getList()
	{
		global $mainframe;

		$db			=& JFactory::getDBO();
		$user		=& JFactory::getUser();
		$aid		= $user->get('aid', 0);

		$contentConfig = &JComponentHelper::getParams( 'com_content' );
		$access		= !$contentConfig->get('show_noauth');

		$nullDate	= $db->getNullDate();
		$date =& JFactory::getDate();
		$now  = $date->toMySQL();
		//Content Items only
		$query = 'SELECT a.*,count(cm.id),' .
			' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
			' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
			' FROM #__jomcomment as cm,#__content AS a' .
			' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
			' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
			' WHERE ( a.state = 1 AND s.id > 0 )' .
			' AND cm.contentid = a.id'.
			' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' )' .
			' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )'.
			($access ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
			' AND cm.published = 1'.
			' AND s.published = 1' .
			' AND cc.published = 1' .
			' GROUP BY cm.contentid'.
			' ORDER BY count(cm.id) DESC'.
			' LIMIT 0,5'
			;
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		return $rows;
	}
}
