<?php 
defined("_JEXEC") or die('Truy cập không hợp lệ');
jimport( 'joomla.application.component.view' );
class CommentViewAnswer extends JView
{
	function display($tpl=null)
	{
//		$models=&$this->getModel();
//		$greeting=$models->getData();
//		$this->assignRef('greeting',$greeting);
//		
//		
		$model =&$this->getModel();
		$model->setState('limit',15);
		$model->setState('limitstart',JRequest::getVar('limitstart',0));
		$greeting =& $this->get('Data');      
        $pagination =& $this->get('Pagination');
        
 
        // push data into the template
        $this->assignRef('greeting', $greeting);     
        $this->assignRef('pagination', $pagination);
		parent::display($tpl);
	}
}
?>