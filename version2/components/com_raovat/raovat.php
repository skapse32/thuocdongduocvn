<?php

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
$doc = &JFactory::getDocument();
$doc->addStyleSheet(JURI::root()."/components/com_raovat/assets/style.css");
// Set the table directory
JTable::addIncludePath(JPATH_COMPONENT_ADMINISTRATOR.DS.'tables');

// Require the base controller
require_once (JPATH_COMPONENT.DS.'controllers'.DS.'controller.php');

// Require specific controller if requested
if($controller = JRequest::getWord('view')) {
	$path = JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php';
	if (file_exists($path)) {
		require_once $path;
	} else {
		$controller = '';
	}
}

// Create the controller
$classname	= 'RaovatController'.ucfirst($controller);
$controller = new $classname( );

// Register Extra tasks
//$controller->registerTask( 'results', 'display' );

// Perform the Request task
$controller->execute(JRequest::getCmd('task'));

// Redirect if set by the controller
$controller->redirect();
