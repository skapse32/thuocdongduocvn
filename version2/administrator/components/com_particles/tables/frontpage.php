<?php
/**
* @version		$Id: frontpage.php 10381 2008-06-01 03:35:53Z pasamio $
* @package		Joomla
* @subpackage	Content
* @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
* @package		Joomla
* @subpackage	Content
*/
class TableFrontPage extends JTable
{
	/** @var int Primary key */
	var $content_id	= null;
	/** @var int */
	var $ordering	= null;
	var $pos1		=0;
	var $pos2		=0;
	var $slideshow	=0;
	var $sectionid	=null;
	var $categoryid	=null;

	/**
	* @param database A database connector object
	*/
	function __construct( &$db ) {
		parent::__construct( '#__content_position', 'content_id', $db );
	}
	function isExist()
	{
		$db = $this->getDBO();
		$db->setQuery("SELECT COUNT(*) FROM #__content_position WHERE content_id=".$this->content_id." AND sectionid='$this->sectionid' AND categoryid='$this->categoryid'");
		$result = $db->loadResult();
		return (bool)$result;
	}
}