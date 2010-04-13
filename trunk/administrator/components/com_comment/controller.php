<?php
/*
 * @Package Softpin Order Manager
 * @Subpackage : Softpin Manager
 * Create by : thuc.lehuy@gmail.com
 */
// No direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport('joomla.application.component.controller');

class CommentsControllerComments extends JController
{
    /**
	 * Method to display the view
	 * Chức năng này sẽ load view.html.php trong thư mục views/softpins chứ ko load view.html.php trong thư mục views/softpin. *Còn làm sao tìm được thì là do xử lý bên dưới của framework Joomla ^^ . 
	 * @access	public
	 */
	function display()
	{
		parent::display();
	}
}
?>