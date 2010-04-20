<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<ul class="mostread<?php echo $params->get('moduleclass_sfx'); ?> list1">
<?php foreach ($cats as $item) : ?>
	<li class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
		<a href="<?php echo $item->link; ?>" class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->title; ?></a>
	</li>
<?php endforeach; ?>
</ul>