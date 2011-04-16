<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$doc = &JFactory::getDocument();
$doc->addScript(JURI::root().'modules/mod_congbao/assets/jquery.vticker-min.js');

require_once dirname(__FILE__).DS.'helper.php';
$cat = JTable::getInstance('category');
$cat->load($params->get('catid',''));
$list =modRaovatHelper::getList($params);
//echo JUtility::dump($list);

 ?> 
<div id="moduel_raovat">
    <div id="moduel_raovat_bar">
    </div>
    <div id="moduel_raovat_content">
        <div id="moduel_raovat_content_title">
          <a> <?php echo $cat->title;?></a>
        </div>
        <div id="moduel_tinkhuyenmai1_content1" style="min-height:170px">
            <ul>
				<?php foreach($list as $item):?>
					<li><a href="<?php echo $item->link;?>"><?php echo $item->title;?></a></li>
				<?php endforeach;?>                
            </ul>
        </div>
        <div class="clear">
        </div>
        <div id="moduel_tinkhuyenmai1_content11">
            <a href="<?php echo ContentHelperRoute::getCategoryRoute($cat->id.":".$cat->alias,$cat->sectionid);?>">Xem tất cả</a></div>
    </div>
</div>