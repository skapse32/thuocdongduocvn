<?php
defined( '_JEXEC' ) or die( 'Restricted access' ); 
jimport( 'joomla.application.component.view'); 

class CommentViewComment extends JView 
{ 
    function display($tpl = null) 
    { 
    echo 'ac';
    	$models=&$this->getModel();
    	
        $comment = & $models->getData();
        //var_dump($comment);die;
        $this->assignRef('comment', & $comment);
        parent::display($tpl);
    } 
} 
?>