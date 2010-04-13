<?php
defined('_JEXEC') or die('Truy cập không hợp lệ!');
require_once( JPATH_COMPONENT.DS.'controller.php' ); 
// Require specific controller if requested 
if($controller = JRequest::getWord('view')) { 
    $path = JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php'; 
    if (file_exists($path)) { 
        require_once $path; 
    } else { 
        $controller = ''; 
    } 
} 

$classname    = 'CommentController'.$controller;

$controller   = new $classname();
// Perform the Request task 
$controller->execute( JRequest::getVar( 'task' ) ); 
$task = JRequest::getVar( 'task' );
//if($task =='save')
//{
//	die('ok');
//	
//}
// Redirect if set by the controller 
$controller->redirect(); 
?>