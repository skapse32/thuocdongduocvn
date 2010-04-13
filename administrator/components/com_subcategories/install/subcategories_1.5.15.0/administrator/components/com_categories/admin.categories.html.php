<?php
/**
 * @version		$Id: admin.categories.html.php 11655 2009-03-08 20:04:17Z willebil $
 * @package		Joomla
 * @subpackage	Categories
 * @copyright	Copyright (C) 2005 - 2008 Open Source Matters. All rights reserved.
 * @license		GNU/GPL, see LICENSE.php
 * Joomla! is free software. This version may have been modified pursuant
 * to the GNU General Public License, and as distributed it includes or
 * is derivative of works licensed under the GNU General Public License or
 * other free or open source software licenses.
 * See COPYRIGHT.php for copyright notices and details.
 */

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

/**
* @package		Joomla
* @subpackage	Categories
*/
class categories_html
{

	/**
	* Writes a list of the categories for a section
	* @param array An array of category objects
	* @param string The name of the category section
	*/
	function show( &$rows, $section, $section_name, &$page, &$lists, $type )
	{
		$limitstart = JRequest::getVar('limitstart', '0', '', 'int');
		$user =& JFactory::getUser();

		//Ordering allowed ?
		$ordering = ($lists['order'] == 'c.ordering');

		JHTML::_('behavior.tooltip');
		?>
		<form action="index.php?option=com_categories&amp;section=<?php echo $section; ?>" method="post" name="adminForm">

		<table>
			<tr>
				<td align="left" width="100%">
					<?php echo JText::_( 'Filter' ); ?>:
					<input type="text" name="search" id="search" value="<?php echo $lists['search'];?>" class="text_area" onchange="document.adminForm.submit();" />
					<button onclick="this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
					<button onclick="document.getElementById('search').value='';this.form.getElementById('sectionid').value='-1';this.form.getElementById('filter_state').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
				</td>
				<td nowrap="nowrap">
					<?php
					
					echo JText::_( 'Max Levels' );
					echo $lists['levellist'];
					
					if ( $section == 'com_content') {
						echo $lists['sectionid'];
					}
					?>
					<?php
					echo $lists['state'];
					?>
				</td>
			</tr>
		</table>

		<table class="adminlist">
		<thead>
			<tr>
				<th width="10" align="left">
					<?php echo JText::_( 'Num' ); ?>
				</th>
				<th width="20">
					<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count( $rows );?>);" />
				</th>
				<th class="title">
					<?php echo JHTML::_('grid.sort',   'Title', 'c.title', @$lists['order_Dir'], @$lists['order'] ); ?>
				</th>
				<th width="5%">
					<?php echo JHTML::_('grid.sort',   'Published', 'c.published', @$lists['order_Dir'], @$lists['order'] ); ?>
				</th>
				<th width="8%" nowrap="nowrap">
					<?php echo JHTML::_('grid.sort',   'Order by', 'c.ordering', @$lists['order_Dir'], @$lists['order'] ); ?>
					<?php if ($ordering) echo JHTML::_('grid.order',  $rows ); ?>
				</th>
				<th width="7%">
					<?php echo JHTML::_('grid.sort',   'Access', 'groupname', @$lists['order_Dir'], @$lists['order'] ); ?>
				</th>
				<?php
				if ( $section == 'com_content') {
					?>
					<th width="20%"  class="title">
						<?php echo JHTML::_('grid.sort',   'Section', 'section_name', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<?php
				}
				?>
				<?php
				if ( $type == 'content') {
					?>
					<th width="5%">
						<?php echo JText::_( 'Num Active' ); ?>
					</th>
					<th width="5%">
						<?php echo JText::_( 'Num Trash' ); ?>
					</th>
					<?php
				}
				?>
				<th width="1%" nowrap="nowrap">
					<?php echo JHTML::_('grid.sort',   'ID', 'c.id', @$lists['order_Dir'], @$lists['order'] ); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
		<tr>
			<td colspan="13">
				<?php echo $page->getListFooter(); ?>
			</td>
		</tr>
		</tfoot>
		<tbody>
		<?php
		$k = 0;
		if( count( $rows ) ) {
		for ($i=0, $n=count( $rows ); $i < $n; $i++) {
			$row 	= &$rows[$i];

			JFilterOutput::objectHtmlSafe($row, ENT_QUOTES, 'treename');

			$row->sect_link = JRoute::_( 'index.php?option=com_sections&task=edit&cid[]='. $row->section );

			$link = 'index.php?option=com_categories&section='. $section .'&task=edit&cid[]='. $row->id .'&type='.$type;

			$access 	= JHTML::_('grid.access',   $row, $i );
			$checked 	= JHTML::_('grid.checkedout',   $row, $i );
			$published 	= JHTML::_('grid.published', $row, $i );
			?>
			<tr class="<?php echo "row$k"; ?>">
				<td>
					<?php echo $page->getRowOffset( $i ); ?>
				</td>
				<td>
					<?php echo $checked; ?>
				</td>
				<td>
					<span class="editlinktip hasTip" title="<?php echo JText::_( 'EDIT CATEGORY' );?>::<?php echo $row->treename; ?>">
					<?php
					if (  JTable::isCheckedOut($user->get ('id'), $row->checked_out )  ) {
						echo $row->treename;
					} else {
						?>
						<a href="<?php echo JRoute::_( $link ); ?>">
							<?php echo $row->treename; ?></a>
						<?php
					}
					?></span>
				</td>
				<td align="center">
					<?php echo $published;?>
				</td>
				<td class="order">
                	<?php
						$previous_section_same 	= ($row->section == @$rows[$i-1]->section);
						$next_section_same		= ($row->section == @$rows[$i+1]->section);
						$top_level_category 	= ($row->parent_id == 0);
						$previous_parent_same	= ($row->parent_id == @$rows[$i-1]->parent_id);
						$next_parent_same		= ($row->parent_id == @$rows[$i+1]->parent_id);
						$only_child				= ($row->siblings == 1);
						$last_child				= ($row->siblings == $row->ordering);
						// The variables above and the if statement below were added so
						// that the component would correctly show the move up/down icons.
					?>
                    <?php if ($previous_section_same and (!$next_section_same and !$previous_parent_same and !$next_parent_same and !$only_child and !$top_level_category)): ?>
                    
                    	<span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                        <span>&nbsp;</span>
                    
                    <?php elseif ($previous_section_same and $next_section_same and (!$previous_parent_same and !$next_parent_same and !$only_child) and $top_level_category and $last_child): ?>
                    
                    	<span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                        <span>&nbsp;</span>
                   
                   <?php elseif ($previous_section_same and $next_section_same and $previous_parent_same and (!$next_parent_same and !$only_child) and $top_level_category and $last_child): ?>
                    
                    	<span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                        <span>&nbsp;</span>
                    
                    <?php elseif (($previous_section_same) and !($next_section_same)): ?>
                    
                    	<span><?php echo $page->orderUpIcon( $i, ($top_level_category || $previous_parent_same), 'orderup', 'Move Up', $ordering ); ?></span>
                        <span>&nbsp;</span>
                        
                    <?php elseif (!($previous_section_same) and ($next_section_same)): ?>
                    
                    	<span>&nbsp;</span>
                    	<span><?php echo $page->orderDownIcon( $i, $n, ($top_level_category || $next_parent_same), 'orderdown', 'Move Down', $ordering ); ?></span>
                    
                    <?php elseif ($row->siblings == 1): ?>
                    	
                        <span>&nbsp;</span>
                        <span>&nbsp;</span>
                    
                    <?php elseif (!($top_level_category || $previous_parent_same)): ?>
  
                      	<?php if ($row->siblings && $row->ordering == 1): ?>
                        
                        	<span>&nbsp;</span>
	                    	<span><?php echo $page->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $ordering ); ?></span>
    					<?php elseif ($row->siblings && ($row->siblings - $row->ordering)): ?>
                            
                            <span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                            <span><?php echo $page->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $ordering ); ?></span>
                            
						<?php elseif (!($row->siblings - $row->ordering)): ?>
                        
                        	<span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                        	<span>&nbsp;</span>
                        
                        <?php endif; ?>
                    
                  	 <?php elseif (!($top_level_category || $next_parent_same)): ?>
  
                      	<?php if ($row->siblings && $row->ordering == 1): ?>
                        
                        	<span>&nbsp;</span>
	                    	<span><?php echo $page->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $ordering ); ?></span>
    					<?php elseif ($row->siblings && ($row->siblings - $row->ordering)): ?>
                            
                            <span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                            <span><?php echo $page->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $ordering ); ?></span>
                            
						<?php elseif (!($row->siblings - $row->ordering)): ?>
                        
                        	<span><?php echo $page->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $ordering ); ?></span>
                        	<span>&nbsp;</span>
                        
                        <?php endif; ?> 
                                       
                        	                
                    <?php else: ?>

                    	<span><?php echo $page->orderUpIcon( $i, ($top_level_category || $previous_parent_same), 'orderup', 'Move Up', $ordering ); ?></span>
						<span><?php echo $page->orderDownIcon( $i, $n, ($top_level_category || $next_parent_same), 'orderdown', 'Move Down', $ordering ); ?></span>
                    
                    <?php endif; ?>
					
					<?php $disabled = $ordering ?  '' : 'disabled="disabled"'; ?>
					<input type="text" name="order[]" size="5" value="<?php echo $row->ordering; ?>" <?php echo $disabled ?> class="text_area" style="text-align: center" />
				</td>
				<td align="center">
					<?php echo $access;?>
				</td>
				<?php
				if ( $section == 'com_content' ) {
					?>
					<td>
						<a href="<?php echo $row->sect_link; ?>" title="<?php echo JText::_( 'Edit Section' ); ?>">
							<?php echo $row->section_name; ?></a>
					</td>
					<?php
				}
				?>
				<?php
				if ( $type == 'content') {
					?>
					<td align="center">
						<?php echo $row->active; ?>
					</td>
					<td align="center">
						<?php echo $row->trash; ?>
					</td>
					<?php
				}
				$k = 1 - $k;
				?>
				<td align="center">
					<?php echo $row->id; ?>
				</td>
			</tr>
			<?php
		}
		} else {
			if( $type == 'content') {
				?>
				<tr><td colspan="10"><?php echo JText::_('There are no Categories'); ?></td></tr>
				<?php
			} else {
				?>
				<tr><td colspan="8"><?php echo JText::_('There are no Categories'); ?></td></tr>
				<?php
			}
		}
		?>
		</tbody>
		</table>

		<input type="hidden" name="option" value="com_categories" />
		<input type="hidden" name="section" value="<?php echo $section;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="chosen" value="" />
		<input type="hidden" name="act" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="type" value="<?php echo $type; ?>" />
		<input type="hidden" name="filter_order" value="<?php echo $lists['order']; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $lists['order_Dir']; ?>" />
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
		<?php
	}

	/**
	* Writes the edit form for new and existing categories
	* @param JTableCategory The category object
	* @param string
	* @param array
	*/
	function edit( &$row, &$lists, $redirect, $sectioncategories )
	{
		JRequest::setVar( 'hidemainmenu', 1 );

		$editor =& JFactory::getEditor();

		if ($row->image == '') {
			$row->image = 'blank.png';
		}

		if ( $redirect == 'content' ) {
			$component = 'Content';
		} else {
			$component = ucfirst( substr( $redirect, 4 ) );
			if ( $redirect == 'com_contact_details' ) {
				$component = 'Contact';
			}
		}

		JFilterOutput::objectHTMLSafe( $row, ENT_QUOTES, 'description' );
		$cparams = JComponentHelper::getParams ('com_media');
		?>
		<script language="javascript" type="text/javascript">
		<!--
		var sectioncategories = new Array;
		<?php
		$i = 0;
		foreach ($sectioncategories as $k=>$items) {
			foreach ($items as $v) {
				echo "sectioncategories[".$i++."] = new Array( '$k','".addslashes( $v->id )."','".html_entity_decode(addslashes( $v->title ), ENT_NOQUOTES, 'UTF-8')."' );\n\t\t";
			}
		}
		?>
		function submitbutton(pressbutton, section) {
			var form = document.adminForm;
			if (pressbutton == 'cancel') {
				submitform( pressbutton );
				return;
			}

			if ( pressbutton == 'menulink' ) {
				if ( form.menuselect.value == "" ) {
					alert( "<?php echo JText::_( 'Please select a Menu', true ); ?>" );
					return;
				} else if ( form.link_type.value == "" ) {
					alert( "<?php echo JText::_( 'Please select a menu type', true ); ?>" );
					return;
				} else if ( form.link_name.value == "" ) {
					alert( "<?php echo JText::_( 'Please enter a Name for this menu item', true ); ?>" );
					return;
				}
			}

			if ( form.title.value == "" ) {
				alert("<?php echo JText::_( 'Category must have a title', true ); ?>");
			} else if (form.section.value == "-1"){
				alert("<?php echo JText::_( 'You must select a Section', true ); ?>");
			} else {
				<?php
				echo $editor->save( 'description' ) ; ?>
				submitform(pressbutton);
			}
		}
		//-->
		</script>

		<form action="index.php" method="post" name="adminForm">

		<div class="col width-60">
			<fieldset class="adminform">
				<legend><?php echo JText::_( 'Details' ); ?></legend>

					<table class="admintable">
					<tr>
						<td class="key">
							<label for="title" width="100">
								<?php echo JText::_( 'Title' ); ?>:
							</label>
						</td>
						<td colspan="2">
							<input class="text_area" type="text" name="title" id="title" value="<?php echo $row->title; ?>" size="50" maxlength="50" title="<?php echo JText::_( 'A long name to be displayed in headings' ); ?>" />
						</td>
					</tr>
					<tr>
						<td class="key">
							<label for="alias">
								<?php echo JText::_( 'Alias' ); ?>:
							</label>
						</td>
						<td colspan="2">
							<input class="text_area" type="text" name="alias" id="alias" value="<?php echo $row->alias; ?>" size="50" maxlength="255" title="<?php echo JText::_( 'ALIASTIP' ); ?>" />
						</td>
					</tr>
					<tr>
						<td width="120" class="key">
							<?php echo JText::_( 'Published' ); ?>:
						</td>
						<td>
							<?php echo $lists['published']; ?>
						</td>
					</tr>
					<tr>
						<td class="key">
							<label for="section">
								<?php echo JText::_( 'Section' ); ?>:
							</label>
						</td>
						<td colspan="2">
							<?php echo $lists['section']; ?>
						</td>
					</tr>
                    <tr>
						<td class="key">
							<label for="parent">
								<?php echo JText::_( 'Parent Category' ); ?>:
							</label>
						</td>
						<td colspan="2">
                        	<!--<input class="text_area" type="text" name="parent_id" id="parent_id" value="<?php echo $row->parent_id; ?>" size="50" maxlength="50" title="<?php echo JText::_( 'Parent Item' ); ?>" /> -->
                            <?php echo $lists['parent_id']; ?>
						</td>
					</tr>
					<tr>
						<td class="key">
							<label for="ordering">
								<?php echo JText::_( 'Ordering' ); ?>:
							</label>
						</td>
						<td colspan="2">
							<?php echo $lists['ordering']; ?>
						</td>
					</tr>
					<tr>
						<td valign="top" class="key">
							<label for="access">
								<?php echo JText::_( 'Access Level' ); ?>:
							</label>
						</td>
						<td>
							<?php echo $lists['access']; ?>
						</td>
					</tr>
					<tr>
						<td class="key">
							<label for="image">
								<?php echo JText::_( 'Image' ); ?>:
							</label>
						</td>
						<td>
							<?php echo $lists['image']; ?>
						</td>
					</tr>
					<tr>
						<td class="key">
							<label for="image_position">
								<?php echo JText::_( 'Image Position' ); ?>:
							</label>
						</td>
						<td>
							<?php echo $lists['image_position']; ?>
						</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>
						<script language="javascript" type="text/javascript">
						if (document.forms.adminForm.image.options.value!=''){
							jsimg='../<?php echo $cparams->get('image_path'); ?>/' + getSelectedValue( 'adminForm', 'image' );
						} else {
							jsimg='../images/M_images/blank.png';
						}
						document.write('<img src=' + jsimg + ' name="imagelib" width="80" height="80" border="2" alt="<?php echo JText::_( 'Preview', true ); ?>" />');
						</script>
						</td>
					</tr>

				</table>
			</fieldset>

			<fieldset class="adminform">
				<legend><?php echo JText::_( 'Description' ); ?></legend>

				<table class="admintable">
					<tr>
						<td valign="top" colspan="3">
							<?php
							// parameters : areaname, content, width, height, cols, rows, show xtd buttons
							echo $editor->display( 'description',  htmlspecialchars($row->description, ENT_QUOTES), '550', '300', '60', '20', array('pagebreak', 'readmore') ) ;
							?>
						</td>
					</tr>
					</table>
			</fieldset>
		</div>
		<div class="clr"></div>

		<input type="hidden" name="option" value="com_categories" />
		<input type="hidden" name="oldtitle" value="<?php echo $row->title ; ?>" />
		<input type="hidden" name="id" value="<?php echo $row->id; ?>" />
		<input type="hidden" name="sectionid" value="<?php echo $row->section; ?>" />
        <input type="hidden" name="oldparent" value="<?php echo $row->parent_id; ?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
		<?php
	}

	/**
	* Form to select Section to move Category to
	*/
	function moveCategorySelect( $option, $cid, $SectionList, $items, $sectionOld, $contents, $redirect ) {
		?>
		<script language="javascript" type="text/javascript">
		function submitbutton(pressbutton) {
			var form = document.adminForm;
			if (pressbutton == 'cancel') {
				submitform( pressbutton );
				return;
			}

			// do field validation
			if (!getSelectedValue( 'adminForm', 'sectionmove' )) {
				alert( "<?php echo JText::_( 'Please select a section from the list', true ); ?>" );
			} else {
				submitform( pressbutton );
			}
		}
		</script>

		<form action="index.php" method="post" name="adminForm">

		<br />
		<table class="adminform">
		<tr>
			<td width="3%"></td>
			<td  valign="top" width="30%">
			<strong><?php echo JText::_( 'Move to Section' ); ?>:</strong>
			<br />
			<?php echo $SectionList ?>
			<br /><br />
			</td>
			<td  valign="top" width="20%">
			<strong><?php echo JText::_( 'Categories being moved' ); ?>:</strong>
			<br />
			<?php
			echo "<ol>";
			foreach ( $items as $item ) {
				echo "<li>". $item->title ."</li>";
			}
			echo "</ol>";
			?>
			</td>
			<td valign="top" width="20%">
			<strong><?php echo JText::_( 'Articles being moved' ); ?>:</strong>
			<br />
			<?php
			echo "<ol>";
			foreach ( $contents as $content ) {
				echo "<li>". $content->title ."</li>";
			}
			echo "</ol>";
			?>
			</td>
			<td valign="top">
			<?php echo JText::_( 'This will move the Categories listed' ); ?>
			<br />
			<?php echo JText::_( 'and all the items within the category (also listed)' ); ?>
			<br />
			<?php echo JText::_( 'to the selected Section' ); ?>.
			</td>.
		</tr>
		</table>
		<br /><br />

		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="section" value="<?php echo $sectionOld;?>" />
		<input type="hidden" name="boxchecked" value="1" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		<input type="hidden" name="task" value="" />
		<?php
		foreach ( $cid as $id ) {
			echo "\n <input type=\"hidden\" name=\"cid[]\" value=\"$id\" />";
		}
		?>
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
		<?php
	}

	/**
	 * Form to select Section to copy Category to
	 */
	function copyCategorySelect( $option, $cid, $SectionList, $items, $sectionOld, $contents, $redirect ) {
		?>
		<script language="javascript" type="text/javascript">
		function submitbutton(pressbutton) {
			var form = document.adminForm;
			if (pressbutton == 'cancel') {
				submitform( pressbutton );
				return;
			}

			// do field validation
			if (!getSelectedValue( 'adminForm', 'sectionmove' )) {
				alert( "<?php echo JText::_( 'Please select a section from the list', true ); ?>" );
			} else {
				submitform( pressbutton );
			}
		}
		</script>

		<form action="index.php" method="post" name="adminForm">

		<br />
		<table class="adminform">
		<tr>
			<td width="3%"></td>
			<td  valign="top" width="30%">
			<strong><?php echo JText::_( 'Copy to Section' ); ?>:</strong>
			<br />
			<?php echo $SectionList ?>
			<br /><br />
			</td>
			<td  valign="top" width="20%">
			<strong><?php echo JText::_( 'Categories being copied' ); ?>:</strong>
			<br />
			<?php
			echo "<ol>";
			foreach ( $items as $item ) {
				echo "<li>". $item->title ."</li>";
			}
			echo "</ol>";
			?>
			</td>
			<td valign="top" width="20%">
			<strong><?php echo JText::_( 'Articles being copied' ); ?>:</strong>
			<br />
			<?php
			echo "<ol>";
			foreach ( $contents as $content ) {
				echo "<li>". $content->title ."</li>";
				echo "\n <input type=\"hidden\" name=\"item[]\" value=\"$content->id\" />";
			}
			echo "</ol>";
			?>
			</td>
			<td valign="top">
			<?php echo JText::_( 'This will copy the Categories listed' ); ?>
			<br />
			<?php echo JText::_( 'and all the items within the Category (also listed)' ); ?>
			<br />
			<?php echo JText::_( 'to the selected Section' ); ?>
			<br />
			<?php echo JText::_( 'NOTE: IF SAME SECTION' ); ?>.
			</td>.
		</tr>
		</table>
		<br /><br />

		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="section" value="<?php echo $sectionOld;?>" />
		<input type="hidden" name="boxchecked" value="1" />
		<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
		<input type="hidden" name="task" value="" />
		<?php
		foreach ( $cid as $id ) {
			echo "\n <input type=\"hidden\" name=\"cid[]\" value=\"$id\" />";
		}
		?>
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
		<?php
	}
}