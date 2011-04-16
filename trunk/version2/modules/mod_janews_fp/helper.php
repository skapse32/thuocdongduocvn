<?php
/**
* @version		$Id: helper.php 7274 2007-05-02 17:40:09Z jinx $
* @package		Joomla
* @copyright	Copyright (C) 2005 - 2007 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined('_JEXEC') or die('Restricted access');
if(!defined('_JA_NEWS_')){
	define ('_JA_NEWS_', 1);
	
	require_once (JPATH_SITE . '/components/com_content/helpers/route.php');

	class modJaNewsHelper
	{

		function replaceImage( &$row, $align, $autoresize, $maxchars, $showimage, $width = 0, $height = 0 ) {
			global $database, $_MAMBOTS, $current_charset;
			$regex = '#<\s*img [^\>]*src\s*=\s*(["\'])(.*?)\1#im';
			
			preg_match ($regex, $row->introtext, $matches);
			if(!count($matches)) preg_match ($regex, $row->fulltext, $matches);
			$images = (count($matches)) ? $matches : array();
			$image = '';
			if (count($images)) $image = $images[2];
		  $align = $align?"align=\"$align\"":"";
			if ($image && $showimage) {
				if ($autoresize && function_exists('imagecreatetruecolor') 
					&& ($image1 = modJANewsHelper::processImage ( $image, $width, $height ))) {
						$image = "<img src=\"".$image1."\" alt=\"{$row->title}\" $align />";
				} else {
					$width = $width?"width=\"$width\"":"";
					$height = $height?"height=\"$height\"":"";
					$image = "<img src=\"".$image."\" alt=\"{$row->title}\" $width $height $align />";
				}
			} else $image = '';

			$regex1 = "/\<img.*\/\>/";
			$row->introtext = preg_replace( $regex1, '', $row->introtext );
			$row->introtext = trim($row->introtext);

			$row->introtext1 = strip_tags($row->introtext);
			if ($maxchars && strlen ($row->introtext) > $maxchars) {
				$row->introtext1 = substr ($row->introtext1, 0, $maxchars) . "...";
			}
			// clean up globals
			return $image;
		}

		function processImage ( &$img, $width, $height ) {
			if(!$img) return;
			$img = str_replace(JURI::base(),'',$img);
			$img = rawurldecode($img);
			$imagesurl = (file_exists(JPATH_SITE .'/'.$img)) ? modJANewsHelper::jaResize($img,$width,$height) :  '' ;
			return $imagesurl;
		}
		
		function jaResize($image,$max_width,$max_height){
			$path = JPATH_SITE;
			$sizeThumb = getimagesize(JPATH_SITE.'/'.$image);
			$width = $sizeThumb[0];
			$height = $sizeThumb[1];
			$x_ratio = $max_width / $width;
			$y_ratio = $max_height / $height;
			if (($width <= $max_width) && ($height <= $max_height) ) {
				$tn_width = $width;
				$tn_height = $height;
			} else if (($x_ratio * $height) < $max_height) {
				$tn_height = ceil($x_ratio * $height);
				$tn_width = $max_width;
			} else {
				$tn_width = ceil($y_ratio * $width);
				$tn_height = $max_height;
			}
			// read image
			$ext = strtolower(substr(strrchr($image, '.'), 1)); // get the file extension
			$rzname = strtolower(substr($image, 0, strpos($image,'.')))."_{$tn_width}_{$tn_height}.{$ext}"; // get the file extension
			$resized = $path.'/images/resized/'.$rzname;
			if(file_exists($resized)){
				$smallImg = getimagesize($resized);
				if (($smallImg[0] <= $tn_width && $smallImg[1] == $tn_height) ||
					($smallImg[1] <= $tn_height && $smallImg[0] == $tn_width)) {
						return "images/resized/".$rzname;
				}
			}
			if(!file_exists($path.'/images/resized/') && !mkdir($path.'/images/resized/',0755)) return '';
			$folders = explode('/',$image);
			$tmppath = $path.'/images/resized/';
			for($i=0;$i < count($folders)-1; $i++){
				if(!file_exists($tmppath.$folders[$i]) && !mkdir($tmppath.$folders[$i],0755)) return '';
				$tmppath = $tmppath.$folders[$i].'/';
			}
			switch ($ext) {
				case 'jpg':     // jpg
					$src = imagecreatefromjpeg(JPATH_SITE.'/'.$image);
					break;
				case 'png':     // png
					$src = imagecreatefrompng(JPATH_SITE.'/'.$image);
					break;
				case 'gif':     // gif
					$src = imagecreatefromgif(JPATH_SITE.'/'.$image);
					break;
				default:
			}
			$dst = imagecreatetruecolor($tn_width,$tn_height);
			imageantialias ($dst, true);
			imagecopyresampled ($dst, $src, 0, 0, 0, 0, $tn_width, $tn_height, $width, $height);
			imagejpeg($dst, $resized, 90); // write the thumbnail to cache as well...
			return "images/resized/".$rzname;
		}

		function calModStyle ($cols) {
			$modules = array();
			switch ($cols) {
				case 0: return null;
				break;
				case 1: 
					$modules[0]['class'] = "";
					$modules[0]['width'] = "100%";
					$modules[0]['subwidth'] = "100%";
					break;
				case 2: 
					$modules[0]['class'] = "-left";
					$modules[0]['width'] = "49.9%";
					$modules[0]['subwidth'] = "95%";
					$modules[1]['class'] = "-right";
					$modules[1]['width'] = "49.9%";
					$modules[1]['subwidth'] = "95%";
					break;
				default: 

					$width1 = round(99.6/($cols-0.1), 2);
					$width2 = round((99.6 - $width1*($cols-2))/2, 2);

					for ($i=1; $i<$cols - 1; $i++){
						$modules[$i]['class'] = "-center";
						$modules[$i]['width'] = $width1."%";
						$modules[$i]['subwidth'] = "90%";
					}
					$modules[0]['class'] = "-left";
					$modules[0]['width'] = $width2."%";
					$modules[0]['subwidth'] = "95%";
					$modules[$cols - 1]['class'] = "-right";
					$modules[$cols - 1]['width'] = $width2."%";
					$modules[$cols - 1]['subwidth'] = "95%";
					break;
			}
			return $modules;
		}

		function unhtmlentities($string) 
		{
			$trans_tbl = array("&lt;" => "<", "&gt;" => ">", "&amp;" => "&");
			return strtr($string, $trans_tbl);
		}
		
		function getList($catorsec, $catid, $items)
		{
			global $mainframe;

			$db 	=& JFactory::getDBO();
			$user 	=& JFactory::getUser();
			$aid	= $user->get('aid', 0);

			$contentConfig	= &JComponentHelper::getParams( 'com_content' );
			$noauth			= !$contentConfig->get('shownoauth');

			jimport('joomla.utilities.date');
			$date = new JDate();
			$now = $date->toMySQL();

			$nullDate = $db->getNullDate();

			// query to determine article count
			$query = 'SELECT a.*,cc.description as catdesc, cc.title as cattitle,s.description as secdesc, s.title as sectitle,' .
				' CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(":", a.id, a.alias) ELSE a.id END as slug,'.
				' CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(":", cc.id, cc.alias) ELSE cc.id END as catslug,'.
				' CASE WHEN CHAR_LENGTH(s.alias) THEN CONCAT_WS(":", s.id, s.alias) ELSE s.id END as secslug'.
				' FROM #__content AS a' .
				' INNER JOIN #__categories AS cc ON cc.id = a.catid' .
				' INNER JOIN #__sections AS s ON s.id = a.sectionid' .
				' WHERE a.state = 1 ' .
				($noauth ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid. ' AND s.access <= ' .(int) $aid : '').
				' AND (a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' ) ' .
				' AND (a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )' .
				(($catorsec)?"\n AND cc.id=" . (int) $catid:' AND s.id=' . (int) $catid) .
				' AND cc.section = s.id' .
				' AND cc.published = 1' .
				' AND s.published = 1' .
				' ORDER BY a.ordering';
			$db->setQuery($query, 0, $items);
			$rows = $db->loadObjectList();
  		global $mainframe;
  		JPluginHelper::importPlugin('content');
  		$dispatcher	   =& JDispatcher::getInstance();
  		$params 	   =& $mainframe->getParams('com_content');
  		$limitstart	= JRequest::getVar('limitstart', 0, '', 'int');
  
  		for($i=0;$i<count($rows);$i++) {
  		  $rows[$i]->text = $rows[$i]->introtext;
  		  $results = $dispatcher->trigger('onPrepareContent', array (& $rows[$i], & $params, $limitstart));
      }
			return $rows;
		}

		function getHLNews() {
			$db 	=& JFactory::getDBO();
			$contentConfig	= &JComponentHelper::getParams( 'com_content' );
			$noauth			= !$contentConfig->get('shownoauth');
			$user		=& JFactory::getUser();
			$aid	= $user->get('aid', 0);

			jimport('joomla.utilities.date');
			$date = new JDate();
			$now = $date->toMySQL();

			$nullDate = $db->getNullDate();
			$query = "SELECT a.*,"
					. "\n CASE WHEN CHAR_LENGTH(a.alias) THEN CONCAT_WS(':', a.id, a.alias) ELSE a.id END as slug,"
					. "\n CASE WHEN CHAR_LENGTH(cc.alias) THEN CONCAT_WS(':', cc.id, cc.alias) ELSE cc.id END as catslug"
					. "\n FROM #__content AS a"
					. "\n INNER JOIN #__content_frontpage AS f ON f.content_id = a.id"
					. "\n INNER JOIN #__categories AS cc ON cc.id = a.catid"
					. "\n WHERE ( a.state = 1 AND a.sectionid > 0 "
					. ' AND (a.publish_up = '.$db->Quote($nullDate).' OR a.publish_up <= '.$db->Quote($now).' ) ' 
					. ' AND (a.publish_down = '.$db->Quote($nullDate).' OR a.publish_down >= '.$db->Quote($now).' )' 
					. ($noauth ? ' AND a.access <= ' .(int) $aid. ' AND cc.access <= ' .(int) $aid : '')
					. "\n AND cc.published = 1 )"
					. "\n ORDER BY f.ordering ASC";
			$db->setQuery($query);
			$news = $db->loadObjectList();

  		global $mainframe;
  		JPluginHelper::importPlugin('content');
  		$dispatcher	   =& JDispatcher::getInstance();
  		$params 	   =& $mainframe->getParams('com_content');
  		$limitstart	= JRequest::getVar('limitstart', 0, '', 'int');
  
  		for($i=0;$i<count($news);$i++) {
   		  $news[$i]->text = $news[$i]->introtext;
 		    $results = $dispatcher->trigger('onPrepareContent', array (& $news[$i], & $params, $limitstart));
      }

			return $news;
		}

		function getFile($name, $modPath, $tmplPath) {
			if (file_exists(JPATH_SITE.DS.$tmplPath.$name)) {
				return $tmplPath.$name;
			}
			return $modPath.$name;
		}

		function getAllCatIds ($catorsec) {
			$db 	=& JFactory::getDBO();
			if($catorsec){
				$query = "SELECT id FROM #__categories WHERE published = 1;";
			}
			else{
				$query = "SELECT id FROM #__sections WHERE published = 1;";
			}
			$db->setQuery($query);
			$c = $db->loadObjectList();
			$catids = array();
			foreach($c as $_c) $catids[] = $_c->id;
			return $catids;
		}

		function getAllCatIdsBySection ($sectionid) {
			$db 	=& JFactory::getDBO();
			$query = "SELECT id FROM #__categories WHERE section = $sectionid;";

			$db->setQuery($query);
			$c = $db->loadObjectList();
			$catids = array();
			foreach($c as $_c) $catids[] = $_c->id;
			return $catids;
		}
		
		function getModuleParameters($modid) {
			$db 	=& JFactory::getDBO();
			$query = "SELECT params FROM #__modules WHERE id = $modid;";
			$db->setQuery($query);
			return $db->loadResult();
    }

		function getItemid($sectionid) {
			$db 	=& JFactory::getDBO();
			$query = "SELECT id FROM #__menu WHERE `link` like '%option=com_content%view=section%id=$sectionid%'";
			$db->setQuery($query);
			echo $db->getQuery();
			return $db->loadResult();
    }
	}
}