<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : Softpin Manager
 * Created by : thuc.lehuy@gmail.com
 */
/* controller này sẽ điều khiển hiển thị dựa vào giá trị biến task trên Request
*/
// no direct access
defined('_JEXEC') or die('Truy nhập không hợp lệ');

class CommentsControllerComment extends JController
{
    function __construct()
    {
        parent::__construct();
        // Register Extra tasks ... add and edit have similar form
/*
 Tast ‘add’ và ‘edit’,có form giống nhau nên sẽ dùng chung form.php.Khai báo này giúp Joomla thực hiện task ‘add’ như là một task ‘edit’. Khi đó taskmap[add]=edit.
*/
        $this->registerTask( 'add'  , 	'edit' );
 // Register Extra tasks ... publish and unpublish and save have similar form
/*Các thao tác lên dữ liệu của publish và unpublish giống với task ‘save’ .Dữ liệu sẽ lấy trên Request và store() vào DB
*/
        $tasks = JRequest::getVar('task');
        $cid = JRequest::getVar('cid',array(),'','array');
       
        if($tasks == "unpublish")
        {
            if($cid == array()){
         // Chưa đánh giấu chọn thẻ
                $msg = 'Chưa chọn thẻ!';
                $this->setRedirect( 'index.php?option=com_comment&v='.JRequest::getVar('v'),$msg);
            }else{

                $this->registerTask( 'unpublish'  ,'save' );
         // Với task unpublish,del_flag sẽ được gán bằng 0 
                JRequest::setVar( 'del_flag',0);
            }
        }
        if($tasks == "publish")
        {
            if($cid == array()){
         // Chưa đánh giấu chọn thẻ
                $msg = 'Chưa chọn thẻ!';
                $this->setRedirect( 'index.php?option=com_comment&v='.JRequest::getVar('v'),$msg);
            }else{
                $this->registerTask( 'publish'  ,'save' );
// Với task unpublish,del_flag sẽ được gán bằng 1
                JRequest::setVar( 'del_flag',1);
            }
        }
    	
    }
    /**
     * display the edit form
     * @return void
Hàm này sẽ được gọi khi taskmap[task] = edit
     */
    function edit()
    {
        JRequest::setVar( 'view', 'comment' );
        JRequest::setVar( 'layout', 'form'  );
        JRequest::setVar('hidemainmenu', 1);

        parent::display();
    }
    /**
     * save a record (and redirect to main page)
     * @return void
     */
    function save()
    {
        $id = JRequest::getVar('id',0);
        $cid = JRequest::getVar('cid',array(),'','array');
        
        $model = $this->getModel('Comment');
        if($cid != array()){
            //is Publish or Unpublish
            
            $today = date("Y-m-d H:i:s");
            JRequest::setVar( 'created',$today);
            for($i=0,$n=count($cid);$i<$n;$i++){   // Để publish nhiều loại thẻ một lần
            //set biến softpin_id trên request
                JRequest::setVar( 'id',$cid[$i]);
           // gọi hàm store trong model softpin : store dữ liệu trên Request vào DB
                if ($model->store($post)) {
                    $msg = JText::_( 'Success!' );
                } else {
                    $msg = JText::_( 'Error' );
                }
            }
        }else{
            // is New or Edit
            if($id == 0){
                //isNew
                $today = date("Y-m-d H:i:s");
                JRequest::setVar( 'created',$today);
                
                JRequest::setVar( 'del_flag', 0 );
            }else{
                //is Edit
                $today = date("Y-m-d H:i:s");
                JRequest::setVar( 'created',$today);
            }
            // Perform the Request task
            if ($model->store($post)) {
                $msg = JText::_( 'Success!' );
            } else {
                $msg = JText::_( 'Error' );
            }
        }

        // Check the table in so it can be edited.... we are done with it anyway
        $link = 'index.php?option=com_comment&v='.JRequest::getVar('v');
        $this->setRedirect($link, $msg);
    }
    /**
     * cancel editing a record
Hàm này được gọi khi taskmap[task] = cancel
     * @return void
     */

	function remove()
	{
		// Check for request forgeries
		//JRequest::checkToken() or jexit( 'Invalid Token' );

		$this->setRedirect( 'index.php?option=com_comment&v='.JRequest::getVar('v') );

		// Initialize variables
		$db		=& JFactory::getDBO();
		$cid	= JRequest::getVar( 'cid', array(), 'post', 'array' );
		
		$n		= count( $cid );
		JArrayHelper::toInteger( $cid );
//		var_dump($n);die;
		if ($n)
		{
			$query = 'DELETE FROM #__comment'
			. ' WHERE id = ' . implode( ' OR id = ', $cid );
			//var_dump($query);die;
			$db->setQuery( $query );
			if (!$db->query()) {
				JError::raiseWarning( 500, $db->getError() );
			}
		}

		$this->setMessage( JText::sprintf( 'Items removed', $n ) );
	}
    
    function cancel()
    {
        $msg = JText::_( 'Operation Cancelled' );
        $this->setRedirect( 'index.php?option=com_comment&v='.JRequest::getVar('v'), $msg );
    }
}
?>