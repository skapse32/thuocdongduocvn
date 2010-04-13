<?php
/**
 * @version		$Id: readmore.php 10709 2008-08-21 09:58:52Z eddieajau $
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
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.plugin.plugin' );
include_once dirname(__FILE__).DS.'selectkeywords'.DS.'helper.php';

/**
 * Editor Readmore buton
 *
 * @package Editors-xtd
 * @since 1.5
 */
class plgButtonSelectKeywords extends JPlugin
{	
	function plgButtonSelectKeywords(& $subject, $config)
	{
		parent::__construct($subject, $config);
	}

	/**
	 * readmore button
	 * @return array A two element array of ( imageName, textToInsert )
	 */
	function onDisplay($name)
	{
		global $mainframe;

		$doc 		=& JFactory::getDocument();
		$template 	= $mainframe->getTemplate();

		// button is not active in specific content components
		$params = $this->params;
		$sections=explode('<br />',nl2br($params->get('sections')));		
		$sections = array_unique($sections);
		$filters = JPluginSelectKeywordsHelper::getFilters($sections);
		$cats = JPluginSelectKeywordsHelper::getCategoriesHasFilter();
		$selectBoxs=array();
		foreach($filters as $key=>$val)
		{
			if(is_array($val)&&count($val))
			{
				//create a select box for this 
				$selectbox="<select datafld='".implode(',',$cats[$key])."' name='filter_keyword' style=' width:150px;display:none'>";
				foreach($val as $option)
				{
					$selectbox.="<option value='{$option->alias}'>{$option->title}</option>";
				}
				$selectbox.="</select>";
				$selectBoxs[]=$selectbox;
			}
		}
		$html ="<div id='filter_keyword' style='display:none;position:absolute;z-index:999;'>".implode('',$selectBoxs)."</div>";
		$js="
				jQuery.noConflict();  
				jQuery('document').ready(function(){
				if(jQuery('#metakeywords').size()>0)
				{
						jQuery('#metakeywords').after(\"$html\");
				}
				// on typing keywords
				jQuery('#metakeywords').focus(function(){
					jQuery('#filter_keyword').show();
					val = jQuery('select[name=catid] option:selected').val();					
					if(val==0)val='';
					hasFilter=false;
					jQuery('select[name=filter_keyword]').each(function(){
						ids = ' '+jQuery(this).attr('datafld');						
						if(ids.indexOf(val)>0&&val!='')
						{
							jQuery(this).show();									
							hasFilter=true;
						}
						else
						{
							jQuery(this).hide();
						}				
					});				
					if(hasFilter)
						jQuery('#filter_keyword').show();
					else
						jQuery('#filter_keyword').hide();				
				});				
				
				});
		";
		$doc->addScript(JURI::root()."plugins/editors-xtd/selectkeywords/jquery-1.4.2.min.js");
		
		$doc->addScriptDeclaration($js);
		//$doc->add
		return ;
	}
}