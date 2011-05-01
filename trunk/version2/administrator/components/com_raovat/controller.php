<?php
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.application.component.controller' );
class RaoVatController extends JController
{
	function display()
	{
		switch($this->getTask())
		{
			/*case 'add'     :
			{
				JRequest::setVar( 'hidemainmenu', 1 );
				JRequest::setVar( 'layout', 'form'  );
				JRequest::setVar( 'view', 'poll'  );
				JRequest::setVar( 'edit', false  );
			} break;*/
			case 'edit'    :
			{
				JRequest::setVar( 'hidemainmenu', 1 );
				JRequest::setVar( 'layout', 'form'  );
				JRequest::setVar( 'view', 'post'  );
				JRequest::setVar( 'edit', true  );
			} 
			break;
			case 'mncomment':
				JRequest::setVar( 'layout', 'mncomment'  );
				JRequest::setVar( 'view', 'raovat'  );			 
			break;
			case "deletecm":
				$cid = JRequest::getVar('cid',array(0),'array');
				$id = JRequest::getVar('id');
				$db = JFactory::getDBO();
				if(isset($id)&&count($cid)>0&&is_array($cid)){
					$query = "UPDATE #__raovat_comment set published=0 WHERE id_raovat = '$id' AND id in(".implode(',',$cid).")";
					$db->setQuery($query);
					$db->query();
				}
				$option = JRequest::getVar('option');
				$mainframe =& JFactory::getApplication();
				$mainframe->redirect("index.php?option=$option&tmpl=component&task=mncomment&rid=$id");
				
				return;
			break;
		}

		//Set the default view, just in case
		$view = JRequest::getCmd('view');
		if(empty($view)) {
			JRequest::setVar('view', 'raovat');
		};
		parent::display();				
	}
	function remove()
	{		
		global $mainframe;
		$row = JTable::getInstance('raovat');
		$cid = JRequest::getVar('cid',array(),'default','array');
		foreach($cid as $id)
		{
			$row->load($id);
			$row->isdelete=1;
			$row->store();
		}
		$mainframe->redirect(JRoute::_("index.php?option=com_raovat","Đã xóa các tin có id: ".implode(', ',$cid)));
	}
	function save()
	{
		global $mainframe;
		$p= &JRequest::get("post");	
		$p['desc'] = JRequest::getVar('desc','','post','string',JREQUEST_ALLOWRAW);			
		/*require_once(JPATH_COMPONENT.DS.'assets'.DS.'imagehelper.php');
		$image = $_FILES['image'];
		$imgHelper = new ImageHelper($image);*/
		$post = JTable::getInstance('raovat');
		//$profile	  = JTable::getInstance('raovat_profile');
		$post->load($p['id']);
		$post->bind($p);
		//$profile->bind($p);
		$post->price = str_replace(',','',$post->price);
		$errors=array();
		if(!$post->check())
		{
			$errors = $post->getErrors();
			$hasError =true;			
		}		
		
		//check image
		// remove image checking 
		/*if(!$imgHelper->check())
		{			
			$errors = array_merge($errors,$imgHelper->getErrors());			
			$hasError =true;	
		}	*/
		
		if(!$hasError)
		{
			//upload 
			//if($imgHelper->upload())
			//	$post->image=$imgHelper->filename;
			
				//Update
				//$post->isedit = 1;
				$post->store();				
				$mainframe->redirect("index.php?option=com_raovat","Cập nhật thành công");
			
		}
		else
		{			
			$mainframe->redirect("index.php?option=com_raovat","Có lỗi");
		}		
	}	
}

?>