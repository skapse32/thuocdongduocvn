<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$image2 = modRandomImageHelper::getRandomImage($params, $images);

?>
<br/>
<div class="img">
<?php if ($link) : ?>
<a href="<?php echo $link; ?>" target="_self">
<?php endif; ?>
	<?php echo JHTML::_('image', $image->folder.'/'.$image->name, $image->name, array('width' => $image->width)); ?>
<?php if ($link) : ?>
</a>
<a href="<?php echo $link; ?>" target="_self">
<?php endif; ?>
	<?php echo JHTML::_('image', $image2->folder.'/'.$image2->name, $image2->name, array('width' => $image2->width)); ?>
<?php if ($link) : ?>
</a>
<?php endif; ?>
</div>
