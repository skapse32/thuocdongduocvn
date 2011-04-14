<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$cparams =& JComponentHelper::getParams('com_media');
?>
<?php if ($this->params->get('show_page_title', 1)) : ?>
<div class="componentheading<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
	<?php echo $this->escape($this->params->get('page_title')); ?>
</div>
<?php endif; ?>
<table width="100%" cellpadding="0" cellspacing="0" border="0" align="center" class="contentpane<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
<tr>
	<td width="60%" valign="top" class="contentdescription<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>" colspan="2">
	<?php if ($this->params->get('show_description_image', 0) && $this->category->image) : ?>
		<img style="margin-bottom: 12px;" src="<?php echo $this->baseurl . '/' . $cparams->get('image_path') . '/'. $this->category->image;?>" align="<?php echo $this->category->image_position;?>" hspace="6" alt="<?php echo $this->category->image;?>" />
	<?php endif; ?>
	<?php if ($this->params->get('show_description', 1) && $this->category->description) : ?>
		<?php echo $this->category->description; ?>
	<?php endif; ?>
	</td>
</tr>
<?php if ($this->params->get('show_subcategories', 0)) : ?>
<?php if ($this->params->get('num_leading_categories')) : ?>
<tr>
	<td valign="top">
	<?php for ($i = 0; $i < $this->params->get('num_leading_categories'); $i++) : ?>
		<?php if ($i >= $this->sub_total) : break; endif; ?>
		<div>
		<?php
			$this->cat =& $this->getCat($i, $this->params);
			echo $this->loadTemplate('cat');
		?>
		</div>
	<?php endfor; ?>
	</td>
</tr>
<?php else : $i = 0; endif; ?>

<?php
$startIntroArticles = $this->params->get('num_leading_categories');
$numIntroArticles = $startIntroArticles + $this->params->get('num_intro_categories');
if (($numIntroArticles != $startIntroArticles) && ($i < $this->sub_total)) : ?>
<tr>
	<td valign="top">
		<table width="100%"  cellpadding="0" cellspacing="0">
		<tr>
		<?php
			$divider = '';
			if ($this->params->def('multi_column_order_categories', 0)) : // order across, like front page
				for ($z = 0; $z < $this->params->def('num_columns_categories', 2); $z ++) :
					if ($z > 0) : $divider = " column_separator"; endif; ?>
					<?php
					$rows = (int) ($this->params->get('num_intro_categories', 4) / $this->params->get('num_columns_categories'));
					$cols = ($this->params->get('num_intro_categories', 4) % $this->params->get('num_columns_categories'));
					?>
					<td valign="top"
						width="<?php echo intval(100 / $this->params->get('num_columns_categories')) ?>%"
						class="article_column<?php echo $divider ?>">
						<?php
						$loop = (($z < $cols)?1:0) + $rows;

						for ($y = 0; $y < $loop; $y ++) :
							$target = $i + ($y * $this->params->get('num_columns_categories')) + $z;
							if ($target < $this->sub_total && $target < ($numIntroArticles)) :
								$this->cat =& $this->getCat($target, $this->params);
								echo $this->loadTemplate('cat');
							endif;
						endfor;
						?></td>
				<?php endfor; 
						$i = $i + $this->params->get('num_intro_categories') ; 
			else : // otherwise, order down, same as before (default behaviour)
				for ($z = 0; $z < $this->params->get('num_columns_categories'); $z ++) :
					if ($z > 0) : $divider = " column_separator"; endif; ?>
					<td valign="top" width="<?php echo intval(100 / $this->params->get('num_columns_categories')) ?>%" class="article_column<?php echo $divider ?>">
					<?php for ($y = 0; $y < ($this->params->get('num_intro_categories') / $this->params->get('num_columns_categories')); $y ++) :
					if ($i < $this->sub_total && $i < ($numIntroArticles)) :
						$this->cat =& $this->getCat($i, $this->params);
						echo $this->loadTemplate('cat');
						$i ++;
					endif;
				endfor; ?>
				</td>
		<?php endfor; 
		endif; ?> 
		</tr>
		</table>
	</td>
</tr>
<?php endif; ?>

<?php if ($this->params->get('num_links_categories') && ($i < $this->sub_total)) : ?>
<tr>
	<td valign="top">
		<div class="blog_more<?php echo $this->escape($this->params->get('pageclass_sfx')); ?>">
			<?php
				$this->catlinks = array_splice($this->categories, $i);
				echo $this->loadTemplate('catlinks');
			?>
		</div>
	</td>
</tr>
<?php endif; ?>
<?php endif; ?>
<tr>
	<td>
    <?php if ($this->params->get('show_articles', 1)) : ?>
    <?php if (!$this->params->get('show_subcategories', 0)) { ?> <br /> <?php } ?>
	<?php	$this->items =& $this->getItems();
		echo $this->loadTemplate('items');
	endif; ?>

	<?php if ($this->access->canEdit || $this->access->canEditOwn) :
			echo JHTML::_('icon.create', $this->category  , $this->params, $this->access);
	endif; ?>
	</td>
</tr>
</table>
