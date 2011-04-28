<?php
defined("_JEXEC") or die("Cam vao");
jimport('joomla.application.component.controller');
class RaoVatControllerPost extends JController
{
	function display()
	{		
		$this->post();
	}
	function post()
	{
		global $mainframe;
		$my = &JFactory::getUser();
		if(!$my->id)
		{
			$url=base64_encode(JRequest::getURI());
			$mainframe->redirect(JRoute::_("index.php?option=com_user&view=login&return=$url",false),"Đăng nhập trước khi post");			
			return;
		}
		$view = $this->getView('post','html');
		if((JRequest::getVar('id'))>0){
			$model = $this->getModel('raovat');
			$item = $model->getItem();
			if($item->isedit ==1){
				$mainframe->redirect(JRoute::_("index.php?option=com_raovat&view=raovat&layout=detail&id={$item->id}",false),"Bài viết đã sửa trước đó.Bạn chỉ được sửa 1 lần duy nhất");
				return;
			}			
			$view->assign('post',$item);
		}
		$view->display();
	//	parent::display();
	}
	function save()
	{
		global $mainframe;
		$my = &JFactory::getUser();
		$view=$this->getView('post','html');		
		
		$p= &JRequest::get("post");	
		$p['desc'] = JRequest::getVar('desc','','post','string',JREQUEST_ALLOWRAW);			
		require_once(JPATH_COMPONENT.DS.'assets'.DS.'imagehelper.php');
		$image = $_FILES['image'];
		$imgHelper = new ImageHelper($image);
		$post = JTable::getInstance('raovat');
		$profile	  = JTable::getInstance('raovat_profile');
		$post->bind($p);
		$profile->bind($p);
		$post->price = str_replace(',','',$post->price);
		$errors=array();
		if(!$post->check())
		{
			$errors = $post->getErrors();
			$hasError =true;			
		}		
		if(!$profile->check())
		{
			$errors = array_merge($errors,$profile->getErrors());
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
			if($imgHelper->upload())
				$post->image=$imgHelper->filename;
			if(empty($post->id)){
				$now = & JFactory::getDate();
				$post->created = $now->toMySQL();
				$post->user_id=$my->id;			
				//echo JUtility::dump($profile);die;
				//save info
				$post->store();
				
				$profile->user_id=$my->id;
				
				if($profile->exist())
					$profile->store();
				else
					$profile->_db->insertObject($profile->_tbl,$profile,$profile->_tbl_key);
				
				$mainframe->redirect("index.php?option=com_raovat&Itemid=".JRequest::getVar("Itemid"),JText::_("RV_MES_POST_SUCCESS"));
			}
			else{
				//Update
				$post->isedit = 1;
				$post->store();
				if($profile->exist())
					$profile->store();
				else
					$profile->_db->insertObject($profile->_tbl,$profile,$profile->_tbl_key);				
				$mainframe->redirect("index.php?option=com_raovat&Itemid=".JRequest::getVar("Itemid"),"Cập nhật thành công");
			}
		}
		else
		{			
			$view->assignRef('errors',$errors);		
		}
		$view->assignRef('post',$post);		
		$view->assignRef('profile',$profile);
		//echo JUtility::dump($post);die();
		$view->display();
	}
}