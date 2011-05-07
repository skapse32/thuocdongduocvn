<?php
/**
 * @version		$Id: example.php 10714 2008-08-21 10:10:14Z eddieajau $
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

// Check to ensure this file is included in Joomla!
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );

/**
 * Example Content Plugin
 *
 * @package		Joomla
 * @subpackage	Content
 * @since 		1.5
 */
class plgContentPoll extends JPlugin
{

	/**
	 * Constructor
	 *
	 * For php4 compatability we must not use the __constructor as a constructor for plugins
	 * because func_get_args ( void ) returns a copy of all passed arguments NOT references.
	 * This causes problems with cross-referencing necessary for the observer design pattern.
	 *
	 * @param object $subject The object to observe
	 * @param object $params  The object that holds the plugin parameters
	 * @since 1.5
	 */
	function plgContentPoll( &$subject, $params )
	{
		parent::__construct( $subject, $params );
	}

	/**
	 * Example prepare content method
	 *
	 * Method is called by the view
	 *
	 * @param 	object		The article object.  Note $article->text is also available
	 * @param 	object		The article params
	 * @param 	int			The 'page' number
	 */
	function onPrepareContent( &$article, &$params, $limitstart )
	{
		global $mainframe;
		$view= &JRequest::getVar('view');		
		if($view=='article'&&!empty($article->text))
		{
			$plg_matches=array();
			$have_images = preg_match_all('#<div class="poll-inserted"(.*?)>(.*?)</div>#s', $article->text, $plg_matches, PREG_PATTERN_ORDER) > 0;			
			$matchs =array();
			$ids=array();
			for($i=0;$i<count($plg_matches[0]);$i++)
			{
				//$matchs[]=array();
				$match=$plg_matches[0];
				$temp = array();
				preg_match('#id=(.*?):#s',$match[$i],$result);								
				$id = $result[1];
				if(!in_array($id,$ids))
					$ids[]=$id;
				$temp['exp']=$match[$i];
				$temp['id']=$id;
				$temp['inner']=$plg_matches[2][$i];
				$matchs[]=$temp;
			}
			$html =array();
			foreach($ids as  $id)
			{
				$module=JModuleHelper::getModule('mod_poll');				
				$module->params ="id=$id";								
			//	ob_start();
				$html[$id]=JModuleHelper::renderModule($module,array('id'=>1));				
			//	$html= ob_get_contents();
			//	ob_end_clean();
			}
			foreach($matchs as $item)
			{
				//echo strpos($article->text,$item->exp);die;
				//die($item['inner']);
				if(!empty($item['exp'])&&empty($html[$item['id']]))
				{
					$article->text = str_replace($item['exp'],$html[$item['id']],$article->text);
					continue;
				}
				if(!empty($item['inner']))
					$article->text = str_replace($item['inner'],$html[$item['id']],$article->text);
				
			}
			//echo JUtility::dump($matchs);die;
		}
		return;

	}

	
}
