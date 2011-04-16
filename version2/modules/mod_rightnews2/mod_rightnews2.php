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

$list1 =modRightNews2Helper::getList($params);
$params->set('catid',$catid2->id);
$list2 =modRightNews2Helper::getList($params);

 ?> 
 <div id="moduel_tinkhuyenmai">
    <div id="moduel_tinkhuyenmai1">
        <div id="moduel_tinkhuyenmai1_title">
            <a href="javascript:void()"><?php echo $catid1->title;?></a>
        </div>
        <div id="moduel_tinkhuyenmai1_content">
            <div id="moduel_tinkhuyenmai1_content1">
                <ul>
                   <?php foreach($list1 as $item):?>
                   <li><a href="<?php echo $item->link;?>"><?php echo $item->text;?></a></li>
                   <?php endforeach;?>
                </ul>
            </div>
            <div class="clear">
            </div>
            <div id="moduel_tinkhuyenmai1_content11">
                <a href="<?php echo ContentHelperRoute::getCategoryRoute($catid1->id.":".$catid1->alias,$catid1->sectionid);?>">Xem tất cả</a></div>
        </div>
    </div>
    <div id="moduel_tinkhuyenmai1" style="margin-left: 5px">
        <div id="moduel_tinkhuyenmai1_title">
            <a href="javascript:void()"><?php echo $catid2->title;?></a>
        </div>
        <div id="moduel_tinkhuyenmai1_content">
            <div id="moduel_tinkhuyenmai1_content1">
                <ul>
                   <?php foreach($list2 as $item):?>
                   <li><a href="<?php echo $item->link;?>"><?php echo $item->text;?></a></li>
                   <?php endforeach;?>
                </ul>
            </div>
            <div class="clear">
            </div>
            <div id="moduel_tinkhuyenmai1_content11">
                <a href="<?php echo ContentHelperRoute::getCategoryRoute($catid2->id.":".$catid2->alias,$catid2->sectionid);?>">Xem tất cả</a></div>
        </div>
    </div>
</div>