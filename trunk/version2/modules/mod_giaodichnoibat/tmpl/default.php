<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$com = &JComponentHelper::getComponent($option);		
$params_c= new JParameter($com->params);	
$small_logo =$params_c->get('small_logo','');			
?>
<ul class="list3">
<?php foreach ($list as $item) : ?>
	<li class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
		<a href="<?php echo JRoute::_("index.php?option=com_raovat&view=raovat&layout=detail&id=".$item->id);?>">
			<?php if($item->image):?>
				<img src="<?php echo JURI::root().'/images/raovat/thumb/'.$item->image;?>" class="img2" />
            <?php else:?>
				<img src="<?php echo $small_logo;?>" class="img2" />
            <?php endif;?>
		</a>
		<a href="<?php echo JRoute::_("index.php?option=com_raovat&view=raovat&layout=detail&id=".$item->id);?>" class="mostread<?php echo $params->get('moduleclass_sfx'); ?>">
			<?php echo $item->title; ?></a>
	</li>
<?php endforeach; ?>
</ul>
