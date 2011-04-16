<?php
/**
 * Creative Clans Slide Show Module version 1.0
 * 
 * @package    Joomla
 * @subpackage Modules
 * @link http://www.creativeclans.nl
 * @license        GNU/GPL
 * mod_ccslideshow is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * 
 * The flash CCSlideShow.swf file used in this module is released under another 
 * license. See http://www.creativeclans.nl for more info. 
 */

/** ensure this file is being included by a parent file */
defined( '_JEXEC' ) or die( 'Restricted access' ); 

function checkEffects($effects) 
{ 
  $effectArrayIn = explode("\r\n", $effects);
  if (count($effectArrayIn) == 1) $effectArrayIn = explode("\n", $effectArrayIn[0]);
  $effectArrayOut = array();
	foreach ($effectArrayIn as $key=>$value) {
  	if (trim($value) != '') $effectArrayOut[] = trim($value);
  }
  return implode(',', $effectArrayOut);
}

function checkSlideInfo($info) 
{ 
  $infoArray = explode("\r\n", $info);
  if (count($infoArray) == 1) $infoArray = explode("\n", $infoArray[0]);
  return $infoArray;
}

?>