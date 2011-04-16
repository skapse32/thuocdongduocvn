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

	require_once (JPATH_SITE . '/components/com_content/helpers/route.php');

	class modJaSLWI
	{
	
		function replaceImage( &$row, $autoresize, $maxchars, $width = 0, $height = 0 ) {
			global $database, $_MAMBOTS, $current_charset;
			$image = "";
		//$regex ="/\<img.+src\s*=\s*\"([^\"]*)\"[^\>]*\>/";
			$regex = '#<\s*img [^\>]*src\s*=\s*(["\'])(.*?)\1#im';
			preg_match ($regex, $row->text, $matches);
			$images = (count($matches)) ? $matches : array();
			if (count($images)) $image = $images[2];
		
			if ($image) {
				if ($autoresize && function_exists('imagecreatetruecolor') 
					&& ($image1 = modJaSLWI::processImage ( $image, $width, $height ))) {
						$image = 'background:url('.str_replace (' ', '%20', JURI::base().$image1).') no-repeat;';
				} else {
						$image = 'background:url('.str_replace (' ', '%20', JURI::base().$image).') no-repeat;';
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
			$imagesurl = (file_exists(JPATH_SITE .'/'.$img)) ? modJaSLWI::jaResize($img,$width,$height) :  '' ;
			return $imagesurl;
		}
		
		function jaResize($image,$max_width,$max_height){
			$path = JPATH_SITE;
			$sizeThumb = getimagesize(JPATH_SITE.'/'.$image);
			$width = $sizeThumb[0];
			$height = $sizeThumb[1];
			if(!$max_width && !$max_height) {
				$max_width = $width;
				$max_height = $height;
			  }else{
				if(!$max_width) $max_width = 1000;
				if(!$max_height) $max_height = 1000;
			  }
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
			//imageantialias ($dst, true);
			if (function_exists('imageantialias')) imageantialias ($dst, true);
			imagecopyresampled ($dst, $src, 0, 0, 0, 0, $tn_width, $tn_height, $width, $height);
			imagejpeg($dst, $resized, 90); // write the thumbnail to cache as well...
			return "images/resized/".$rzname;
		}

		function unhtmlentities($string) 
		{
			$trans_tbl = array("&lt;" => "<", "&gt;" => ">", "&amp;" => "&");
			return strtr($string, $trans_tbl);
		}
		
		function getList($catid, $numelem)
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
				(($catid) ? ' AND cc.id IN (' . $catid . ') ' : '').
				' AND cc.section = s.id' .
				' AND cc.published = 1' .
				' AND s.published = 1' .
				' ORDER BY a.ordering' .
				' LIMIT '.$numelem;
			$db->setQuery($query);
			$rows = $db->loadObjectList();
			return $rows;
		}

		function getFile($name, $modPath, $tmplPath) {
			if (file_exists(JPATH_SITE.DS.$tmplPath.$name)) {
				return $tmplPath.$name;
			}
			return $modPath.$name;
		}

	}
?>
