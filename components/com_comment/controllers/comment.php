<?php 
defined('_JEXEC') or die('Truy cập không hợp lệ!');
jimport('joomla.application.component.controller');

// controller này sẽ điều khiển hiện thị dựa vào giá trị biến task trên Request

class CommentControllerComment extends JController
{	
	function display() 
    { 
    	//var_dump('sagsad');die;
    	//echo 'xx';
        parent::display(); 
    } 
	function save()
	{	
		//validate form before store into db
		$validate=true;
		$msgError =array();
		
		//get data in form from tmpl, and store in array
		$post = JRequest::get('post');
		$mComment =$this->getModel('comment');	
		//import Mail Helper 
		jimport('joomla.mail.helper');
		if(empty($post['email']))
		{			
			$validate =false;
			$msgError[]="Chưa nhập Email";
			
		}
		elseif(!JMailHelper::isEmailAddress($post['email']))
		{
			$validate=false;
			$msgError[]="Email không hợp lệ";
			
		}
		if(!$validate) 
		{
			$_POST['erroremail']=implode('<br/>',$msgError)."<br/>".$mComment->getError();			
		}
		
		if(empty($post['username']))
		{			
			$validate =false;
			$_POST['errorusername']="Chưa nhập tên".$mComment->getError();
		}
		
		if(empty($post['address']))
		{
			$validate=false;
			$_POST['erroraddress']="Chưa nhập địa chỉ".$mComment->getError();
		}
		if(empty($post['title']))
		{
			$validate=false;
			$_POST['errortitle']="Chưa nhập tiêu đề".$mComment->getError();
		}
		if(empty($post['content']))
		{
			$validate=false;
			$_POST['errorcontent']="Chưa nhập nội dung".$mComment->getError();
		}
	//
		if($validate)
		{		
			//die('true');
			$now=JFactory::getDate();			
			$strDate = $now->toFormat('%Y-%m-%d %H:%M');
			JRequest::setVar('created',$strDate);
			if($mComment->store())	
			{			
				$link = 'index.php?option=com_comment&view=answer&Itemid='.JRequest::getVar('Itemid');
			}        
		}
		else
		{	
				
			parent::display();				
		}
		
		
        //Redirect if link was exist
        if(!empty($link))
        	$this->setRedirect($link, $msg);
        	//echo $_POST['errormsg'];
    }
	
}
?>