<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<?php
	if(JRequest::getVar('view') != "frontpage" ):
?>
<div id="moduel9_docnhieunhat">
    <div id="moduel9_docnhieunhat_title">
          <a style="text-transform:uppercase;"><?php echo JTEXT::_('Phản hồi nhiều nhất');?></a>
   	</div>
<?php foreach ($list as $item) : ?>
<?php
$link = JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug, $item->sectionid))
?>
<div id="moduel9_docnhieunhat_content_link">
		<a  href="<?php echo $link; ?>">
			<?php echo $item->title; ?></a>
</div>
<?php endforeach; ?>
</div>
<?php endif;?>