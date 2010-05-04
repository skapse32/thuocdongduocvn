<?php
defined( '_JEXEC' ) or die( 'Restricted access' ); 
jimport( 'joomla.application.component.view'); 

class CommentViewComment extends JView 
{ 
    function display($tpl = null) 
    {     
		$my = &JFactory::getUser();
		if($my->id)
		{
			// prefill 
			JRequest::setVar("username",$my->name,"post");
			JRequest::setVar("email",$my->email,"post");
		}
    	$models=&$this->getModel();    	
        $comment = & $models->getData();
        $cats = &$models->getCatList();
        //var_dump($comment);die;
        $this->assignRef('comment', & $comment);
		$this->assignRef('cats', & $cats);		
        parent::display($tpl);
    } 
} 
?>