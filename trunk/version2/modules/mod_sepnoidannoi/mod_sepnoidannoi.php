<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$doc = &JFactory::getDocument();
$doc->addScript(JURI::root().'modules/mod_congbao/assets/jquery.vticker-min.js');
require_once dirname(__FILE__).DS.'helper.php';
$catid1 = JTable::getInstance('category');
$catid2 = clone($catid1);

$catid1->load($params->get('catid1',''));
$catid2->load($params->get('catid2',''));
$params->set('catid',$catid1->id);

$sepnoi =modSepNoiDanNoiHelper::getList($params);
$params->set('catid',$catid2->id);
$dannoi =modSepNoiDanNoiHelper::getList($params);

 ?> 
 <div id="moduel_sepnoi">
<div id="moduel_sepnoi_title">
	<?php if($catid1->id):?>
    <div id="moduel_sepnoi_title_sepnoi">
        <a href="javascript:void()" style="text-tranform:uppercase"><?php echo $catid1->title;?></a>
    </div>
    <?php endif;?>
    <?php if($catid2->id):?>
    <div id="moduel_sepnoi_title_dannoi">
        <a href="javascript:void()"><?php echo $catid2->title;?></a>
    </div>
    <?php endif;?>
</div>
<div id="moduel_sepnoi_content">
    <div id="moduel_sepnoi_content_col">
        <ul>
			<?php foreach($sepnoi as $item):?>
            <li><a href="<?php echo $item->link;?>"><?php echo $item->text;?></a>
                <br />
                <p>
                    <?php echo strip_tags($item->introtext);?></p>
            </li>
            <?php endforeach;?>            
        </ul>
    </div>
    <div id="moduel_sepnoi_content_col1">
        <ul>
            <?php foreach($dannoi as $item):?>
            <li><a href="<?php echo $item->link;?>"><?php echo $item->text;?></a>
                <br />
                <p>
                    <?php echo strip_tags($item->introtext);?></p>
            </li>
            <?php endforeach;?>
        </ul>
    </div>
</div>
</div>
