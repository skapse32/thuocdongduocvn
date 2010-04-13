<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.application.component.view' );

/**
 * SubCategories	View Class
 **/
class SubCategoriesViewSubCategories extends JView
{
	/**
	 * Display Toolbar
	 **/
	function _displayToolbar()
	{
		JToolBarHelper::title( JText::_( 'SUBCATEGORIES FOR JOOMLA' ), 'subcategories.png' );
	}
	
	/**
	 * Display Default View
	 **/
	function display( $tpl = null )
	{
		// Get Request Vars
		global $mainframe, $option;
		$controller	=	JRequest::getWord( 'controller' );
		$document 	=&	JFactory::getDocument();
		$user 		=&	JFactory::getUser();

		// Joomla Version
		$jversion	=	JVERSION;
		// SubCategories Version
		$version	= 	substr( _VERSION, 0, -2);
		
		if ( ! strcmp( $version, $jversion ) ) {
			$data	=&	$this->get( 'Data' );
			$enable	=	( ! strcmp( $data, 'subcategories=1' ) ) ? 1 : 0;
			if ( $enable ) {
				$stateColor		=	'blue';
				$stateMessage	=	JText::_( 'SUBCATEGORIES IS ENABLE' );
				// Disable Link
				$stateIcon		=	'icon-48-disable.png';
				$stateAction	=	JText::_( 'DISABLE SUBCATEGORIES' );
				$stateLink		=	'javascript: submitbutton(\'subCategories_disable\');';
				$stateTarget	=	'_self';
			} else {
				$stateColor		=	'yellow';
				$stateMessage	=	JText::_( 'SUBCATEGORIES IS DISABLE' );
				// Enable Link
				$stateIcon		=	'icon-48-enable.png';
				$stateAction	=	JText::_( 'ENABLE SUBCATEGORIES' );
				$stateLink		=	'javascript: submitbutton(\'subCategories_enable\');';
				$stateTarget	=	'_self';
			}
		} else {
			$suffix		= 	substr( $version, 4);
			$jsuffix	= 	substr( $jversion, 4);
			if ( $suffix > $jsuffix ) {
				// If Joomla < SubCategories
				$stateMessage	=	JText::_( 'SUBCATEGORIES IS INDATED' );
				$stateColor		=	'red';
				// Download Link
				$stateIcon		=	'icon-48-download.png';
				$stateAction	=	JText::_( 'DOWNGRADE SUBCATEGORIES' );
				$stateLink		=	'http://www.jseblod.com/download-cck/joomla-subcategories.html';
				$stateTarget	=	'_blank';				
			} else {
				// Check Joomla > SubCategories
				$stateMessage	=	JText::_( 'SUBCATEGORIES IS OUTDATED' );
				$stateColor		=	'red';
				// Download Link
				$stateIcon		=	'icon-48-download.png';
				$stateAction	=	JText::_( 'UPGRADE SUBCATEGORIES' );
				$stateLink		=	'http://www.jseblod.com/download-cck/joomla-subcategories.html';
				$stateTarget	=	'_blank';
			}
		}
		
		// Push Data into Template
		$this->assignRef( 'option', $option );
		$this->assignRef( 'controller', $controller );
		$this->assignRef( 'document', $document );
		//
		$this->assignRef( 'stateColor', $stateColor );
		$this->assignRef( 'stateMessage', $stateMessage );
		$this->assignRef( 'stateIcon', $stateIcon );
		$this->assignRef( 'stateAction', $stateAction );
		$this->assignRef( 'stateLink', $stateLink );
		$this->assignRef( 'stateTarget', $stateTarget );
		
		$this->_displayToolbar();
		
		parent::display( $tpl );
	}
	
}
?>