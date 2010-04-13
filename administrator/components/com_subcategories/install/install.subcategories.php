<?php
/**
* @author       	http://www.jseblod.com
* @license 			GNU/GPL License.
* @package			SubCategories for Joomla 1.5
**/

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
 * SubCategories      Component Install
 **/
function com_install() {

	$db	=&	JFactory::getDBO();
	$query	= 'UPDATE #__components AS s'
			. ' SET s.params = "subcategories=0"'
			. ' WHERE s.option LIKE "%com_subcategories%"'
			;
	$db->setQuery( $query );
	if ( ! $db->query() ) {
		JText::_( 'Error: Database Error !' );
		echo $db->getErrorMsg();
	}
?>

<table class="adminlist">
<thead>
	<tr>
		<th class="title" width="20">
			<?php echo JText::_( 'NUM' ); ?>
		</th>	
		<th class="title" width="14%">
			<?php echo JText::_( 'Type' ); ?>
		</th>
		<th class="title">
			<?php echo JText::_( 'Extension' ); ?>
		</th>
		<th class="title" width="12%">
			<?php echo JText::_( 'Status' ); ?>
		</th>
		<th class="title" width="28%">
			<?php echo JText::_( 'Author' ); ?>
		</th>
	</tr>
</thead>
<?php
$link_com = JRoute::_( 'index.php?option=com_subcategories' );
?>
<tr>
	<td align="left">
		<img src="components/com_subcategories/assets/images/joomla/icon-17-component.png" width="17" height="17" border="0" alt="Component" />
	</td>
	<td align="left">
		<strong><?php echo JText::_( 'Component' ); ?></strong>
	</td>
	<td align="left">
		<strong>
        	<a href="<?php echo $link_com; ?>"><?php echo 'SubCategories for Joomla 1.5'; ?></a>
            &nbsp;
           	<a href="<?php echo $link_com; ?>" style="color: red;"><?php echo '( Click to Go & Enable SubCategories )'; ?></a>
        </strong>
	</td>
	<td align="left">
		<strong><?php echo '<font color="green"> '. JText::_( 'Installed' ) .'</font>'; ?></strong>
	</td>
	<td align="left">
		<strong><a target="_blank" href="http://www.jseblod.com"><?php echo 'http://www.jseblod.com (Content Friendly !)'; ?></a></strong>
	</td>
</tr>
</table>
<table class="adminlist">
<tr>
	<td><img src="components/com_subcategories/assets/images/joomla/icon-15-native.png" width="75" height="16" alt="15 Native" align="right" /></td>
</tr>
</table>
<?php
}
?>