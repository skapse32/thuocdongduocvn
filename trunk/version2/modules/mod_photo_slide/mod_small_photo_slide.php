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
$contentid                  = $params->get( 'contentid', '' );
if($contentid){
	$ids=explode(',',$contentid);
	$db=JFactory::getDBO();	
		$nullDate	= $db->getNullDate();

		$date =& JFactory::getDate();
		$now = $date->toMySQL();

		$where		= 'c.state = 1'
			. ' AND ( c.publish_up = '.$db->Quote($nullDate).' OR c.publish_up <= '.$db->Quote($now).' )'
			. ' AND ( c.publish_down = '.$db->Quote($nullDate).' OR c.publish_down >= '.$db->Quote($now).' )'
			;
		if(!empty($ids)){
			$regex      = "#<img(.*?)>#s";
			$plg_matches=array();
			$m=array();
			foreach($ids as $id){
				$photos=array();
				empty($photos);
				$db->setQuery("SELECT c.id,c.title,c.fulltext,c.catid,c.sectionid,c.attribs, 
				CASE WHEN CHAR_LENGTH(c.alias) THEN CONCAT_WS(':', c.id, c.alias) ELSE c.id END as slug,
			    CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(':', cc.id, cc.alias) ELSE cc.id END as catslug
				FROM #__content as c 
				LEFT JOIN  #__categories as cc ON(c.catid=cc.id)
				LEFT JOIN  #__sections as s ON(c.sectionid=s.id)
				WHERE c.id='$id' AND $where ORDER BY publish_up DESC LIMIT 1");
				$row= $db->loadObject();				
				$original_img=preg_match_all($regex, $row->fulltext, $plg_matches, PREG_PATTERN_ORDER);
				foreach($plg_matches[1] as $aSrc){						
			    	preg_match_all("/src=\"(.+?)\"/i", $aSrc, $m);    	
			    	
			    		$photos[]=$m[1][0];
			    	
				}	
				$link=JRoute::_(ContentHelperRoute::getArticleRoute($row->slug, $row->catslug, $row->sectionid));
				$Article[]=array('title'=>$row->title,'link'=>$link,'photos'=>$photos);
			}		
			
		}

}
require(JModuleHelper::getLayoutPath('mod_small_photo_slide'));
