<?php
/**
* @version		$Id: helper.php 10381 2008-06-01 03:35:53Z pasamio $
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

class modOlderHelper {
	function getList()
	{
		$db =& JFactory::getDBO();
		$id = JRequest::getVar('id');
		$query = "SELECT created FROM #__content WHERE id = '$id'";
		$db->setQuery($query);
		
		$user		=& JFactory::getUser();
		$aid		= $user->get('aid', 0);
		
		$created = $db->loadResult();
				//get category id 
		$catid = JRequest::getVar('catid');
		$catid = explode(':',$catid);
		$catid = $catid[0];
		//get null date
		$nullDate	= $db->getNullDate();
		
		$query = 'SELECT a.*,' .
			' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
			' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug'.
			' FROM #__content AS a' .
			' LEFT JOIN #__content_frontpage AS f ON f.content_id = a.id' .
			' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
			' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
			' WHERE ( a.state = 1 AND s.id > 0 )' .
			' AND ( a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($created).' )' .
			' AND ( a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($created).' )'.
			($access ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
			' AND catid ='.$catid.
			' AND a.created <'.$db->Quote($created).
			' AND s.published = 1' .
			' AND cc.published = 1' .
			' ORDER BY a.created DESC LIMIT 0,15';
			
		$db->setQuery($query);
		$rows = $db->loadObjectList();
		return $rows;
	}

}

