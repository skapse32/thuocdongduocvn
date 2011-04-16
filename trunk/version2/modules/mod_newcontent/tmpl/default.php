<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<div id="moduel9_docnhieunhat">
    <div id="moduel9_docnhieunhat_title">
          <a style="text-transform:uppercase;"><?php echo JTEXT::_('Mới nhất');?></a>
   	</div>
 <?php $i=0;?>
<?php foreach ($list as $item) : ?>
<?php $i++;?>
<div id="moduel9_docnhieunhat_content_link" <?php echo $i%2==0?"class='link'":""?>>
		<a style="color:#1C6DA7" href="<?php echo $item->link; ?>" class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->text; ?></a>
</div>
<?php endforeach; ?>
</div>