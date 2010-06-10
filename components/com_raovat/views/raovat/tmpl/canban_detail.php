<?php
	defined("_JEXEC") OR die("Cam vao");
	$templateUrl =JURI::root()."templates/".$mainframe->getTemplate();
?>
 <div class="mdl-cnt">
     <div class="title">
        <h2>
        <?php echo $this->item_canban->title;?>
        </h2>
    </div>
<div class="cnt">
	<div class="detail raovat_form form">
        <div style="float:left; width:60%;">
            <img src="<?php echo JURI::root().'images/raovat/'.$this->item_canban->image;?>" width="300"/>
        </div>
        <div style="width:40%; float:right; font-size:11px;">
            <b>Giá:</b> <?php echo number_format($this->item_canban->price,'','',',').' '.$this->item_canban->currency;?>/<?php echo $this->item_canban->unit;?>
            <br>
            <b>Ngày đăng: </b><?php echo JHTML::_('date',$this->item_canban->created,'%d-%m-%Y');?><br />
            <b>Số lượng:</b> <?php echo $this->item_canban->amount;?> <?php echo $this->item_canban->unit;?><br>
            <b>Chất lượng: </b><?php echo $this->item_canban->quality;?><br>
            <b>Links: </b><?php echo $this->item_canban->links;?><br>
            <?php $persional_info = &JTable::getInstance('raovat_profile');
                 $persional_info->load($this->item_canban->user_id);
                if($persional_info->user_id == NULL )
                    {
                        $user =&JFactory::getUser($_GET[$this->item_canban->user_id]);
                    }
                    ?>
               <b> Người bán:</b>	
                    <?php
                            if($persional_info->persional_name!="")
                            {
                                echo $persional_info->persional_name;
                            }
                         else
                            {
                            echo $user->username;
                            }
    
                ?>
                
            <br>
           <b> Điện thoại: </b><?php echo $persional_info->persional_tel; ?><br>
           <b> Email:</b> 
            <?php 
            if($persional_info->persional_email !="") 
            {
                echo $persional_info->persional_email;
            }
            else
            {
                echo $user->email;
            }
            ?><br>
            <b>Nơi rao:</b> <?php echo $this->item_canban->city;?><br>        
        </div>
    	<div style="clear:both;"></div>
        <div><!--Mo ta chi tiet-->
        
        <?php echo $this->item_canban->desc;?>        
        </div><!--end mo ta chi tiet-->
		<br /><br />
        <hr />
        <div><!--comment-->
       <span style="font-size:14px; font-weight:bold;"> Trả lời</span>
        <br />
        	<!--Ds comment-->
            <?php 
				include(JPATH_COMPONENT.DS.'views'.DS.'raovat'.DS.'tmpl'.DS.'allcomment.php');
			?>

            <!--post comment-->
            <?php 
				include(JPATH_COMPONENT.DS.'views'.DS.'raovat'.DS.'tmpl'.DS.'comment.php');
			?>
        </div>
	</div>    
    </div>
    <img  class="img-rounded"src="<?php echo JURI::root().'templates/thuocdocduoc/images/news&event_73.png';?>" />
</div>





