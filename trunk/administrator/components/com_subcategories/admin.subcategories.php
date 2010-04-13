<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.filesystem.file' );

if ( JFile::exists( JPATH_COMPONENT.DS.'_VERSION.php' ) ) {
	$version	=	JFile::read( JPATH_COMPONENT.DS.'_VERSION.php' );
}
define( '_VERSION',				( @$version ) ? $version : '1.5.15.0' );
define( '_LINK_SUBCATEGORIES', 	'index.php?option=com_subcategories' );
define( '_IMG_32_JSEBLOD', 		'<img src="components/com_subcategories/assets/images/icon-32-jseblod.png" border="0" alt=" " />' );
define( '_LOGO_32_JSEBLOD', 	'<img src="http://www.jseblod.com/jseblod_logo/logo-32-jseblod.png" border="0" alt=" " />' );

// Include CSS
JHTML::_( 'stylesheet', 'administrator.css', 'administrator/components/com_subcategories/assets/css/' );

// Include Tooltip
JHTML::_( 'behavior.tooltip' );

// Require Helpers
require_once( JPATH_COMPONENT.DS.'helper.php' );

// Require Base Controller
require_once( JPATH_COMPONENT.DS.'controller.php' );

// Require Specific Controller
if ( $controller = JRequest::getVar( 'controller' ) ) {
	require_once( JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php' );
}

// Create Controller
$classname	=	'SubCategoriesController'.$controller;
$controller	=	new $classname( );

// Perform Request task
$controller->execute( JRequest::getVar( 'task' ) );

// Redirect
$controller->redirect();
?>