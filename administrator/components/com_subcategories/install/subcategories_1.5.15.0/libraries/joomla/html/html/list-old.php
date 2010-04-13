<?php
/**
* @version		$Id: list.php 12348 2009-06-24 13:34:12Z ian $
* @package        Joomla.Framework
* @subpackage        HTML
* @copyright    Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
* @license        GNU/GPL, see LICENSE.php
* Joomla! is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
 * Utility class for creating different select lists
 *
 * @static
 * @package     Joomla.Framework
 * @subpackage    HTML
 * @since        1.5
 */
class JHTMLList
{
    /**
    * Build the select list for access level
    */
    function accesslevel( &$row )
    {
        $db =& JFactory::getDBO();

        $query = 'SELECT id AS value, name AS text'
        . ' FROM #__groups'
        . ' ORDER BY id'
        ;
        $db->setQuery( $query );
        $groups = $db->loadObjectList();
        $access = JHTML::_('select.genericlist',   $groups, 'access', 'class="inputbox" size="3"', 'value', 'text', intval( $row->access ), '', 1 );

        return $access;
    }

    /**
    * Build the select list to choose an image
    */
    function images( $name, $active = NULL, $javascript = NULL, $directory = NULL, $extensions =  "bmp|gif|jpg|png" )
    {
        if ( !$directory ) {
            $directory = '/images/stories/';
        }

        if ( !$javascript ) {
            $javascript = "onchange=\"javascript:if (document.forms.adminForm." . $name . ".options[selectedIndex].value!='') {document.imagelib.src='..$directory' + document.forms.adminForm." . $name . ".options[selectedIndex].value} else {document.imagelib.src='../images/blank.png'}\"";
        }

        jimport( 'joomla.filesystem.folder' );
        $imageFiles = JFolder::files( JPATH_SITE.DS.$directory );
        $images     = array(  JHTML::_('select.option',  '', '- '. JText::_( 'Select Image' ) .' -' ) );
        foreach ( $imageFiles as $file ) {
           if ( eregi( $extensions, $file ) ) {
                $images[] = JHTML::_('select.option',  $file );
            }
        }
        $images = JHTML::_('select.genericlist',  $images, $name, 'class="inputbox" size="1" '. $javascript, 'value', 'text', $active );

        return $images;
    }

    /**
     * Description
     *
      * @param string SQL with ordering As value and 'name field' AS text
      * @param integer The length of the truncated headline
      * @since 1.5
      */
    function genericordering( $sql, $chop = '30' )
    {
        $db =& JFactory::getDBO();
        $order = array();
        $db->setQuery( $sql );
        if (!($orders = $db->loadObjectList())) {
            if ($db->getErrorNum()) {
                echo $db->stderr();
                return false;
            } else {
                $order[] = JHTML::_('select.option',  1, JText::_( 'first' ) );
                return $order;
            }
        }
        $order[] = JHTML::_('select.option',  0, '0 '. JText::_( 'first' ) );
        for ($i=0, $n=count( $orders ); $i < $n; $i++) {

            if (JString::strlen($orders[$i]->text) > $chop) {
                $text = JString::substr($orders[$i]->text,0,$chop)."...";
            } else {
                $text = $orders[$i]->text;
            }

            $order[] = JHTML::_('select.option',  $orders[$i]->value, $orders[$i]->value.' ('.$text.')' );
        }
        $order[] = JHTML::_('select.option',  $orders[$i-1]->value+1, ($orders[$i-1]->value+1).' '. JText::_( 'last' ) );

        return $order;
    }

    /**
    * Build the select list for Ordering of a specified Table
    */
    function specificordering( &$row, $id, $query, $neworder = 0 )
    {
        $db =& JFactory::getDBO();

        if ( $id ) {
            $order = JHTML::_('list.genericordering',  $query );
            $ordering = JHTML::_('select.genericlist',   $order, 'ordering', 'class="inputbox" size="1"', 'value', 'text', intval( $row->ordering ) );
        } else {
            if ( $neworder ) {
                $text = JText::_( 'descNewItemsFirst' );
            } else {
                $text = JText::_( 'descNewItemsLast' );
            }
            $ordering = '<input type="hidden" name="ordering" value="'. $row->ordering .'" />'. $text;
        }
        return $ordering;
    }

    /**
    * Select list of active users
    */
    function users( $name, $active, $nouser = 0, $javascript = NULL, $order = 'name', $reg = 1 )
    {
        $db =& JFactory::getDBO();

        $and = '';
        if ( $reg ) {
        // does not include registered users in the list
            $and = ' AND gid > 18';
        }

        $query = 'SELECT id AS value, name AS text'
        . ' FROM #__users'
        . ' WHERE block = 0'
        . $and
        . ' ORDER BY '. $order
        ;
        $db->setQuery( $query );
        if ( $nouser ) {
            $users[] = JHTML::_('select.option',  '0', '- '. JText::_( 'No User' ) .' -' );
            $users = array_merge( $users, $db->loadObjectList() );
        } else {
            $users = $db->loadObjectList();
        }

        $users = JHTML::_('select.genericlist',   $users, $name, 'class="inputbox" size="1" '. $javascript, 'value', 'text', $active );

        return $users;
    }

    /**
    * Select list of positions - generally used for location of images
    */
    function positions( $name, $active = NULL, $javascript = NULL, $none = 1, $center = 1, $left = 1, $right = 1, $id = false )
    {
        if ( $none ) {
            $pos[] = JHTML::_('select.option',  '', JText::_( 'None' ) );
        }
        if ( $center ) {
            $pos[] = JHTML::_('select.option',  'center', JText::_( 'Center' ) );
        }
        if ( $left ) {
            $pos[] = JHTML::_('select.option',  'left', JText::_( 'Left' ) );
        }
        if ( $right ) {
            $pos[] = JHTML::_('select.option',  'right', JText::_( 'Right' ) );
        }

        $positions = JHTML::_('select.genericlist',   $pos, $name, 'class="inputbox" size="1"'. $javascript, 'value', 'text', $active, $id );

        return $positions;
    }

    /**
    * Select list of active categories for components
    */
    function category( $name, $section, $active = NULL, $javascript = NULL, $order = 'ordering', $size = 1, $sel_cat = 1 )
    {
        $db =& JFactory::getDBO();

        $query = 'SELECT id AS value, title AS text'
        . ' FROM #__categories'
        . ' WHERE section = '.$db->Quote($section)
        . ' AND published = 1'
        . ' ORDER BY '. $order
        ;
        $db->setQuery( $query );
        if ( $sel_cat ) {
            $categories[] = JHTML::_('select.option',  '0', '- '. JText::_( 'Select a Category' ) .' -' );
            $categories = array_merge( $categories, $db->loadObjectList() );
        } else {
            $categories = $db->loadObjectList();
        }

        $category = JHTML::_('select.genericlist',   $categories, $name, 'class="inputbox" size="'. $size .'" '. $javascript, 'value', 'text', $active );
        return $category;
    }
    
    /**
    * Select list of active categories for components with subcategories indented
    */
    function subcategory( $name, $section, $active = NULL, $javascript = NULL, $order = 'ordering', $size = 1, $sel_cat = 1 )
    {
        $db =& JFactory::getDBO();

        if ($section == -1)
        {
            $and = '';
            $query = 'SELECT s.id, s.title' .
                ' FROM #__sections AS s' .
                ' WHERE s.published = 1' .
                ' AND s.scope = '.$db->Quote('content').
                ' ORDER BY s.title';
            
            $db->setQuery($query);
            $section_options = $db->loadObjectList();
            
            $section_list = array();
            foreach($section_options as $section_option)
            {
                $section_list[] = $section_option->id;    
            }
            $section_list = implode('\', \'', $section_list);
        } 
        else
        {
            $and = ' AND section = '.$db->Quote($section);
        }
        $query = 'SELECT id, title, parent_id, section'
        . ' FROM #__categories'
        . ' WHERE published = 1 '
        . $and
        . ' ORDER BY '. $order
        ;
        
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
         
         if  ($section == -1)
         {
              $category_options = array();
              foreach($cat_list as $cat_item)
              {   
                  if (!isset($category_options[$cat_item->section]) || !is_array($category_options[$cat_item->section]))
                  {
                     $category_options[$cat_item->section] = array();
                  }
                  $category_options[$cat_item->section][$cat_item->id] = new stdClass();
                  $category_options[$cat_item->section][$cat_item->id]->id = $cat_item->id;
                  $category_options[$cat_item->section][$cat_item->id]->title = $cat_item->treename;
              }
             
             $options = array();
             if ( $sel_cat ) {
             $options[] = JHTML::_('select.option', '0', '- '.JText::_('Select Category').' -', 'id', 'title'); 
             }
             
             foreach ($section_options as $section_option)
             {
                 $options[] = JHTML::_('select.optgroup', $section_option->title, 'id', 'title');
                 foreach($category_options[$section_option->id] as $category_option)
                 {
                     $options[] = JHTML::_('select.option', $category_option->id, $category_option->title, 'id', 'title');
                 }
             }

             return JHTML::_('select.genericlist',  $options, $name, 'class="inputbox" size="'. $size .'" '. $javascript, 'id', 'title', $active );
         }
         else 
         {
             $category_options = array();
             foreach($cat_list as $cat_item)
             {
                 $category_options[$cat_item->id] = new stdClass();
                 $category_options[$cat_item->id]->id = $cat_item->id;
                 $category_options[$cat_item->id]->title = $cat_item->treename;
             }
            
            $categories = array();
            if ( $sel_cat ) {
                $categories[] = JHTML::_('select.option',  '0', '- '. JText::_( 'Select a Category' ) .' -', 'id', 'title' );
            }
            
            foreach($category_options as $category_option)
            {
                $categories[] = JHTML::_('select.option', $category_option->id, $category_option->title, 'id', 'title');
            }

            $category = JHTML::_('select.genericlist', $categories, $name, 'class="inputbox" size="'. $size .'" '. $javascript, 'id', 'title', $active );
            return $category;
         } 
    }

    /**
    * Select list of active sections
    */
	function section( $name, $active = NULL, $javascript = NULL, $order = 'ordering', $uncategorized = true, $scope = 'content' )
    {
        $db =& JFactory::getDBO();

        $categories[] = JHTML::_('select.option',  '-1', '- '. JText::_( 'Select Section' ) .' -' );

        if ($uncategorized) {
            $categories[] = JHTML::_('select.option',  '0', JText::_( 'Uncategorized' ) );
        }

        $query = 'SELECT id AS value, title AS text'
        . ' FROM #__sections'
        . ' WHERE published = 1'
		. ' AND scope = ' . $db->Quote($scope)
        . ' ORDER BY ' . $order
        ;
        $db->setQuery( $query );
        $sections = array_merge( $categories, $db->loadObjectList() );

        $category = JHTML::_('select.genericlist',   $sections, $name, 'class="inputbox" size="1" '. $javascript, 'value', 'text', $active );

        return $category;
    }
}