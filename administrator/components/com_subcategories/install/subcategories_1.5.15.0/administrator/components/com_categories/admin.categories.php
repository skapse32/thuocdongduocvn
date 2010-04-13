<?php
/**
 * @version		$Id: admin.categories.php 11633 2009-02-19 23:59:09Z willebil $
 * @package		Joomla
 * @subpackage	Categories
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

require_once( JApplicationHelper::getPath( 'admin_html' ) );

// get parameters from the URL or submitted form
$section 	= JRequest::getCmd( 'section', 'com_content' );
$cid 		= JRequest::getVar( 'cid', array(0), '', 'array' );
JArrayHelper::toInteger($cid, array(0));

switch (JRequest::getCmd('task'))
{
	case 'add' :
		editCategory(false);
		break;

	case 'edit':
		editCategory(true);
		break;

	case 'moveselect':
		moveCategorySelect( $option, $cid, $section );
		break;

	case 'movesave':
		moveCategorySave( $cid, $section );
		break;

	case 'copyselect':
		copyCategorySelect( $option, $cid, $section );
		break;

	case 'copysave':
		copyCategorySave( $cid, $section );
		break;

	case 'go2menu':
	case 'go2menuitem':
	case 'save':
	case 'apply':
		saveCategory( );
		break;

	case 'remove':
		removeCategories( $section, $cid );
		break;

	case 'publish':
		publishCategories( $section, $cid, 1 );
		break;

	case 'unpublish':
		publishCategories( $section, $cid, 0 );
		break;

	case 'cancel':
		cancelCategory();
		break;

	case 'orderup':
		orderCategory( $cid[0], -1 );
		break;

	case 'orderdown':
		orderCategory( $cid[0], 1 );
		break;

	case 'accesspublic':
		accessMenu( $cid[0], 0, $section );
		break;

	case 'accessregistered':
		accessMenu( $cid[0], 1, $section );
		break;

	case 'accessspecial':
		accessMenu( $cid[0], 2, $section );
		break;

	case 'saveorder':
		saveOrder( $cid, $section );
		break;

	default:
		showCategories( $section, $option );
		break;
}

/**
* Compiles a list of categories for a section
* @param string The name of the category section
*/
function showCategories( $section, $option )
{
	global $mainframe;

	$db					=& JFactory::getDBO();
	$filter_order		= $mainframe->getUserStateFromRequest( $option.'.filter_order',					'filter_order',		'c.ordering',	'cmd' );
	$filter_order_Dir	= $mainframe->getUserStateFromRequest( $option.'.filter_order_Dir',				'filter_order_Dir',	'',				'word' );
	$filter_state		= $mainframe->getUserStateFromRequest( $option.'.'.$section.'.filter_state',	'filter_state',		'',				'word' );
	$limit				= $mainframe->getUserStateFromRequest( 'global.list.limit', 'limit', $mainframe->getCfg('list_limit'), 'int' );
	$limitstart			= $mainframe->getUserStateFromRequest( $option.'.limitstart', 'limitstart', 0, 'int' );
	$sectionid			= $mainframe->getUserStateFromRequest( $option.'.'.$section.'.sectionid',		'sectionid',		0,				'int' );
	// OMAR: Added to allow $levellimit to show
	$levellimit			= $mainframe->getUserStateFromRequest( $option.'.'.$section.'.levellimit',		'levellimit',		10,				'int' );
	$search				= $mainframe->getUserStateFromRequest( $option.'.search',						'search',			'',				'string' );
	$search				= JString::strtolower( $search );

	$section_name 	= '';
	$content_add 	= '';
	$content_join 	= '';
	$order 			= ' ORDER BY '. $filter_order .' '. $filter_order_Dir .', c.ordering';
	if (intval( $section ) > 0) {
		$table = 'content';

		$query = 'SELECT title'
		. ' FROM #__sections'
		. ' WHERE id = '.(int) $section;
		$db->setQuery( $query );
		$section_name = $db->loadResult();
		$section_name = JText::sprintf( 'Content:', JText::_( $section_name ) );
		$where 	= ' WHERE c.section = '.$db->Quote($section);
		$type 	= 'content';
	} else if (strpos( $section, 'com_' ) === 0) {
		$table = substr( $section, 4 );

		$query = 'SELECT name'
		. ' FROM #__components'
		. ' WHERE link = '.$db->Quote('option='.$section);
		;
		$db->setQuery( $query );
		$section_name = $db->loadResult();
		$where 	= ' WHERE c.section = '.$db->Quote($section);
		$type 	= 'other';
		// special handling for contact component
		if ( $section == 'com_contact_details' ) {
			$section_name 	= JText::_( 'Contact' );
		}
		$section_name = JText::sprintf( 'Component:', $section_name );
	} else {
		$table 	= $section;
		$where 	= ' WHERE c.section = '.$db->Quote($section);
		$type 	= 'other';
	}

	// get the total number of records
	$query = 'SELECT COUNT(*)'
	. ' FROM #__categories'
	;
	if ($section == 'com_content')
	{
		if($sectionid > 0)
		{
			$query .= ' WHERE section = '.(int) $sectionid;
		} else {
			$query .= ' WHERE section > 0';
		}
	} else {
		$query .= ' WHERE section = '.$db->quote($section);
	}
	if ( $filter_state ) {
		if ( $filter_state == 'P' ) {
			$query .= ' AND published = 1';
		} else if ($filter_state == 'U' ) {
			$query .= ' AND published = 0';
		}
	}
	$db->setQuery( $query );
	$total = $db->loadResult();

	// allows for viweing of all content categories
	if ( $section == 'com_content' ) {
		$table 			= 'content';
		$content_add 	= ' , z.title AS section_name';
		$content_join 	= ' LEFT JOIN #__sections AS z ON z.id = c.section';
		$where 			= ' WHERE c.section NOT LIKE "%com_%"';
		if ($filter_order == 'c.ordering'){
			$order 			= ' ORDER BY  z.title, c.ordering '. $filter_order_Dir;
		} else {
			$order 			= ' ORDER BY  '.$filter_order.' '. $filter_order_Dir.', z.title, c.ordering';
		}

		$section_name 	= JText::_( 'All Content:' );

		$type 			= 'content';
	}

	// used by filter
	if ( $sectionid > 0 ) {
		$filter = ' AND c.section = '.$db->Quote($sectionid);
	} else {
		$filter = '';
	}
	if ( $filter_state ) {
		if ( $filter_state == 'P' ) {
			$filter .= ' AND c.published = 1';
		} else if ($filter_state == 'U' ) {
			$filter .= ' AND c.published = 0';
		}
	}
	if ($search) {
		$query = 'SELECT c.id' .
		' FROM #__categories AS c' .
		' WHERE LOWER(c.title) LIKE '.$db->Quote( '%'.$db->getEscaped( $search, true ).'%', false );
		$db->setQuery( $query );
		$search_rows = $db->loadResultArray();
	}

	jimport('joomla.html.pagination');
	$pageNav = new JPagination( $total, $limitstart, $limit );

	$tablesAllowed = $db->getTableList();
	if (!in_array($db->getPrefix().$table, $tablesAllowed)) {
		$table = 'content';
	}

	$query = 'SELECT  c.*, c.checked_out as checked_out_contact_category, g.name AS groupname, u.name AS editor, COUNT( DISTINCT s2.checked_out ) AS checked_out_count'
	. $content_add
	. ' FROM #__categories AS c'
	. ' LEFT JOIN #__users AS u ON u.id = c.checked_out'
	. ' LEFT JOIN #__groups AS g ON g.id = c.access'
	. ' LEFT JOIN #__'.$table.' AS s2 ON s2.catid = c.id AND s2.checked_out > 0'
	. $content_join
	. $where
	. $filter
	. ' AND c.published != -2'
	. ' GROUP BY c.id'
	. $order
	;
	$db->setQuery( $query, $pageNav->limitstart, $pageNav->limit );
	$rows = $db->loadObjectList();
	if ($db->getErrorNum()) {
		echo $db->stderr();
		return;
	}

	$count = count( $rows );
	// number of Active Items
	for ( $i = 0; $i < $count; $i++ ) {
		$query = 'SELECT COUNT( a.id )'
		. ' FROM #__content AS a'
		. ' WHERE a.catid = '. (int) $rows[$i]->id
		. ' AND a.state <> -2'
		;
		$db->setQuery( $query );
		$active = $db->loadResult();
		$rows[$i]->active = $active;
	}
	// number of Trashed Items
	for ( $i = 0; $i < $count; $i++ ) {
		$query = 'SELECT COUNT( a.id )'
		. ' FROM #__content AS a'
		. ' WHERE a.catid = '. (int) $rows[$i]->id
		. ' AND a.state = -2'
		;
		$db->setQuery( $query );
		$trash = $db->loadResult();
		$rows[$i]->trash = $trash;
	}

	// establish the hierarchy of the menu
	$children = array();
	// first pass - collect children
	foreach ($rows as $v )
	{
		$pt = $v->parent_id;
		$list = @$children[$pt] ? $children[$pt] : array();
		array_push( $list, $v );
		$children[$pt] = $list;
	}
	// second pass - get an indent list of the items
	$list = JHTML::_('menu.categorytreerecurse', 0, '', array(), $children, max( 0, $levellimit-1 ) );
	// eventually only pick out the searched items.
	if ($search) {
		$list1 = array();

		foreach ($search_rows as $sid )
		{
			foreach ($list as $item)
			{
				if ($item->id == $sid) {
					$list1[] = $item;
				}
			}
		}
		// replace full list with found items
		$list = $list1;
	}

	$total = count( $list );

	jimport('joomla.html.pagination');
	$pagination = new JPagination( $total, $limitstart, $limit );

	// slice out elements based on limits
	$list = array_slice( $list, $pagination->limitstart, $pagination->limit );
	
	$rows = $list;
	
	// Ensure ampersands and double quotes are encoded in item titles
	foreach ($rows as $i => $row) {
		$treename = $row->treename;
		$treename = JFilterOutput::ampReplace($treename);
		$treename = str_replace('"', '&quot;', $treename);
		$rows[$i]->treename = $treename;
	}
	
	// get list of sections for dropdown filter
	$javascript = 'onchange="document.adminForm.submit();"';
	
	// level limit filter
	$lists['levellist'] = JHTML::_('select.integerlist',    1, 20, 1, 'levellimit', 'size="1" onchange="document.adminForm.submit();"', $levellimit );
	
	$lists['sectionid']	= JHTML::_('list.section',  'sectionid', $sectionid, $javascript );

	// state filter
	$lists['state']	= JHTML::_('grid.state',  $filter_state );

	// table ordering
	$lists['order_Dir'] = $filter_order_Dir;
	$lists['order']		= $filter_order;

	// search filter
	$lists['search']= $search;

	categories_html::show( $rows, $section, $section_name, $pageNav, $lists, $type );
}

/**
* Compiles information to add or edit a category
* @param string The name of the category section
* @param integer The unique id of the category to edit (0 if new)
* @param string The name of the current user
*/
function editCategory($edit )
{
	global $mainframe;

	// Initialize variables
	$db			=& JFactory::getDBO();
	$user 		=& JFactory::getUser();
	$uid		= $user->get('id');

	$type		= JRequest::getCmd( 'type' );
	$redirect	= JRequest::getCmd( 'section', 'com_content' );
	$section	= JRequest::getCmd( 'section', 'com_content' );
	$cid		= JRequest::getVar( 'cid', array(0), '', 'array' );
    $contentSection    = '';
    $sectionid        = 0;

	JArrayHelper::toInteger($cid, array(0));
    $id = $cid[0];

	// check for existance of any sections
	$query = 'SELECT COUNT( id )'
	. ' FROM #__sections'
	. ' WHERE scope = "content"'
	;
	$db->setQuery( $query );
	$sections = $db->loadResult();
	if (!$sections && $type != 'other'
			&& $section != 'com_weblinks'
			&& $section != 'com_newsfeeds'
			&& $section != 'com_contact_details'
			&& $section != 'com_banner') {
		$mainframe->redirect( 'index.php?option=com_categories&section='. $section, JText::_( 'WARNSECTION', true ) );
	}

	$row =& JTable::getInstance('category');
	// load the row from the db table
	if ($edit)
		$row->load( $cid[0] );
        $sectionid = $row->section;

	// fail if checked out not by 'me'
	if ( JTable::isCheckedOut($user->get ('id'), $row->checked_out )) {
		$msg = JText::sprintf( 'DESCBEINGEDITTED', JText::_( 'The category' ), $row->title );
		$mainframe->redirect( 'index.php?option=com_categories&section='. $row->section, $msg );
	}

	if ( $edit ) {
		$row->checkout( $user->get('id'));
	} else {
		$row->published 	= 1;
	}


	// make order list
	$order = array();
	$query = 'SELECT COUNT(*)'
	. ' FROM #__categories'
	. ' WHERE section = '.$db->Quote($row->section)
	;
	$db->setQuery( $query );
	$max = intval( $db->loadResult() ) + 1;

	for ($i=1; $i < $max; $i++) {
		$order[] = JHTML::_('select.option',  $i );
	}

	// build the html select list for sections
	if ( $section == 'com_content' ) {

		if (!$row->section && JRequest::getInt('sectionid')) {
		    $row->section = JRequest::getInt('sectionid');
		}

		$query = 'SELECT s.id AS value, s.title AS text'
		. ' FROM #__sections AS s'
		. ' ORDER BY s.ordering'
		;
		$db->setQuery( $query );
		$sections	=	array();
        $sections[] = JHTML::_('select.option', '-1', '- '.JText::_('Select Section').' -', 'value', 'text');
        $sections	= array_merge($sections, $db->loadObjectList());
		$javascript = "onchange=\"changeDynaList( 'parent_id', sectioncategories, document.adminForm.section.options[document.adminForm.section.selectedIndex].value, 0, 0);\"";
		$lists['section'] = JHTML::_('select.genericlist',   $sections, 'section', 'class="inputbox" size="1" '.$javascript, 'value', 'text', $row->section );
	} else {
		if ( $type == 'other' ) {
			$section_name = JText::_( 'N/A' );
		} else {
			$temp =& JTable::getInstance('section');
			$temp->load( $row->section );
			$section_name = $temp->name;
		}
		if(!$section_name) $section_name = JText::_( 'N/A' );
		$row->section = $section;
		$lists['section'] = '<input type="hidden" name="section" value="'. $row->section .'" />'. $section_name;
	}

	// build the html select list for ordering
	$query = 'SELECT ordering AS value, title AS text'
	. ' FROM #__categories'
	. ' WHERE section = '.$db->Quote($row->section)
	. ' AND parent_id = '.(int) $row->parent_id
	. ' ORDER BY ordering'
	;
	if ($edit) {
		$lists['ordering'] 			= JHTML::_('list.specificordering',  $row, $cid[0], $query );
	}
	else {
		$lists['ordering'] 			= JHTML::_('list.specificordering',  $row, '', $query );
	}
	// build the select list for the image positions
	$active =  ( $row->image_position ? $row->image_position : 'left' );
	$lists['image_position'] 	= JHTML::_('list.positions',  'image_position', $active, NULL, 0, 0 );
	// Imagelist
	$lists['image'] 			= JHTML::_('list.images',  'image', $row->image );
	// build the html select list for the group access
	$lists['access'] 			= JHTML::_('list.accesslevel',  $row );
	// build the html radio buttons for published
	$published = ($row->id) ? $row->published : 1;
	$lists['published'] 		= JHTML::_('select.booleanlist',  'published', 'class="inputbox"', $published );
	
    $section_list = array();
    if (is_array($sections))
    {
        foreach ($sections as $section)
        {
            $section_list[] = (int) $section->value;
            // get the type name - which is a special category
            if ($row->section) {
                if ($section->value == $row->section) {
                    $contentSection = $section->text;
                }
            } else {
                if ($section->value == $sectionid) {
                    $contentSection = $section->text;
                }
            }
        }
    }
    
    $sectioncategories = array();
    $sectioncategories[-1] = array();
    // The select option below seems to be unneccessary but I'm leaving it in
    $sectioncategories[-1][] = JHTML::_('select.option', '-1', JText::_( 'Select Category' ), 'id', 'title');
    $section_list = implode('\', \'', $section_list);

    $and_parent_exclude = '';
    if ($id != 0)
    {
        $and_parent_exclude = ' AND parent_id != ' . $id ;
    }
    $query = 'SELECT id, parent_id, title, section' .
            ' FROM #__categories' .
            ' WHERE section IN ( \''.$section_list.'\' )' .
            ' AND id != ' . $id . 
            $and_parent_exclude .
            ' ORDER BY ordering';
    $db->setQuery($query);
    $cat_list = $db->loadObjectList();

    /**
     * BEGIN: Pulled from admin.categories.php
     */
    // establish the hierarchy of the menu
    $children = array();
    // first pass - collect children
    foreach ($cat_list as $cat )
    {
        $pt = $cat->parent_id;
        $list = @$children[$pt] ? $children[$pt] : array();
        array_push( $list, $cat );
        $children[$pt] = $list;
    }
    // second pass - get an indent list of the items
    $cat_list = JHTML::_('menu.categorytreerecurse', 0, '', array(), $children, 9999, 0, 0 );
    /**
     * END: Pulled from admin.categories.php
     */

    if ($sectionid == 0 && isset($sectionid))
    {
        $sectionid = $sections[0]->value;
    }
    if (is_array($sections))
    {
        foreach ($sections as $section)
        {
            $sectioncategories[$section->value] = array ();
            $rows2 = array ();
            foreach ($cat_list as $cat)
            {
                if ($cat->section == $section->value) {
                    $rows2[] = $cat;
                }
            }
            $sectioncategories[$section->value][] = JHTML::_('select.option',  '0', JText::_( 'Top' ), 'id', 'title' );
            foreach ($rows2 as $row2) {
                $sectioncategories[$section->value][] = JHTML::_('select.option', $row2->id, '&nbsp;&nbsp;&nbsp;' . $row2->treename, 'id', 'title');
            }
        }
    }
    
	// build the select list for the Parent Categories
	$lists['parent_id'] = selectParentCategory($row, $sectionid);

 	categories_html::edit( $row, $lists, $redirect, $sectioncategories );
}

/**
 * Build the select list for choosing a Parent Category
 */
function selectParentCategory ( &$row, $sectionid = 0 )
{
	$db =& JFactory::getDBO();

	// If a not a new item, lets set the menu item id
	if ( $row->id ) {
		$id = ' AND id != '.(int) $row->id;
	} else {
		$id = null;
	}

	// In case the parent was null
	if (!$row->parent_id) {
		$row->parent_id = 0;
	}

    if ($row->section)
    {
        $sectionid = $row->section;
    }
    
	// get a list of the Section's Categories
	// excluding the current menu item and its child elements
	$query = 'SELECT c.*' .
			' FROM #__categories c' .
			' WHERE section = '.$db->Quote($sectionid) .
			' AND published != -2' .
			$id .
			' ORDER BY parent_id, ordering';
	$db->setQuery( $query );
	$categories = $db->loadObjectList();

	// establish the hierarchy of the menu
	$children = array();

	if ( $categories )
	{
		// first pass - collect children
		foreach ( $categories as $v )
		{
			$pt 	= $v->parent_id;
			$list 	= @$children[$pt] ? $children[$pt] : array();
			array_push( $list, $v );
			$children[$pt] = $list;
		}
	}

	// second pass - get an indent list of the items
	$list = JHTML::_('menu.categorytreerecurse', 0, '', array(), $children, 9999, 0, 0 );

	// assemble menu items to the array
	$mitems 	= array();
	$mitems[] 	= JHTML::_('select.option',  '0', JText::_( 'Top' ) );

	foreach ( $list as $item ) {
		$mitems[] = JHTML::_('select.option',  $item->id, '&nbsp;&nbsp;&nbsp;'. $item->treename );
	}

	$output = JHTML::_('select.genericlist',   $mitems, 'parent_id', 'class="inputbox" size="10"', 'value', 'text', $row->parent_id );

	return $output;
}

/**
* Saves the catefory after an edit form submit
* @param string The name of the category section
*/
function saveCategory()
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db		 	=& JFactory::getDBO();
	$menu 		= JRequest::getCmd( 'menu', 'mainmenu', 'post' );
	$menuid		= JRequest::getVar( 'menuid', 0, 'post', 'int' );
	$redirect 	= JRequest::getCmd( 'redirect', '', 'post' );
	$oldtitle 	= JRequest::getString( 'oldtitle', '', 'post' );
	$oldparent	= JRequest::getString( 'oldparent', '', 'post');
	$post		= JRequest::get( 'post' );

	// fix up special html fields
	$post['description'] = JRequest::getVar( 'description', '', 'post', 'string', JREQUEST_ALLOWRAW );

	$row =& JTable::getInstance('category');
	if (!$row->bind( $post )) {
		JError::raiseError(500, $row->getError() );
	}
	if (!$row->check()) {
		JError::raiseError(500, $row->getError() );
	}
	// if new item order last in appropriate group
	if (!$row->id) {
		$where  = 'section = ' . $db->Quote($row->section);
		$where .= ' AND parent_id = '. $db->Quote($row->parent_id); // Added this line to correctly order subcategories
		$row->reorder( $where );
		$row->ordering = $row->getNextOrder( $where );
	}
	// If parent_id has changed order last under new parent
	if ($row->parent_id != $oldparent) {
		$where  = 'section = ' . $db->Quote($row->section);
		$where .= ' AND parent_id = '. $db->Quote($row->parent_id); // Added this line to correctly order subcategories
		$row->reorder( $where );
		$row->ordering = $row->getNextOrder( $where );
	}

	if (!$row->store()) {
		JError::raiseError(500, $row->getError() );
	}
	$row->checkin();

	if ($row->section > 0) {
		$query = 'UPDATE #__content'
				.' SET sectionid = '.$row->section
				.' WHERE catid = '.$row->id
		;
		$db->setQuery( $query );
		$db->query();
	}

	if ( $oldtitle ) {
		if ($oldtitle != $row->title) {
			$query = 'UPDATE #__menu'
			. ' SET name = '.$db->Quote($row->title)
			. ' WHERE name = '.$db->Quote($oldtitle)
			. ' AND type = "content_category"'
			;
			$db->setQuery( $query );
			$db->query();
		}
	}

	// Update Section Count
	if ($row->section != 'com_contact_details' &&
		$row->section != 'com_newsfeeds' &&
		$row->section != 'com_weblinks') {
		$query = 'UPDATE #__sections SET count=count+1'
		. ' WHERE id = '.$db->Quote($row->section)
		;
		$db->setQuery( $query );
	}

	if (!$db->query()) {
		JError::raiseError(500, $db->getErrorMsg() );
	}

	switch ( JRequest::getCmd('task') )
	{
		case 'go2menu':
			$mainframe->redirect( 'index.php?option=com_menus&menutype='. $menu );
			break;

		case 'go2menuitem':
			$mainframe->redirect( 'index.php?option=com_menus&menutype='. $menu .'&task=edit&id='. $menuid );
			break;

		case 'apply':
			$msg = JText::_( 'Changes to Category saved' );
			$mainframe->redirect( 'index.php?option=com_categories&section='. $redirect .'&task=edit&cid[]='. $row->id, $msg );
			break;

		case 'save':
		default:
			$msg = JText::_( 'Category saved' );
			$mainframe->redirect( 'index.php?option=com_categories&section='. $redirect, $msg );
			break;
	}
}

/**
* Deletes one or more categories from the categories table
* @param string The name of the category section
* @param array An array of unique category id numbers
*/
function removeCategories( $section, $cid )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db =& JFactory::getDBO();

	JArrayHelper::toInteger($cid);

	if (count( $cid ) < 1) {
		JError::raiseError(500, JText::_( 'Select a category to delete', true ));
	}
	
	// Add all child categories to the list
	foreach ($cid as $id)
	{
		addChildren($id, $cid);
	} 

	$cids = implode( ',', $cid );

	if (intval( $section ) > 0) {
		$table = 'content';
	} else if (strpos( $section, 'com_' ) === 0) {
		$table = substr( $section, 4 );
	} else {
		$table = $section;
	}

	$tablesAllowed = $db->getTableList();
	if (!in_array($db->getPrefix().$table, $tablesAllowed)) {
		$table = 'content';
	}

	$query = 'SELECT c.id, c.name, c.title, COUNT( s.catid ) AS numcat'
	. ' FROM #__categories AS c'
	. ' LEFT JOIN #__'.$table.' AS s ON s.catid = c.id'
	. ' WHERE c.id IN ( '.$cids.' )'
	. ' GROUP BY c.id'
	;
	$db->setQuery( $query );

	if (!($rows = $db->loadObjectList())) {
		JError::raiseError( 500, $db->stderr() );
		return false;
	}

	$err = array();
	$cid = array();
	$titles = array();
	foreach ($rows as $row) {
		if ($row->numcat == 0) {
			$cid[] = (int) $row->id;
			$titles[] = $row->title;
		} else {
			$err[] = $row->title;
		}
	}

	if (count( $err )) {
		$cids = implode( ", ", $err );
		$msg = JText::sprintf( 'WARNNOTREMOVEDRECORDS', $cids );
		$mainframe->redirect( 'index.php?option=com_categories&section='. $section, $msg );
	}

	if (count( $cid )) {
		$cids = implode( ',', $cid );
		$query = 'DELETE FROM #__categories'
		. ' WHERE id IN ( '.$cids.' )'
		;
		$db->setQuery( $query );
		if (!$db->query()) {
			JError::raiseError( 500, $db->stderr() );
			return false;
		}
	}
	
	$titles = implode ( ', ', $titles);
	$msg = JText::sprintf( 'REMOVEDRECORDS', $titles );
	$mainframe->redirect( 'index.php?option=com_categories&section='. $section, $msg );
}

/**
* Publishes or Unpublishes one or more categories
* @param string The name of the category section
* @param integer A unique category id (passed from an edit form)
* @param array An array of unique category id numbers
* @param integer 0 if unpublishing, 1 if publishing
* @param string The name of the current user
*/
function publishCategories( $section, $cid=null, $publish=1 )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db		=& JFactory::getDBO();
	$user	=& JFactory::getUser();
	$uid	= $user->get('id');

	JArrayHelper::toInteger($cid);

	if (count( $cid ) < 1) {
		$action = $publish ? 'publish' : 'unpublish';
		JError::raiseError(500, JText::_( 'Select a category to '.$action, true ) );
	}

	$cids = implode( ',', $cid );

	$query = 'UPDATE #__categories'
	. ' SET published = ' . (int) $publish
	. ' WHERE id IN ( '.$cids.' )'
	. ' AND ( checked_out = 0 OR ( checked_out = '.(int) $uid.' ) )'
	;
	$db->setQuery( $query );
	if (!$db->query()) {
		JError::raiseError(500, $db->getErrorMsg() );
	}

	if (count( $cid ) == 1) {
		$row =& JTable::getInstance('category');
		$row->checkin( $cid[0] );
	}

	$mainframe->redirect( 'index.php?option=com_categories&section='. $section );
}

/**
* Cancels an edit operation
* @param string The name of the category section
* @param integer A unique category id
*/
function cancelCategory()
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db =& JFactory::getDBO();

	$redirect = JRequest::getCmd( 'redirect', '', 'post' );

	$row =& JTable::getInstance('category');
	$row->bind( JRequest::get( 'post' ));
	$row->checkin();

	$mainframe->redirect( 'index.php?option=com_categories&section='. $redirect );
}

/**
* Moves the order of a record
* @param integer The increment to reorder by
*/
function orderCategory( $uid, $inc )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db		=& JFactory::getDBO();
	$row	=& JTable::getInstance('category' );
	$row->load( $uid );
	$where  = 'section = ' . $db->Quote($row->section);
	$where .= ' AND parent_id = '. $db->Quote($row->parent_id); // Added this line to correctly order subcategories
	$row->move( $inc, $where );
	$section = JRequest::getCmd('section');
	if($section) {
		$section = '&section='. $section;
	}
	$mainframe->redirect( 'index.php?option=com_categories'. $section );
}

/**
* Form for moving item(s) to a specific menu
*/
function moveCategorySelect( $option, $cid, $sectionOld )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db =& JFactory::getDBO();
	$redirect = JRequest::getCmd( 'section', 'com_content', 'post' );

	JArrayHelper::toInteger($cid);

	if (count( $cid ) < 1) {
		JError::raiseError(500, JText::_( 'Select an item to move', true ));
	}

	## query to list selected categories
	$cids = implode( ',', $cid );
	$query = 'SELECT a.title, a.section'
	. ' FROM #__categories AS a'
	. ' WHERE a.id IN ( '.$cids.' )'
	;
	$db->setQuery( $query );
	$items = $db->loadObjectList();

	## query to list items from categories
	$query = 'SELECT a.title'
	. ' FROM #__content AS a'
	. ' WHERE a.catid IN ( '.$cids.' )'
	. ' ORDER BY a.catid, a.title'
	;
	$db->setQuery( $query );
	$contents = $db->loadObjectList();

	## query to choose section to move to
	$query = 'SELECT a.title AS text, a.id AS value'
	. ' FROM #__sections AS a'
	. ' WHERE a.published = 1'
	. ' ORDER BY a.title'
	;
	$db->setQuery( $query );
	$sections = $db->loadObjectList();

	// build the html select list
	$SectionList = JHTML::_('select.genericlist',   $sections, 'sectionmove', 'class="inputbox" size="10"', 'value', 'text', null );

	categories_html::moveCategorySelect( $option, $cid, $SectionList, $items, $sectionOld, $contents, $redirect );
}


/**
* Save the item(s) to the menu selected
*/
function moveCategorySave( $cid, $sectionOld )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db =& JFactory::getDBO();
	$sectionMove = JRequest::getCmd( 'sectionmove' );

	//Check to see if a section was selected to copy the items too
	if (!$sectionMove)
	{
		$msg = JText::_('Please select a section from the list');
		moveCategorySelect( 'com_categories', $cid, $sectionOld );
		JError::raiseWarning(500, $msg);
		return;
	}

	JArrayHelper::toInteger($cid, array(0));

	$sectionNew =& JTable::getInstance('section');
    $sectionNew->load( $sectionMove );

    //Remove the categories already in destination section
	$cids = implode( ',', $cid );

	$query = 'SELECT id, title'
	. ' FROM #__categories'
	. ' WHERE id IN ( '.$cids.' )'
	. ' AND section = '.$db->Quote($sectionMove)
	;
	$db->setQuery( $query );

	$scid   = $db->loadResultArray(0);
	$title  = $db->loadResultArray(1);

	$cid = array_diff($cid, $scid);

    //
	if ( !empty($cid) ) {
		
		// Add all children to the list
		foreach ($cid as $id)
		{
			addChildren($id, $cid);
		} 
		
	    $cids = implode( ',', $cid );
	    $total = count( $cid );

	    $query = 'UPDATE #__categories'
	    . ' SET section = '.$db->Quote($sectionMove)
	    . ' WHERE id IN ( '.$cids.' )'
	    ;
	    $db->setQuery( $query );
    	if ( !$db->query() ) {
	    	JError::raiseError(500, $db->getErrorMsg() );
	    }
	    $query = 'UPDATE #__content'
	    . ' SET sectionid = '.$db->Quote($sectionMove)
	    . ' WHERE catid IN ( '.$cids.' )'
	    ;
	    $db->setQuery( $query );
	    if ( !$db->query() ) {
	    	JError::raiseError(500, $db->getErrorMsg());
	    }
		
		// Make sure if parent_id is not 0 to reset it back to 0
		$ordering = 1000000;
		$firstroot = 0;
		$category = JTable::getInstance('category');
		
		foreach ($cid as $id) {
			$category->load( $id );

			// is it moved together with his parent?
			$found = false;
			if ($category->parent_id != 0) {
				foreach ($cid as $idx)
				{
					if ($idx == $category->parent_id) {
						$found = true;
						break;
					} // if
				}
			}
			if (!$found) {
				$category->parent_id = 0;
				$category->ordering = $ordering++;
				if (!$firstroot) $firstroot = $category->id;
			} // if

			$category->section = $sectionMove;
			if ( !$category->store() ) {
				JError::raiseError(500, $category->getError());
				return false;
			} // if
		} // foreach 

		if ($firstroot) {
			$category->load( $firstroot );
			$where = 'section = '.$db->Quote($category->section).' AND parent_id = '.(int) $category->parent_id;
			$category->reorder( $where );
		} // if 

		$msg = JText::sprintf( 'Categories moved to', $sectionNew->title );
		$mainframe->enqueueMessage($msg);
	}
	if ( !empty($title) && is_array($title) ) {
	    if ( count($title) == 1 ) {
		    $msg = JText::sprintf( 'Category already in', implode( ', ', $title ), $sectionNew->title );
	    } else {
		    $msg = JText::sprintf( 'Categories already in', implode( ', ', $title ), $sectionNew->title );
		}
		$mainframe->enqueueMessage($msg);
	}

	$mainframe->redirect( 'index.php?option=com_categories&section='. $sectionOld );
}

/**
* Form for copying item(s) to a specific menu
*/
function copyCategorySelect( $option, $cid, $sectionOld )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	$db =& JFactory::getDBO();
	$redirect = JRequest::getCmd( 'section', 'com_content', 'post' );

	JArrayHelper::toInteger($cid);

	if (count( $cid ) < 1) {
		JError::raiseError(500, JText::_( 'Select an item to move', true ));
	}

	## query to list selected categories
	$cids = implode( ',', $cid );
	$query = 'SELECT a.title, a.section'
	. ' FROM #__categories AS a'
	. ' WHERE a.id IN ( '.$cids.' )'
	;
	$db->setQuery( $query );
	$items = $db->loadObjectList();

	## query to list items from categories
	$query = 'SELECT a.title, a.id'
	. ' FROM #__content AS a'
	. ' WHERE a.catid IN ( '.$cids.' )'
	. ' ORDER BY a.catid, a.title'
	;
	$db->setQuery( $query );
	$contents = $db->loadObjectList();

	## query to choose section to move to
	$query = 'SELECT a.title AS `text`, a.id AS `value`'
	. ' FROM #__sections AS a'
	. ' WHERE a.published = 1'
	. ' ORDER BY a.name'
	;
	$db->setQuery( $query );
	$sections = $db->loadObjectList();

	// build the html select list
	$SectionList = JHTML::_('select.genericlist',   $sections, 'sectionmove', 'class="inputbox" size="10"', 'value', 'text', null );

	categories_html::copyCategorySelect( $option, $cid, $SectionList, $items, $sectionOld, $contents, $redirect );
}


/**
* Save the item(s) to the menu selected
*/
function copyCategorySave( $cid, $sectionOld )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db =& JFactory::getDBO();

	$sectionMove 	= JRequest::getInt( 'sectionmove' );

	//Check to see if a section was selected to copy the items too
	if (!$sectionMove)
	{
		$msg = JText::_('Please select a section from the list');
		copyCategorySelect( 'com_categories', $cid, $sectionOld );
		JError::raiseWarning(500, $msg);
		return;
	}

	/*
	$contentid 		= JRequest::getVar( 'item', null, '', 'array' );
	JArrayHelper::toInteger($contentid);
	*/

	$category =& JTable::getInstance('category');
	// Starts new code added
	$ordering = 1000000;
	$itemref = array();

	foreach ($cid as $id)
	{
		$category->load( $id );
		$category->id 		= NULL;
		// Commenting the two lines below out because adding the
		// text in front of the Title is more of an annoyance than anything IMHO.
		//$category->title 	= JText::sprintf( 'Copy of', $category->title );
		//$category->name 	= JText::sprintf( 'Copy of', $category->name );
		$category->section 	= $sectionMove;
		if (!$category->store()) {
			JError::raiseError(500, $category->getError());
		}
		// After the store command above the $category->id below will have a real value.
		$itemref[] = array($id, $category->id);
	}
	foreach ($itemref as $ref)
	{
		$category->load( $ref[1] );
		if ($category->parent_id!=0) {
			$found = false;
			foreach ( $itemref as $ref2 )
			{
				if ($category->parent_id == $ref2[0]) {
					$category->parent_id = $ref2[1];
					$found = true;
					break;
				} // if
			}
			if (!$found && $category->section!=$sectionMove) {
				$category->parent_id = 0;
				$category->ordering = $ordering++;
			}
		} // if
		$category->section = $sectionMove;
		if (!$category->store()) {
			JError::raiseError(500, $category->getError());
		}
		$where = 'section = '.$db->Quote($category->section).' AND parent_id = '.(int) $category->parent_id;
		$category->reorder( $where );
	} // foreach

	$sectionNew =& JTable::getInstance('section');
	$sectionNew->load( $sectionMove );

	$msg = JText::sprintf( 'Categories copied to', count($cid), $sectionNew->title );
	$mainframe->redirect( 'index.php?option=com_categories&section='. $sectionOld, $msg );
}

	function addChildren($id, &$list)
	{
		// Initialize variables
		$return = true;

		// Get all rows with parent of $id
		$db =& JFactory::getDBO();
		$query = 'SELECT id' .
				' FROM #__categories' .
				' WHERE parent_id = '.(int) $id;
		$db->setQuery( $query );
		$rows = $db->loadObjectList();

		// Make sure there aren't any errors
		if ($db->getErrorNum()) {
			JError::raiseError(500, $db->getErrorMsg());
			return false;
		}

		// Recursively iterate through all children... kinda messy
		// TODO: Cleanup this method
		foreach ($rows as $row)
		{
			$found = false;
			foreach ($list as $idx)
			{
				if ($idx == $row->id) {
					$found = true;
					break;
				}
			}
			if (!$found) {
				$list[] = $row->id;
			}
			$return = addChildren($row->id, $list);
		}
		return $return;
	}

/**
* changes the access level of a record
* @param integer The increment to reorder by
*/
function accessMenu( $uid, $access, $section )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db =& JFactory::getDBO();

	$row =& JTable::getInstance('category');
	$row->load( $uid );
	$row->access = $access;

	if ( !$row->check() ) {
		return $row->getError();
	}
	if ( !$row->store() ) {
		return $row->getError();
	}

	$mainframe->redirect( 'index.php?option=com_categories&section='. $section );
}

function saveOrder( &$cid, $section )
{
	global $mainframe;

	// Check for request forgeries
	JRequest::checkToken() or jexit( 'Invalid Token' );

	// Initialize variables
	$db =& JFactory::getDBO();

	$total		= count( $cid );
	$order 		= JRequest::getVar( 'order', array(0), 'post', 'array' );
	JArrayHelper::toInteger($order, array(0));
	$row		=& JTable::getInstance('category');
	$groupings = array();

	// update ordering values
	for( $i=0; $i < $total; $i++ ) {
		$row->load( (int) $cid[$i] );
	// Modified the section below and the updateoOrder after to 
	// correctly save subcategory ordering
		// track parents
		$parents[] = $row->parent_id;
		if ($row->ordering != $order[$i]) {
			$row->ordering = $order[$i];
			if (!$row->store()) {
				JError::raiseError(500, $db->getErrorMsg());
			}
		}
	}

	// execute updateOrder for each parent group
	$parents = array_unique( $parents );
	foreach ($parents as $parent){
		$where = 'section = '.$db->Quote($section).' AND parent_id = '.(int) $parent.' AND published >=0';
		$row->reorder( $where );
	}

	$msg 	= JText::_( 'New ordering saved' );
	$mainframe->redirect( 'index.php?option=com_categories&section='. $section, $msg );
}