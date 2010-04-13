<?php

// no direct access
defined('_JEXEC') or die('Truy nhập không hợp lệ');
// Load phần submenu . Chức năng quản lý loại thẻ có thêm tham số true-> nó sẽ là chức năng hiển thị với phần bôi đen đậm
$v = strtolower(JRequest::getVar('v',''));
JSubMenuHelper::addEntry(JText::_('Câu hỏi chưa trả lời'), 'index.php?option=com_comment',$v!='replied');
JSubMenuHelper::addEntry(JText::_('Câu hỏi đã trả lời'), 'index.php?option=com_comment&v=replied',$v=='replied');
// Set the table directory
JTable::addIncludePath(JPATH_ADMINISTRATOR.DS.'components'.DS.'com_comment'.DS.'tables');
// require base controller
require_once(JPATH_COMPONENT.DS.'controller.php');
// Require specific controller if requested
if($controller = JRequest::getWord('controller')) {
    $path = JPATH_COMPONENT.DS.'controllers'.DS.$controller.'.php';
    if (file_exists($path)) {
        require_once $path;
    } else {
        $controller = '';
    }
}
// Create the controller
if(empty($controller))
	$controller="comments";
	$classname	= 'CommentsController'.$controller;
//echo $controller;die;

	$controller	= new $classname(); // Khi khai báo, hàm _contruct() của object sẽ được gọi

/*Ban đầu,khi chạy chức năng này,file \controller.php sẽ được load .
* biến $controller = null ; nên file \controllers\softpin.php ko được load.Khi đó $controlle = new $classname() sẽ trả lại object SoftpinsController
* trong các chức năng tạo mới,sửa,publish,… $controller = ‘Softpin’, khi đó file \controllers\softpin.php được load -> Khi đó $controlle = new $classname() sẽ trả lại object SoftpinsControllerSoftpin
*/

// Perform the Request task
$controller->execute( JRequest::getVar( 'task' ) );
/* Ban đầu,biến task bằng null . Bằng quá trình xử lý bên dưới framework của Joomla, hàm display() của object SoftpinsController sẽ được gọi.
*/
// Redirect if set by the controller
$controller->redirect();

?>