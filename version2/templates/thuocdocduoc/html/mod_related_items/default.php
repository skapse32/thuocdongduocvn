<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>

<!--list news-->
<div id="related-items-hidden" style="display:none">
<h1 class="color5">
    BÀI VIẾT LIÊN QUAN:</h1>
<ul class="list4">
	<?php foreach ($list as $item) :	?>
	<li>
		<a href="<?php echo $item->route; ?>">
			<?php if ($showDate) echo $item->created . " - "; ?>
			<?php echo $item->title; ?></a>
	</li>
	<?php endforeach; ?>    
</ul>
</div>
<?php if(count($list)):?>
<script language="javascript">
jQuery('document').ready(function(){
	jQuery('#related-items').html(jQuery('#related-items-hidden').html());	
});
</script>
<?php endif;?>
<!--end list news-->