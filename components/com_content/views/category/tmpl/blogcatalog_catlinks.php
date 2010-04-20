<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div>
	<strong><?php echo JText::_( 'More Categories...' ); ?></strong>
</div>
<ul>
<?php foreach ($this->catlinks as $catlink) : ?>
	<li>
			<a class="blogsection" href="<?php echo JRoute::_('index.php?option=com_content&view=category&layout='.$this->layout.'&id='.$catlink->id.'&Itemid='.$this->itemId); ?>">
			<?php echo $this->escape($catlink->title); ?></a>
	</li>
<?php endforeach; ?>
</ul>
