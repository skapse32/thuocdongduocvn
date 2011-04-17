<?php defined('_JEXEC') or die('Restricted access'); 
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
$dispatcher	=& JDispatcher::getInstance();
JPluginHelper::importPlugin('content');
?>


<!--mdl-3-->
<div class="mdl-cnt">
    <div class="title">
        <h2>
            Kết quả tìm kiếm</h2>
        <img src="<?php echo $templateUrl;?>/images/news&event_107.png" />
    </div>
    <div class="cnt">
		<div id="cse" style="width: 100%;">Loading</div>
			<script src="//www.google.com/jsapi" type="text/javascript"></script>
			<script type="text/javascript"> 
			  google.load('search', '1', {language : 'vi'});
			  google.setOnLoadCallback(function() {
				var customSearchControl = new google.search.CustomSearchControl('016946892290065192097:rx_ut3g3uha');
				customSearchControl.setResultSetSize(google.search.Search.FILTERED_CSE_RESULTSET);
				customSearchControl.draw('cse');
				jQuery('#cse').find('input[name=search]').val('<?php echo $this->searchword;?>');
				jQuery('#cse').find('input[name=search]').click();
				jQuery('#cse').find('input.gsc-search-button').click();
				
			  }, true);
			</script>
			<link rel="stylesheet" href="//www.google.com/cse/style/look/default.css" type="text/css" />
    </div>
    <img src="<?php echo $templateUrl;?>/images/news&event_73.png" class="img-rounded" />
</div>
<script language="javascript">
</script>
<!--end-mdl-3-->
