<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : Softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */
// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
//import view parent class
jimport( 'joomla.application.component.view' );

class CommentViewQuestion extends JView
{   
	function display($tpl = null)
	{				
		$model=$this->getModel();
		$model->setState('limit',15);
		$model->setState('limitstart',JRequest::getVar('limitstart',0));
		$greeting=& $this->get('Data');      
        $pagination =& $this->get('Pagination');
 
        // push data into the template
        $this->assignRef('greeting', $greeting);     
        $this->assignRef('pagination', $pagination);
		
		parent::display($tpl);
	}
}
?>