<?php
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$doc = &JFactory::getDocument();
$doc->addScript(JURI::root().'modules/mod_congbao/assets/jquery.vticker-min.js');

require_once dirname(__FILE__).DS.'helper.php';
$cat = JTable::getInstance('category');
$cat->load($params->get('catid',''));
$list =mod139Helper::getList($params);
//echo JUtility::dump($list);
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
JHTML::_('behavior.tooltip');

 ?> 

<div id="moduel_goc13">
    <div id="moduel_goc13_bar">
    </div>
    <div id="moduel_goc13_content">
        <div id="moduel_goc13_content_title">
            <a>GÓC 13/09</a>
        </div>
        <div id="moduel_goc13_content1">
            <ul>
				<?php foreach($list as $item):?>
				<?php $results = $dispatcher->trigger('onPrepareContent', array (& $item, & $item->params, 0));?>	
                <li class="hasTip" title="<?php echo $item->title;?>::<?php echo strip_tags($item->introtext);?>"><a href="<?php echo $item->link;?>">
                    <img width="47" height='46' src="<?php echo $item->imgLink;?>" /></a> </li>                
                <?php endforeach;?>
            </ul>
        </div>
        <div class="clear">
        </div>
        <div id="moduel_tinkhuyenmai1_content11">
            <a href="<?php echo ContentHelperRoute::getCategoryRoute($cat->id.":".$cat->alias,$cat->sectionid);?>">Xem tất cả</a></div>
    </div>
</div>