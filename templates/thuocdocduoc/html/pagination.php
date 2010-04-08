<?php
/**
 * @version		$Id: pagination.php 10381 2008-06-01 03:35:53Z pasamio $
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

/**
 * This is a file to add template specific chrome to pagination rendering.
 *
 * pagination_list_footer
 * 	Input variable $list is an array with offsets:
 * 		$list[limit]		: int
 * 		$list[limitstart]	: int
 * 		$list[total]		: int
 * 		$list[limitfield]	: string
 * 		$list[pagescounter]	: string
 * 		$list[pageslinks]	: string
 *
 * pagination_list_render
 * 	Input variable $list is an array with offsets:
 * 		$list[all]
 * 			[data]		: string
 * 			[active]	: boolean
 * 		$list[start]
 * 			[data]		: string
 * 			[active]	: boolean
 * 		$list[previous]
 * 			[data]		: string
 * 			[active]	: boolean
 * 		$list[next]
 * 			[data]		: string
 * 			[active]	: boolean
 * 		$list[end]
 * 			[data]		: string
 * 			[active]	: boolean
 * 		$list[pages]
 * 			[{PAGE}][data]		: string
 * 			[{PAGE}][active]	: boolean
 *
 * pagination_item_active
 * 	Input variable $item is an object with fields:
 * 		$item->base	: integer
 * 		$item->link	: string
 * 		$item->text	: string
 *
 * pagination_item_inactive
 * 	Input variable $item is an object with fields:
 * 		$item->base	: integer
 * 		$item->link	: string
 * 		$item->text	: string
 *
 * This gives template designers ultimate control over how pagination is rendered.
 *
 * NOTE: If you override pagination_item_active OR pagination_item_inactive you MUST override them both
 */

function pagination_list_footer($list)
{
	$html = "<div class=\"list-footer\">\n";

	$html .= "\n<div class=\"limit\">".JText::_('Display Num').$list['limitfield']."</div>";
	$html .= $list['pageslinks'];
	$html .= "\n<div class=\"counter\">".$list['pagescounter']."</div>";

	$html .= "\n<input type=\"hidden\" name=\"limitstart\" value=\"".$list['limitstart']."\" />";
	$html .= "\n</div>";

	return $html;
}

function pagination_list_render($list)
{
	// Initialize variables
	/*<p class="paggin" style="text-align: center;">
            
                <a href="#">Pre</a> <a href="#">1</a> <a href="#" class="active">2</a> <a href="#">3</a>
                <a href="#">Next</a></p>*/
                
    $view = strtolower(JRequest::getVar('view'));
	$layout = strtolower(JRequest::getVar('layout'));
	switch($view.'-'.$layout)
	{
		case "category-blog":
		case "section-caythuoc_vithuoc":
		case "section-thuvien":
		case "search-":
		$html = "<p class='paggin'><span>Phan trang:</span>";
		break;
		default:
		$html = "<p class='paggin' style='text-align: center;'>";
		break;
	}
	
	//$html .= '<span>&laquo;</span>'.$list['start']['data'];
	$html .= $list['previous']['data'];

	foreach( $list['pages'] as $page )
	{
		if(!$page['active']) {			
			$page['data']=str_replace('<a','<a style="text-decoration:underline;"',$page['data']);
		}
		$html .= $page['data'];
	}

	$html .= $list['next']['data'];
	//$html .= $list['end']['data'];
	//$html .= '<span>&raquo;</span>';

	$html .= "</p>";
	return $html;
}

function pagination_item_active(&$item) {
	if(!empty($item->link))
	{
		$uri = new JURI($item->link);
		$uri =$uri->getQuery(true);
		if(!isset($uri['limitstart'])) $uri['limitstart']=0;
		$datafld="datafld='$uri[limitstart]'";
	}
	return "<a $datafld  href=\"".$item->link."\" title=\"".$item->text."\">".$item->text."</a>";
}

function pagination_item_inactive(&$item) {
//	return "<span>".$item->text."</span>";
	return "<a  href='#' disabled='true' title=\"".$item->text."\">".$item->text."</a>";
}
?>