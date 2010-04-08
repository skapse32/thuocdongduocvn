<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
$types = array('all'=>'Tất cả','any'=>'Bất kỳ từ khóa nào','exact'=>'Chính xác cụm từ khóa');
?>
<form action="index.php" method="post">
<div class="form">
    <label>
        Từ khóa</label>
    <input type="text" class="input" name="searchword" value="<?php echo JRequest::getVar('searchword');?>">
    <label>
        Loại tìm kiếm</label>
    <select name="searchphrase">
        <?php foreach($types as $val=>$title):?>
			<option value="<?php echo $val;?>" <?php echo $val==JRequest::getVar('searchphrase')?"selected":'';?>><?php echo $title;?></option>
        <?php endforeach;?>
    </select>
    <input type="image" src="templates/thuocdocduoc/images/news&amp;event_52.png">
</div>
	<input type="hidden" name="task"   value="search" />
	<input type="hidden" name="areas[]"   value="content" />
	<input type="hidden" name="option" value="com_search" />
	<input type="hidden" name="limit" value="20" />
<!--	<input type="hidden" name="Itemid" value=<?php echo $mitemid; ?> />-->
</form>