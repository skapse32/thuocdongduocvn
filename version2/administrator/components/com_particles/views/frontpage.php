<?php
/**
* @version		$Id: frontpage.php 11655 2009-03-08 20:04:17Z willebil $
* @package		Joomla
* @subpackage	Content
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
* @subpackage	Content
*/
class FrontpageView
{
	/**
	* Writes a list of the articles
	* @param array An array of content objects
	*/
	function showList( &$rows, $page, $option, $lists )
	{
		$limitstart = JRequest::getVar('limitstart', '0', '', 'int');

		$user 		=& JFactory::getUser();
		$db 		=& JFactory::getDBO();
		$nullDate 	= $db->getNullDate();
		$config		=& JFactory::getConfig();
		$now		=& JFactory::getDate();

		//Ordering allowed ?
		$ordering = (($lists['order'] == 'fpordering'));

		JHTML::_('behavior.tooltip');
		?>
		<form action="index.php?option=com_particles" method="post" name="adminForm">

			<table>
				<tr>
					<td width="100%" class="filter">
						<?php echo JText::_( 'Filter' ); ?>:
						<input type="text" name="search" id="search" value="<?php echo $lists['search'];?>" class="text_area" onchange="document.adminForm.submit();" />
						<button onclick="this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
						<button onclick="document.getElementById('search').value=''; this.form.getElementById('filter_sectionid').value='-1'; this.form.getElementById('catid').value='0'; this.form.getElementById('filter_authorid').value='0'; this.form.getElementById('filter_state').value=''; this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
					</td>
					<td nowrap="nowrap">
						<?php
						echo $lists['sectionid'];
						echo $lists['catid'];
						//echo $lists['authorid'];
						//echo $lists['state'];						
						?>
						<select name="filter_position" onchange="document.adminForm.submit();">
							<option value="-1">Select Position</option>
							<option value="1" <?php echo $lists['position']==1?'selected':'';?> >Position 1</option>
							<option value="2" <?php echo $lists['position']==2?'selected':'';?> >Position 2</option>
							<option value="5" <?php echo $lists['position']==5?'selected':'';?> >Slideshow</option>
							<option value="3" <?php echo $lists['position']==3?'selected':'';?> >Pos1 and Pos2 and Slideshow</option>
							<option value="4" <?php echo $lists['position']==4?'selected':'';?> >Pos1 or Pos2 or Slideshow</option>
						</select>
					</td>
				</tr>
			</table>

			<table class="adminlist">
			<thead>
				<tr>
					<th width="5">
						<?php echo JText::_( 'Num' ); ?>
					</th>
					<th width="20">
						<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count( $rows ); ?>);" />
					</th>
					<th width="2%" class="title" align="center" nowrap="nowrap">
						<?php echo JHTML::_('grid.sort',   'ID', 'c.id', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th class="title">
						<?php echo JHTML::_('grid.sort',   'Title', 'c.title', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th class="title">
						<?php echo JHTML::_('grid.sort',   'Pos1', 'f.pos1', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th class="title">
						<?php echo JHTML::_('grid.sort',   'Pos2', 'f.pos2', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th class="title">
						<?php echo JHTML::_('grid.sort',   'Slideshow', 'f.slidshow', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th width="10%" nowrap="nowrap">
						<?php echo JHTML::_('grid.sort',   'Published', 'c.state', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th width="10%" nowrap="nowrap">
						<?php echo JHTML::_('grid.sort',   'Date', 'c.created', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<!--
					<th width="80" nowrap="nowrap">
						<?php echo JHTML::_('grid.sort',   'Order', 'fpordering', @$lists['order_Dir'], @$lists['order'] ); ?>
		 			</th>
					<th width="1%">
						<?php if ($ordering) echo JHTML::_('grid.order',  $rows ); ?>
					</th>	-->				
					
					<th width="10%" class="title">
						<?php echo JHTML::_('grid.sort',   'Section', 'sect_name', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th width="10%" class="title">
						<?php echo JHTML::_('grid.sort',   'Category', 'cc.name', @$lists['order_Dir'], @$lists['order'] ); ?>
					</th>
					<th width="10%" class="title">
						<?php echo JHTML::_('grid.sort',   'Author', 'author', @$lists['order_Dir'], @$lists['order'] ); ?>
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
			for ($i=0, $n=count( $rows ); $i < $n; $i++)
			{
				$row = &$rows[$i];

				$link = JRoute::_( 'index.php?option=com_content&task=edit&cid[]='. $row->id );

				$publish_up =& JFactory::getDate($row->publish_up);
				$publish_down =& JFactory::getDate($row->publish_down);
				$publish_up->setOffset($config->getValue('config.offset'));
				$publish_down->setOffset($config->getValue('config.offset'));
				if ( $now->toUnix() <= $publish_up->toUnix() && $row->state == 1 ) {
					$img = 'publish_y.png';
					$alt = JText::_( 'Published' );
				} else if ( ( $now->toUnix() <= $publish_down->toUnix() || $row->publish_down == $nullDate ) && $row->state == 1 ) {
					$img = 'publish_g.png';
					$alt = JText::_( 'Published' );
				} else if ( $now->toUnix() > $publish_down->toUnix() && $row->state == 1 ) {
					$img = 'publish_r.png';
					$alt = JText::_( 'Expired' );
				} else if ( $row->state == 0 ) {
					$img = 'publish_x.png';
					$alt = JText::_( 'Unpublished' );
				} else if ( $row->state == -1 ) {
					$img = 'disabled.png';
					$alt = JText::_( 'Archived' );
				}
				$times = '';
				if (isset($row->publish_up)) {
					if ($row->publish_up == $nullDate) {
						$times .= JText::_( 'Start: Always' );
					} else {
						$times .= JText::_( 'Start' ) .": ". $publish_up->toFormat();
					}
				}
				if (isset($row->publish_down)) {
					if ($row->publish_down == $nullDate) {
						$times .= "<br />". JText::_( 'Finish: No Expiry' );
					} else {
						$times .= "<br />". JText::_( 'Finish' ) .": ". $publish_down->toFormat();
					}
				}			
				$checked 	= JHTML::_('grid.checkedout',   $row, $i );

				if ( $user->authorize( 'com_users', 'manage' ) ) {
					if ( $row->created_by_alias ) {
						$author = $row->created_by_alias;
					} else {
						$linkA 	= JRoute::_( 'index.php?option=com_users&task=edit&cid[]='. $row->created_by );
						$author='<span class="editlinktip hasTip" title="'.JText::_( 'Edit User' ).'::'.$row->author.'">' .
								'<a href="'. $linkA .'">'. $row->author .'</a><span>';
					}
				} else {
					if ( $row->created_by_alias ) {
						$author = $row->created_by_alias;
					} else {
						$author = $row->author;
					}
				}

				// section handling
				if ($row->sectionid) {
					$row->sect_link = JRoute::_( 'index.php?option=com_sections&task=edit&cid[]='. $row->sectionid );
					$title_sec		= JText::_( 'Edit Section' );
				}

				// category handling
				if ($row->catid) {
					$row->cat_link 	= JRoute::_( 'index.php?option=com_categories&task=edit&cid[]='. $row->catid );
					$title_cat		= JText::_( 'Edit Category' );
				}
				?>
				<tr class="<?php echo "row$k"; ?>">
					<td>
						<?php echo $page->getRowOffset( $i ); ?>
					</td>
					<td>
						<?php echo $checked; ?>
					</td>
					<td align="center">
						<?php echo $row->id;?>
					</td>
					<td>
						<?php
						if (  JTable::isCheckedOut($user->get ('id'), $row->checked_out ) ) {
							echo $row->title;
						} else {
							?>
							<span class="editlinktip hasTip" title="<?php echo JText::_( 'Edit Content' );?>::<?php echo $row->name; ?>">
							<a href="<?php echo $link; ?>">
								<?php echo $row->title; ?></a></span>
							<?php
						}
						?>
					</td>
					<td align="center">
					<?php if(!$row->pos1):?>
					<a title="Position Up" onclick="return listItemTask('cb<?php echo $i;?>','position1up')" href="javascript:void(0);">
						<img border="0" alt="Disabled" src="images/publish_x.png">
					</a>
					<?php else:?>
					<a title="Position Down" onclick="return listItemTask('cb<?php echo $i;?>','position1down')" href="javascript:void(0);">
						<img border="0" alt="Enabled" src="images/tick.png">
					</a>
					<?php endif;?>
					</td>
					<td align="center">
					<?php if(!$row->pos2):?>
					<a title="Position Up" onclick="return listItemTask('cb<?php echo $i;?>','position2up')" href="javascript:void(0);">
						<img border="0" alt="Disabled" src="images/publish_x.png">
					</a>
					<?php else:?>
					<a title="Position Down" onclick="return listItemTask('cb<?php echo $i;?>','position2down')" href="javascript:void(0);">
						<img border="0" alt="Enabled" src="images/tick.png">
					</a>
					<?php endif;?>
					</td>
					<td align="center">
					<?php if(!$row->slideshow):?>
					<a title="Position Up" onclick="return listItemTask('cb<?php echo $i;?>','position3up')" href="javascript:void(0);">
						<img border="0" alt="Disabled" src="images/publish_x.png">
					</a>
					<?php else:?>
					<a title="Position Down" onclick="return listItemTask('cb<?php echo $i;?>','position3down')" href="javascript:void(0);">
						<img border="0" alt="Enabled" src="images/tick.png">
					</a>
					<?php endif;?>
					</td>
					<?php
					if ( $times ) {
						?>
						<td align="center">
							<span class="editlinktip hasTip" title="<?php echo JText::_( 'Publish Information' );?>::<?php echo $times; ?>">
							<a href="javascript:void(0);" onclick="return listItemTask('cb<?php echo $i;?>','<?php echo $row->state ? 'unpublish' : 'publish' ?>')">
								<img src="images/<?php echo $img;?>" width="16" height="16" border="0" alt="<?php echo $alt;?>" /></a></span>
						</td>
						<?php
					}
					
					?>
					<td align="center">
					<?php echo JHTML::_('date',  $row->created, JText::_('DATE_FORMAT_LC4') ); ?>
					</td>
					<!--
					<td class="order" colspan="2">
						<span><?php echo $page->orderUpIcon( $i, true, 'orderup', 'Move Up', $ordering ); ?></span>
						<span><?php echo $page->orderDownIcon( $i, $n, true, 'orderdown', 'Move Down', $ordering ); ?></span>
						<?php $disabled = $ordering ?  '' : 'disabled="disabled"'; ?>
						<input type="text" name="order[]" size="5" value="<?php echo $row->fpordering;?>" <?php echo $disabled ?> class="text_area" style="text-align: center" />
					</td>					-->
					
					<td>
						<?php if ($row->sectionid) : ?>
						<span class="editlinktip hasTip" title="<?php echo $title_sec; ?>::<?php echo $row->sect_name; ?>">
							<a href="<?php echo $row->sect_link; ?>">
								<?php echo $row->sect_name; ?></a></span>
						<?php endif; ?>
					</td>
					<td>
						<?php if ($row->catid) : ?>
						<span class="editlinktip hasTip" title="<?php echo $title_cat; ?>::<?php echo $row->name; ?>">
							<a href="<?php echo $row->cat_link; ?>" title="<?php echo $title_cat; ?>">
								<?php echo $row->name; ?></a></span>
						<?php endif; ?>
					</td>
					<td>
						<?php echo $author; ?>
					</td>
				</tr>
				<?php
				$k = 1 - $k;
			}
			?>
			</tbody>
			</table>
			<?php JHTML::_('content.legend'); ?>

		<input type="hidden" name="option" value="<?php echo $option;?>" />
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $lists['order']; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $lists['order_Dir']; ?>" />
		<?php echo JHTML::_( 'form.token' ); ?>
		</form>
		<?php
	}
}
