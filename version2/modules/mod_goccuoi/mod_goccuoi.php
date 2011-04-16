<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$doc = &JFactory::getDocument();
$doc->addScript(JURI::root().'modules/mod_congbao/assets/jquery.vticker-min.js');
require_once dirname(__FILE__).DS.'helper.php';
$list =modGocCuoiHelper::getList($params);
//echo JUtility::dump($list);
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
$i=0;
 ?> 
 
 <div id="moduel_goccuoi">
    <div id="moduel_goccuoi_title">
        <a>GÓC CƯỜI</a>
    </div>
    <div id="moduel_goccuoi_content">
		<?php foreach($list as $item):?>	
		
		<?php
		if($i==0)
			$i=1;
		else
			$i=0;	
	$results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));
		?>	
        <div id="moduel_goccuoi_content1" <?php echo !$i?"style='background-color: rgb(231, 231, 231);'":"";?>>
        <?php if(!empty($item->imgLink)):?>
            <div id="moduel_goccuoi_content1_pic">				
                <a href="<?php echo $item->link;?>"><img width="62" height="55" src="<?php echo $item->imgLink;?>" /></a>                
            </div>
            <p>
        <?php else:?>
            <p style="padding-left:5px;">
        <?php endif;?>
                <a href="<?php echo $item->link;?>"><?php echo $item->title;?></a>
            </p>
            <p>
                <?php echo strip_tags($item->introtext);?>
            </p>
        </div>
        <?php endforeach;?>        
    </div>
</div>