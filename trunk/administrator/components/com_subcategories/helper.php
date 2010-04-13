<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined('_JEXEC') or die('Restricted access');

/**
 * HelperSubCategories  Display Class
 **/
class HelperSubCategories_Helper
{
    /**
     * Quick Icon Button
     **/
	function quickiconButton( $link, $image, $text, $target )
	{
		global $mainframe;
		$lang		=& JFactory::getLanguage();
		$template	= $mainframe->getTemplate();
		?>
		<div style="float:<?php echo ( $lang->isRTL() ) ? 'right' : 'left'; ?>;  width: 108px; margin-right: 7px;">
			<div class="icon">
				<a href="<?php echo $link; ?>" target="<?php echo $target; ?>">
					<?php echo JHTML::_( 'image.site',  $image, '/components/com_subcategories/assets/images/', NULL, NULL, $text ); ?>
					<span><?php echo $text; ?></span></a>
			</div>
		</div>
		<?php
	}
	
	/**
     * Quick Copyright
     **/
	function quickCopyright()
	{
		?>
		<div class="copyright">
		    <a target="_blank" href="http://www.jseblod.com"><?php echo 'jSeblod (Content Friendly!)'; ?></a>
            <a target="_blank" href="http://www.jseblod.com"><?php echo ( strpos( $_SERVER['HTTP_HOST'], 'localhost' ) === false ) ? _LOGO_32_JSEBLOD : _IMG_32_JSEBLOD; ?></a>
		</div>
		<?php
	}
	
}
?>