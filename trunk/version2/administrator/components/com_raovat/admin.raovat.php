<?php

defined( '_JEXEC' ) or die( 'Restricted access' );

// Make sure the user is authorized to view this page
//$user = & JFactory::getUser();
//if (!$user->authorize( 'com_raovat', 'manage' )) {
//	$mainframe->redirect( 'index.php', JText::_('ALERTNOTAUTH') );
//}

require_once( JPATH_COMPONENT.DS.'controller.php' );

// Set the table directory
JTable::addIncludePath( JPATH_COMPONENT.DS.'tables' );

// Create the controller
$controller	= new RaovatController( );

$controller->execute( JRequest::getCmd( 'task' ) );
$controller->redirect();