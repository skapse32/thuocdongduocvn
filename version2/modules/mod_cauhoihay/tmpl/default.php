<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ul class="list3">
<?php foreach ($list as $item) :  ?>
	<li style="min-height:18px">
		<a href="<?php echo JRoute::_("index.php?option=com_comment&view=answer&Itemid=36#comment".$item->id); ?>">
			<?php echo $item->title; ?></a>
	</li>
<?php endforeach; ?>
</ul>
<?php if(count($list)>=5):?>
<a href="<?php echo JRoute::_("index.php?option=com_comment&view=answer&Itemid=36"); ?>" class="view-all-1">Xem tất cả</a>
<?php endif;?>