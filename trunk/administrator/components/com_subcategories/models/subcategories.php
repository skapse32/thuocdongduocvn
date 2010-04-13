<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

jimport( 'joomla.application.component.model' );

/**
 * SubCategories	Model Class
 **/
class SubCategoriesModelSubCategories extends JModel
{
	/**
	 * Vars
	 **/
	var $_data	= null;
		
	/**
	 * Get Data from Database
	 **/
	function &getData()
	{
		if ( empty( $this->_data ) ) {
			$query = 'SELECT params'
				   . ' FROM #__components AS s'
				   . ' WHERE s.option LIKE "%com_subcategories%"'
				   ;
			$this->_db->setQuery( $query );
			$this->_data = $this->_db->loadResult();
		}
		
		return $this->_data;
	}

	/**
	 * Enable SubCategories
	 **/
	function subCategoriesEnable()
	{
		$path		=	JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'install'.DS.'subcategories_'._VERSION;
		$pathBackup	=	JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'install'.DS.'joomla_'.JVERSION;
		$pathJommla	=	JPATH_SITE;
		
		if ( JFolder::exists( $path ) ) {
			// Backup
			if ( JFolder::exists( $pathBackup ) ) {
				JFolder::delete( $pathBackup );
			}
			JFolder::copy( $path, $pathBackup );
			$files	=	JFolder::files( $path, '.', true, true );
			foreach ( $files as $file ) {
				if ( ! ( $file == $path.DS.'index.html' || $file == $path.DS.'administrator'.DS.'index.html' ) ) {
					$fileBackup	=	str_replace( $path, $pathBackup, $file );
					$fileJoomla	=	str_replace( $path, $pathJommla, $file );
					// Backup ( Disable )
					if ( JFile::exists( $fileBackup ) ) {
						JFile::delete( $fileBackup );
					}
					if ( JFile::exists( $fileJoomla ) ) {
						JFile::move( $fileJoomla, $fileBackup );
					}
					// Upgrade ( Enable )
					JFile::copy( $file, $fileJoomla );
				}
			}
		} else {
			return false;
		}
		
		$query	= 'UPDATE #__components AS s'
				. ' SET s.params = "subcategories=1"'
				. ' WHERE s.option LIKE "%com_subcategories%"'
				;
		$this->_db->setQuery( $query );
		if ( ! $this->_db->query() ) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		
		return true;
	}
	
	/**
	 * Disable SubCategories
	 **/
	function subCategoriesDisable()
	{
		$path		=	JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'install'.DS.'subcategories_'._VERSION;
		$pathBackup	=	JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'install'.DS.'joomla_'.JVERSION;
		$pathJommla	=	JPATH_SITE;
		
		if ( JFolder::exists( $pathBackup ) ) {
			$files	=	JFolder::files( $path, '.', true, true );
			foreach ( $files as $file ) {
				if ( ! ( $file == $path.DS.'index.html' || $file == $path.DS.'administrator'.DS.'index.html' ) ) {
					$fileBackup	=	str_replace( $path, $pathBackup, $file );
					$fileJoomla	=	str_replace( $path, $pathJommla, $file );
					// Downgrade ( Disable )
					if ( JFile::exists( $fileJoomla ) ) {
						JFile::delete( $fileJoomla );
					}
					if ( JFile::exists( $fileBackup ) ) {
						JFile::move( $fileBackup, $fileJoomla );
					}
				}
			}
			JFolder::delete( $pathBackup );
		} else {
			return false;
		}
		
		$query	= 'UPDATE #__components AS s'
				. ' SET s.params = "subcategories=0"'
				. ' WHERE s.option LIKE "%com_subcategories%"'
				;
		$this->_db->setQuery( $query );
		if ( ! $this->_db->query() ) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
			
		return true;
	}
}
?>