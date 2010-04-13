<?php defined('_JEXEC') or die('Restricted access'); ?>

<form action="index.php?option=com_menus&amp;menutype=<?php echo $this->menutype; ?>" method="post" name="adminForm">

	<table>
		<tr>
			<td align="left" width="100%">
				<?php echo JText::_( 'Filter' ); ?>:
				<input type="text" name="search" id="search" value="<?php echo $this->lists['search'];?>" class="text_area" onchange="document.adminForm.submit();" />
				<button onclick="this.form.submit();"><?php echo JText::_( 'Go' ); ?></button>
				<button onclick="document.getElementById('search').value='';this.form.getElementById('levellimit').value='10';this.form.getElementById('filter_state').value='';this.form.submit();"><?php echo JText::_( 'Reset' ); ?></button>
			</td>
			<td nowrap="nowrap">
				<?php
				echo JText::_( 'Max Levels' );
				echo $this->lists['levellist'];
				echo $this->lists['state'];
				?>
			</td>
		</tr>
	</table>

<table class="adminlist">
	<thead>
		<tr>
			<th width="20">
				<?php echo JText::_( 'NUM' ); ?>
			</th>
			<th width="20">
				<input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count($this->items); ?>);" />
			</th>
			<th class="title">
				<?php echo JHTML::_('grid.sort',   'Menu Item', 'm.name', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="5%">
				<?php echo JText::_( 'Default' ); ?>
			</th>
			<th width="5%" nowrap="nowrap">
				<?php echo JHTML::_('grid.sort',   'Published', 'm.published', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="8%" nowrap="nowrap">
				<?php echo JHTML::_('grid.sort',   'Order by', 'm.ordering', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
				<?php if ($this->ordering) echo JHTML::_('grid.order',  $this->items ); ?>
			</th>
			<th width="10%">
				<?php echo JHTML::_('grid.sort',   'Access', 'groupname', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="20%" class="title">
				<?php echo JHTML::_('grid.sort',   'Type', 'm.type', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
			<th width="1%" nowrap="nowrap">
				<?php echo JHTML::_('grid.sort',   'Itemid', 'm.id', @$this->lists['order_Dir'], @$this->lists['order'] ); ?>
			</th>
		</tr>
	</thead>
	<tfoot>
		<tr>
			<td colspan="12">
				<?php echo $this->pagination->getListFooter(); ?>
			</td>
		</tr>
	</tfoot>
	<tbody>
	<?php
	$k = 0;
	$i = 0;
	$n = count( $this->items );
	$rows = &$this->items;
	foreach ($rows as $row) :
		$access 	= JHTML::_('grid.access',   $row, $i );
		$checked 	= JHTML::_('grid.checkedout',   $row, $i );
		$published 	= JHTML::_('grid.published', $row, $i );
		?>
		<tr class="<?php echo "row$k"; ?>">
			<td>
            	<!-- This is the # Column -->
				<?php echo $i + 1 + $this->pagination->limitstart;?>
			</td>
			<td>
            	<!-- This is the checkbox Column -->
				<?php echo $checked; ?>
			</td>
			<td nowrap="nowrap">
            	<!-- This is the menu item Column -->
				<?php if (  JTable::isCheckedOut($this->user->get('id'), $row->checked_out ) ) : ?>
				<?php echo $row->treename; ?>
				<?php else : ?>
				<span class="editlinktip hasTip" title="<?php echo JText::_( 'Edit Menu' );?>::<?php echo $row->treename; ?>">
				<a href="<?php echo JRoute::_( 'index.php?option=com_menus&menutype='.$row->menutype.'&task=edit&cid[]='.$row->id ); ?>"><?php echo $row->treename; ?></a></span>
				<?php endif; ?>
			</td>
			<td align="center">
				<?php if ( $row->home == 1 ) : ?>
				<img src="templates/khepri/images/menu/icon-16-default.png" alt="<?php echo JText::_( 'Default' ); ?>" />
				<?php else : ?>
				&nbsp;
				<?php endif; ?>
			</td>
			<td align="center">
				<?php echo $published;?>
			</td>
			<td class="order" nowrap="nowrap">
                	<?php
						$top_level_menuitem 	= ($row->parent == 0);
						$previous_parent_same	= ($row->parent == @$rows[$i-1]->parent);
						$next_parent_same		= ($row->parent == @$rows[$i+1]->parent);
						$only_child				= ($row->siblings == 1);
						$last_child				= ($row->siblings == $row->ordering);
						// The variables above and the if statement below were added so
						// that the component would correctly show the move up/down icons.
					?>
                    <?php if ((!$previous_parent_same and !$next_parent_same and !$only_child and !$top_level_menuitem)): ?>
                    
                    	<span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                        <span>&nbsp;</span>
                    
                    <?php elseif ((!$previous_parent_same and !$next_parent_same and !$only_child) and $top_level_menuitem and $last_child): ?>
                    
                    	<span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                        <span>&nbsp;</span>
                   
                   <?php elseif ($previous_parent_same and (!$next_parent_same and !$only_child) and $top_level_menuitem and $last_child): ?>
                    
                    	<span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                        <span>&nbsp;</span>
                    
                    <?php elseif ($row->siblings == 1): ?>
                    	
                        <span>&nbsp;</span>
                        <span>&nbsp;</span>
                    
                    <?php elseif (!($top_level_menuitem || $previous_parent_same)): ?>
  
                      	<?php if ($row->siblings && $row->ordering == 1): ?>
                        
                        	<span>&nbsp;</span>
	                    	<span><?php echo $this->pagination->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $this->ordering ); ?></span>
                            
    					<?php elseif ($row->siblings && ($row->siblings - $row->ordering)): ?>
                            
                            <span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                            <span><?php echo $this->pagination->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $this->ordering ); ?></span>
                            
						<?php elseif (!($row->siblings - $row->ordering)): ?>
                        
                        	<span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                        	<span>&nbsp;</span>
                        
                        <?php endif; ?>
                    
                  	 <?php elseif (!($top_level_menuitem || $next_parent_same)): ?>
  
                      	<?php if ($row->siblings && $row->ordering == 1): ?>
                        
                        	<span>&nbsp;</span>
	                    	<span><?php echo $this->pagination->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $this->ordering ); ?></span>
    					<?php elseif ($row->siblings && ($row->siblings - $row->ordering)): ?>
                            
                            <span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                            <span><?php echo $this->pagination->orderDownIcon( $i, $n, TRUE, 'orderdown', 'Move Down', $this->ordering ); ?></span>
                            
						<?php elseif (!($row->siblings - $row->ordering)): ?>
                        
                        	<span><?php echo $this->pagination->orderUpIcon( $i, TRUE, 'orderup', 'Move Up', $this->ordering ); ?></span>
                        	<span>&nbsp;</span>
                        
                        <?php endif; ?> 
                                       
                        	                
                    <?php else: ?>

                    	<span><?php echo $this->pagination->orderUpIcon( $i, ($top_level_menuitem || $previous_parent_same), 'orderup', 'Move Up', $this->ordering ); ?></span>
						<span><?php echo $this->pagination->orderDownIcon( $i, $n, ($top_level_menuitem || $next_parent_same), 'orderdown', 'Move Down', $this->ordering ); ?></span>
                    
                    <?php endif; ?>            
            
				<?php $disabled = $this->ordering ?  '' : 'disabled="disabled"'; ?>
				<input type="text" name="order[]" size="5" value="<?php echo $row->ordering; ?>" <?php echo $disabled ?> class="text_area" style="text-align: center" />
			</td>
			<td align="center">
				<?php echo $access;?>
			</td>
			<td>
				<span class="editlinktip" style="text-transform:capitalize"><?php echo ($row->type == 'component') ? $row->view : $row->type; ?></span>
			</td>
			<td align="center">
				<?php echo $row->id; ?>
			</td>
		</tr>
		<?php
		$k = 1 - $k;
		$i++;
		?>
	<?php endforeach; ?>
	</tbody>
	</table>

	<input type="hidden" name="option" value="com_menus" />
	<input type="hidden" name="menutype" value="<?php echo $this->menutype; ?>" />
	<input type="hidden" name="task" value="view" />
	<input type="hidden" name="boxchecked" value="0" />
	<input type="hidden" name="filter_order" value="<?php echo $this->lists['order']; ?>" />
	<input type="hidden" name="filter_order_Dir" value="<?php echo $this->lists['order_Dir']; ?>" />
	<?php echo JHTML::_( 'form.token' ); ?>
</form>