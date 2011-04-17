<?php // no direct access
defined('_JEXEC') or die('Restricted access'); 
global $mainframe;
$templateUrl = JURI::root().'templates/'.$mainframe->getTemplate();
?>
<script language="javascript">
function setAsHomePage(i)

{	

	if (document.all) {

		i.style.behavior='url(#default#homepage)';

		i.setHomePage('http://thuocdongduoc.vn');

	}	

}
</script>

<div class="footer">
	<img src="<?php echo $templateUrl;?>/images/news&event_101.png" class="fl-right" />
	<img src="<?php echo $templateUrl;?>/images/news&event_97.png" />
	<div>
		<ul>
			<li class="fl-right reset-bg"><a href="#top">
				<img src="<?php echo $templateUrl;?>/images/news&event_106.png" /></a></li>
			<li class="reset-bg"><a href="http://thuocdongduoc.vn" onclick="javascript:setAsHomePage(this);return false;">
				<img src="<?php echo $templateUrl;?>/images/news&event_103.png" /></a></li>
			<li><a href="<?php echo JRoute::_("index.php?option=com_contact&view=contact&id=1&Itemid=59");?>">Email cho chúng tôi</a></li>
			<li><a href="<?php echo JRoute::_("index.php?option=com_contact&view=contact&id=2&Itemid=60");?>">Liên hệ quảng cáo</a></li>
			<li class="reset-bg"><strong><?php echo $params->get('hotline','');?></strong></li>
		</ul>
		<p>
			<?php echo $params->get('footer_info','');?>
			<!--<span class="bold">©</span> Copyright 2009-2010 <span class="bold">thuocdongduoc.vn</span>,
			All right reserved
			<br />
			Các thông tin về thuốc trên thuocdongduoc.vn chỉ mang tính chất tham khảo - Khi
			dùng thuốc cần tuyệt đối tuân theo theo hướng dẫn của Bác sĩ<br />
			Chúng tôi không chịu trách nhiệm về bất cứ hậu quả nào xảy ra do tự ý dùng thuốc
			dựa theo các thông tin trên thuocdongduoc.vn</p>-->
	</div>
</div>