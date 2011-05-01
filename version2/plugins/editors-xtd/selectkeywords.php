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
include_once dirname(__FILE__).DS.'selectkeywords'.DS.'html.php';

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
		global $mainframe,$option;
		$task=JRequest::getVar('task');
		if(!(strtolower($option)=='com_content'&&(strtolower($task)=='edit'||strtolower($task)=='add')))
			return;
		

		$doc 		=& JFactory::getDocument();
		$template 	= $mainframe->getTemplate();
		$contentId = JRequest::getVar('cid',array(0));
		$contentId=$contentId[0];
		//get current section of the article 
		$currrentSection='';
		$currrentCat='';
		$attribs='';
		if($contentId)
		{
			$db = JFactory::getDBO();
			$db->setQuery("SELECT sectionid,catid, attribs FROM #__content WHERE id='$contentId'");
			$row=$db->loadObject();
			$currrentSection=$row->sectionid;
			$attribs = $row->attribs;		
			$currrentCat= $row->catid;	
		}
		$articleParams = new JParameter($attribs);
		// button is not active in specific content components
		$params = $this->params;
		$section_ctvt = $params->get('section_ctvt');
		$section_bt = $params->get('section_bt');
		$section_tdd = $params->get('section_tdd');
		$cat_tdd_t = $params->get('category_tdd_t');
		$showctbt=false;$showbt=false;$showcat_t=false;
		if($currrentSection==$params->get('section_tdd')&&$currrentCat==$cat_tdd_t)
			$showcat_t=true;
		if($currrentSection==$params->get('section_ctvt'))
			$showctbt=true;
		if($currrentSection==$params->get('section_bt'))
			$showbt=true;
		$filters = JPluginSelectKeywordsHelper::getFilters(array($section_ctvt,$section_bt,$section_tdd));
		//$cats = JPluginSelectKeywordsHelper::getCategoriesHasFilter();
		$selectBoxs=array();
		foreach($filters as $key=>$val)
		{
			if(is_array($val)&&count($val))
			{
				//create a select box for this 
				$selectbox="<select  name='select_to_insert' style=' width:150px;'>";
				$selectbox.="<option value=''>Chọn để nhập nhanh</option>";
				foreach($val as $option)
				{
					$selectbox.="<option value='{$option->alias}'>{$option->title}</option>";
				}
				$selectbox.="</select>";
				$selectBoxs[$key]=$selectbox;
			}
		}		
		$doc->addScript(JURI::root()."plugins/editors-xtd/selectkeywords/jquery-1.4.2.min.js");
		$view = new LPluginContentView();
		$view->set('selectBoxs',$selectBoxs);
		$view->set('showctbt',$showctbt);
		$view->set('showbt',$showbt);
		$view->set('showcat_t',$showcat_t);
		$view->set('section_ctvt',$params->get('section_ctvt'));
		$view->set('section_bt',$params->get('section_bt'));
		$view->set('section_tdd',$section_tdd);
		$view->set('cat_t',$cat_tdd_t);
		$view->set('articleParams',$articleParams);
		echo $view->DonthuocVithuoc();
		$js="
				jQuery.noConflict();  
				jQuery('document').ready(function(){				
					jQuery('table.adminform:first').after(jQuery('#dtvt-html').html());
					jQuery('#dtvt-html').remove();
					jQuery('#sectionid').change(function(){						
						jQuery('table.phanloai-html').hide();
						selectedId = jQuery(this).find('option:selected').val();
						catId = jQuery('#catid').find('option:selected').val();								
						if(selectedId>0)
						{
							if(jQuery('#'+selectedId+'-phanloai').size()>0)
							{
								jQuery('#'+selectedId+'-phanloai').show();
							}
							else if(jQuery('#'+selectedId+'-'+catId+'-phanloai').size()>0)
							{
								jQuery('#'+selectedId+'-'+catId+'-phanloai').show();
							}
						}
					});
					jQuery('#catid').change(function(){
						jQuery('table.phanloai-html').hide();
						selectedId = jQuery('#sectionid').find('option:selected').val();
						catId = jQuery('#catid').find('option:selected').val();								
						if(selectedId>0)
						{
							if(jQuery('#'+selectedId+'-phanloai').size()>0)
							{
								jQuery('#'+selectedId+'-phanloai').show();
							}
							else if(jQuery('#'+selectedId+'-'+catId+'-phanloai').size()>0)
							{
								jQuery('#'+selectedId+'-'+catId+'-phanloai').show();
							}
						}
					});
					// select to insert
					jQuery('select[name=select_to_insert]').change(function(){
						val = jQuery(this).find('option:selected').val();
						text = jQuery(this).find('option:selected').text();
						if(val!='')
						{
							effectInputFieldValue =jQuery(this).prev('input').val();
							if(effectInputFieldValue!='')
							{
								if(val.toLowerCase()!=text.toLowerCase())
									v=','+text;								
								else
									v=','+text;								
							}
							else
							{
								if(val.toLowerCase()!=text.toLowerCase())
									v=text;								
								else
									v=text;								
							}
							tmp=' '+effectInputFieldValue;							
							if(!(tmp.indexOf(val)>0))
							{							
								arr =(effectInputFieldValue+v.toLowerCase()).split(',');
								arr.sort();
								jQuery(this).prev('input').val(arr.join());																				
							}
						}
						jQuery(this).find('option').removeAttr('selected');	
						jQuery(this).find('option:first').attr('selected',true);						
					});
				});
				";
		//$doc->add
		$doc->addScriptDeclaration($js);
		
		return ;
	}
}