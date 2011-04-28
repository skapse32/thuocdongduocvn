<?php
	defined("_JEXEC") OR die("Cam vao");
	$templateUrl =JURI::root()."templates/".$mainframe->getTemplate();
?>
 <div class="mdl-cnt">
     <div class="title">
        <h2 style>
        <?php echo $this->item_canban->title;?>
        </h2>
        <img src="<?php echo $templateUrl;?>/images/news&amp;event_107.png">
    </div>
<div class="cnt">
	<div class="detail raovat_form form">
        <!--<div style="float:left; width:60%;">
            <img src="<?php echo $this->large_logo;//echo JURI::root().'images/raovat/'.$this->item_canban->image;?>" width="300"/>
        </div>
        -->
        <div style="width:40%; float:left; font-size:11px;"><!--Float:right-->
            <b>Giá:</b> <?php echo number_format($this->item_canban->price,'','',',').' '.$this->item_canban->currency;?>/<?php echo $this->item_canban->unit;?>
            <br>
            <b>Ngày đăng: </b><?php echo JHTML::_('date',$this->item_canban->created,'%d-%m-%Y');?><br />
            <b>Số lượng:</b> <?php echo $this->item_canban->amount;?> <?php echo $this->item_canban->unit;?><br>
            <b>Chất lượng: </b><?php echo $this->item_canban->quality;?><br>
            <?php if(!empty($this->item_canban->link)):?>
            <?php $uri = new JURI($this->item_canban->link);				
             ?>
            <b>Links: </b> <a href="<?php echo $this->item_canban->link;?>"><?php echo $uri->getHost();?></a> <br>
            <?php endif;?>
            <?php $persional_info = &JTable::getInstance('raovat_profile');
                 $persional_info->load($this->item_canban->user_id);
                if($persional_info->user_id == NULL )
                    {
                        $user =&JFactory::getUser($_GET[$this->item_canban->user_id]);
                    }
                    ?>
               <?php if(!$this->item_canban->type):?>
               <b> Người bán:</b>	
               <?php else:?>
               <b> Người mua:</b>	
               <?php endif;?>
                    <?php
                            if($persional_info->persional_name!="")
                            {
                                $display_username = $persional_info->persional_name;
                            }
                         else
                            {
								$display_username =$user->username;
                            }
    
                ?>
                <a href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&user_id='.$persional_info->user_id);?>"><?php echo $display_username;?></a>
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
				$user = JFactory::getUser($persional_info->user_id);
                echo $user->email;
            }
            $user = JFactory::getUser();           
            ?><br>            
            <b>Nơi rao:</b> <?php echo $this->item_canban->city;?><br>        
        </div>
        <?php if($user->id ==$persional_info->user_id && $this->item_canban->isedit==0):?><!--Display edit link when the post is that user's asset.-->
        <div style="float:right;">
			<a href="<?php echo JRoute::_("index.php?option=com_raovat&view=post&id={$this->item_canban->id}");?>" title="Bạn có thể sửa tin 1 lần duy nhất">Sửa bài</a>
        </div>
        <?php endif;?>
    	<div style="clear:both;"></div>
    	<br/>
        <div style='font-size:11pt' class='raovat-chitiet'><!--Mo ta chi tiet-->
        
        <?php echo $this->item_canban->desc;?>        
        </div><!--end mo ta chi tiet-->
		<br /><br />
        <hr />
        <div><!--comment-->
       <span style="font-size:14px; font-weight:bold;text-decoration:underline"> Trả lời</span>
        <br />
        	<!--Ds comment-->
            <?php 
				include(JPATH_COMPONENT.DS.'views'.DS.'raovat'.DS.'tmpl'.DS.'allcomment.php');
			?>

            <!--post comment-->
            <?php 
				$objU = JFactory::getUser();
				if($objU->id)
					include(JPATH_COMPONENT.DS.'views'.DS.'raovat'.DS.'tmpl'.DS.'comment.php');
				else
				{
            		$url=base64_encode(JRequest::getURI());
            		$url=JRoute::_("index.php?option=com_user&view=login&return=$url",false);
					echo "<center style='align:center'><a href='$url'>Đăng nhập để gửi trả lời</a></center>";
				}
			?>
        </div>
	</div>    
    </div>
    <img  class="img-rounded"src="<?php echo JURI::root().'templates/thuocdocduoc/images/news&event_73.png';?>" />
</div>





