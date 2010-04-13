<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
 * SubCategories      Component Uninstall
 **/
function com_uninstall() {
	
	if ( JFile::exists( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'_VERSION.php' ) ) {
		$version	=	JFile::read( JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'_VERSION.php' );
	}
	$path		=	JPATH_ADMINISTRATOR.DS.'components'.DS.'com_subcategories'.DS.'install'.DS.'subcategories_'.$version;
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
	}
		
	/**
	 * Push Display Into Screen
	 **/
	echo "<strong>jSeblod SubCategories for Joomla 1.5 uninstalled.</strong>";

}
?>