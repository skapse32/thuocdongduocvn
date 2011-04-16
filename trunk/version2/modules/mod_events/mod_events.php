<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
require_once dirname(__FILE__).DS.'helper.php';
$list=modEventsHelper::getList($params);
 ?>
<div id="modulel4_border">
    <p>
        LỊCH SỰ KIỆN</p>
</div>
<div id="modulel4_content">
    <ul class="scroll-flash-news">
		<marquee behavior="scroll" direction="left" scrollamount="3" SCROLLDELAY="5" onmouseover='this.stop()' onmouseout='this.start()'>
		<?php foreach($list as $item):?>
		<li><a href="<?php echo $item->link;?>"><?php echo $item->text;?></a> </li>
		<?php endforeach;?>        
        </li>
        </marquee>
    </ul>
</div>

