<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$doc = &JFactory::getDocument();
$doc->addScript(JURI::root().'modules/mod_congbao/assets/jquery.vticker-min.js');
require_once dirname(__FILE__).DS.'helper.php';
$list =modCongbaoHelper::getList($params);
 ?>
 <div id="modulel_congbao">
    <div id="modulel_congbao_title">
        <div id="modulel_congbao_title_border">
        </div>
        <div id="modulel_congbao_title_content">
            <a>CÔNG BÁO</a>
        </div>
    </div>
    <div id="modulel_congbao_content" class="scroll-congbao" >
        <ul>
			<?php foreach($list as $item):?>
			<li><a href="<?php echo $item->link;?>"><span><em>(<?php echo JHTML::_("date",$item->created,'%d/%m/%Y');?>)</em></span> - <?php echo $item->text;?></a> </li>
			<?php endforeach;?>                 
        </ul>
    </div>
</div>
<script language='javascript'>
jQuery('.scroll-congbao').vTicker({
	speed: 500,
   pause: 3000,
   showItems: <?php echo $params->get('scrollnumber',3);?>,
   animation: 'fade',
   mousePause: true,
   height: 0,
   direction: 'up'
});

</script>