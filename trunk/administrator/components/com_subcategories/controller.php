<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.application.component.controller' );

/**
 * SubCategories	Component Controller
 **/
class SubCategoriesController extends JController
{
	/**
	 * Constructor
	 **/
	function __construct()
	{
		parent::__construct();
		
	}
	
	/**
	 * Display Default View
	 **/
	function display()
	{
		global $mainframe;
		
		switch( $this->getTask() ) {
		default:
			// Set Default View
			$view = JRequest::getCmd( 'view' );
			if ( empty( $view ) ) {
				JRequest::setVar( 'view', 'subcategories' );
				JRequest::setVar( 'layout', 'default' );
			}
			break;
		}
		
		parent::display();
	}
	
	/**
	 * Enable SubCategories
	 **/
	function subCategories_enable()
	{
		// Check for Request Forgeries
		JRequest::checkToken() or die( 'Invalid Token' );
				
		$model = $this->getModel( 'subcategories' );

		$link = _LINK_SUBCATEGORIES;
		if ( $model->subCategoriesEnable() ) {
			$this->setRedirect( $link );
		} else {
			$this->setRedirect( $link, JText::_( 'An error has occurred' ), 'error' );
		}
		
		//$this->setRedirect( $link );
	}

	
	/**
	 * Disable SubCategories
	 **/
	function subCategories_disable()
	{
		// Check for Request Forgeries
		JRequest::checkToken() or die( 'Invalid Token' );
				
		$model = $this->getModel( 'subcategories' );

		$link = _LINK_SUBCATEGORIES;
		if ( $model->subCategoriesDisable() ) {
			$this->setRedirect( $link );
		} else {
			$this->setRedirect( $link, JText::_( 'An error has occurred' ), 'error' );
		}
		
		//$this->setRedirect( $link );
	}

}
?>