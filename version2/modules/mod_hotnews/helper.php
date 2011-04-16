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

/** ensure this file is being included by a parent file */
defined('_JEXEC') or die('Direct Access to this location is not allowed.');

class modMain_SlideHelper
{
	function getNews($section=array(),$maxnews=8)
	{
		$db=JFactory::getDBO();	
		$nullDate	= $db->getNullDate();

		$date =& JFactory::getDate();
		$now = $date->toMySQL();

		$where		= 'c.state = 1'
			. ' AND ( c.publish_up = '.$db->Quote($nullDate).' OR c.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( c.publish_down = '.$db->Quote($nullDate).' OR c.publish_down >= '.$db->Quote($now).' )'
			;
		if(!empty($section)){
			foreach($section as $aSec){
				$db->setQuery("SELECT c.id,c.title,c.introtext,c.fulltext,c.catid,c.sectionid,c.attribs,s.title as stitle, 
				CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(':', c.id, c.alias) ELSE c.id END as slug,
			    CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(':', cc.id, cc.alias) ELSE cc.id END as catslug
				FROM #__content as c 
				LEFT JOIN  #__categories as cc ON(c.catid=cc.id)
				LEFT JOIN  #__sections as s ON(c.sectionid=s.id)
				WHERE s.id='$aSec' AND $where ORDER BY publish_up DESC LIMIT 1");
				$rows[]= $db->loadObject();
			}
		}else{
				$db->setQuery("SELECT c.id,c.title,c.introtext,c.fulltext,c.catid,c.sectionid,c.attribs,s.title as stitle, 
				CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(':', c.id, c.alias) ELSE c.id END as slug,
			    CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(':', cc.id, cc.alias) ELSE cc.id END as catslug
				FROM #__content_position as p 
				LEFT JOIN #__content as c ON (p.content_id=c.id)
				LEFT JOIN  #__categories as cc ON(c.catid=cc.id)
				LEFT JOIN  #__sections as s ON(c.sectionid=s.id)
				WHERE p.pos3='1' AND $where ORDER BY publish_up DESC LIMIT $maxnews");
			$rows= $db->loadObjectList();
		}
		return $rows;
	}
}