<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$types = array('all'=>'Tất cả','any'=>'Bất kỳ từ khóa nào','exact'=>'Chính xác cụm từ khóa');
$plgSearchContent = &JPluginHelper::getPlugin('search','content_extended');
$plgParams = new JParameter($plgSearchContent->params);
$sections = $plgParams->get('search_sections');
$sections = array_unique(explode(',',$sections));
$db = &JFactory::getDBO();
$db->setQuery("SELECT id,title FROM #__sections WHERE id IN (".implode(',',$sections).")");
$list = $db->loadObjectList();
$objGoogle = new stdClass();
$objGoogle->id ='google';
$objGoogle->title ='Google';
$list[] = $objGoogle;
$selectedsecid = JRequest::getVar('sectionid');
if(!isset($selectedsecid))
	$selectedsecid = 'google';
//var_dump($list);
?>
<div>
<div>
<div>
	<h3 >Tìm kiếm</h3>
<div class="form" style="padding-bottom:12px;">
<form action="index.php" method="post" id="cse-search-box">
    <label>
        Từ khóa</label>
    <input type="text" class="input" name="searchword" value="<?php echo JRequest::getVar('searchword');?>">
    <label>
        Loại tìm kiếm</label>
    <select name="sectionid" style="margin-bottom:15px;" id="select_sectionid">
		<option value="<?php echo implode(',',$sections);?>">Tất cả</option>
        <?php foreach($list as $item):?>			
			<option value="<?php echo $item->id;?>" <?php echo $item->id==$selectedsecid?"selected":'';?>><?php echo ucfirst($item->title);?></option>
        <?php endforeach;?>
    </select>
    <input type="image" src="templates/thuocdocduoc/images/news&amp;event_52.png">
    	<input type="hidden" name="task"   value="search" />
    <input type="hidden" name="searchphrase" value="exact"/>
	<input type="hidden" name="areas[]"   value="content" />
	<input type="hidden" name="option" value="com_search" />
	<input type="hidden" name="limit" value="20" />
	<input type="hidden" name="cx" value="partner-pub-6986041461827618:8269881805" />
    <input type="hidden" name="ie" value="UTF-8" />
    <input type="hidden" name="sa" value="Search" />
<!--	<input type="hidden" name="Itemid" value=<?php echo $mitemid; ?> />-->
</form>
</div>

</div>
</div>
</div>