<?php defined('_JEXEC') or die('Restricted access'); ?>

<?php JHTML::_('behavior.tooltip'); ?>
<form action="index.php?option=com_raovat" method="post" name="adminForm">
<table>
	<tr>
		<td align="left" width="100%">
			<?php echo JText::_( 'Filter' ); ?>:
			<input type="text" name="search" id="search" value="<?php echo $this->lists['search'];?>" class="text_area" onchange="document.adminForm.submit();" />
			<button onclick="this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
			<button onclick="document.getElementById('search').value='';this.form.getElementById('filter_state').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
		</td>
		<td nowrap="nowrap">			
			<select name="filter_state" onchange='submitform();'>
				<option value="" selected="">Loại tin</option>
				<option value="ban" <?php echo $this->filter_state=='ban'?"selected":"";?>>Cần bán</option>
				<option value="mua" <?php echo $this->filter_state=='mua'?"selected":"";?>>Cần mua</option>
			</select>
		</td>
	</tr>
</table>
<div id="tablecell">
	<table class="adminlist">
	<thead>
		<tr>
			<th width="5">
				<?php echo JText::_( 'NUM' ); ?>
			</th>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count( $this->items ); ?>);" />
			</th>
			<th  class="title">
				<?php echo JHTML::_('grid.sort',   'Tiêu đề tin', 'm.title', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="7%" align="center">
				<?php echo JHTML::_('grid.sort',   'Loại tin', 'm.type', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="7%" align="center">
				<?php echo JHTML::_('grid.sort',   'Ngày đăng', 'm.created', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="7%" align="center">
				<?php echo JHTML::_('grid.sort',   'Lượt xem', 'm.hit', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="7%" align="center">
				<?php echo JHTML::_('grid.sort',   'Số comment', 'comment', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="1%" nowrap="nowrap">
				<?php echo JHTML::_('grid.sort',   'ID', 'm.id', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="9">
				<?php echo $this->pagination->getListFooter(); ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
	<?php
	$k = 0;
	for ($i=0, $n=count( $this->items ); $i < $n; $i++)
	{
		$row = &$this->items[$i];

		$link 		= JRoute::_( 'index.php?option=com_raovat&task=edit&cid[]='. $row->id );
	$checked 	= JHTML::_('grid.checkedout',   $row, $i );
	?>
		<tr class="<?php echo "row$k"; ?>">
			<td>
				<?php echo $this->pagination->getRowOffset( $i ); ?>
			</td>
			<td>
				<?php echo $checked; ?>
			</td>
			<td>
			<?php if (  JTable::isCheckedOut($this->user->get ('id'), $row->checked_out )  ) {
				echo $row->title;
			} else {
				?>
				<span class="editlinktip hasTip" title="<?php echo JText::_( 'Edit Poll' );?>::<?php echo $row->title; ?>">
				<a href="<?php echo $link  ?>">
					<?php echo $row->title; ?></a></span>
				<?php
			}
			?>
			</td>
			<td align="center">
				<?php echo !$row->type?"Bán":"Mua";?>
			</td>
			<td align="center">
				<?php echo JHTML::_("date",$row->created,"%d.%m.%Y"); ?>
			</td>
			<td align="center">
				<?php echo $row->hit; ?>
			</td>
			<td align="center">
				<?php echo $row->comment; ?>
			</td>
			<td align="center">
				<?php echo $row->id; ?>
			</td>
		</tr>
		<?php
			$k = 1 - $k;
		}
		?>
	</tbody>
	</table>
</div>

	<input type="hidden" name="option" value="com_raovat" />
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="boxchecked" value="0" />
	<input type="hidden" name="filter_order" value="<?php echo $this->lists['order']; ?>" />
	<input type="hidden" name="filter_order_Dir" value="<?php echo $this->lists['order_Dir']; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>