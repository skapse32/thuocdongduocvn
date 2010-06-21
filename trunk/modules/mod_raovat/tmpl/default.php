<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$layout = JRequest::getVar('layout');
$city =JRequest::getVar("city",'');

if($layout == '' or $layout =='detail')
{
?>
 				<div class="mdl-a">
                    <div>
                        <div>
                            <div>
                                <h3><a style="color:#85193C" href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&layout=canban');?>"><?php echo JText::_('CANBAN');?></a></h3>
                                <ul class="list1">
                                <?php 
									foreach($category_rv as $category_rv)
									{
										$links = 'index.php?option=com_raovat&view=raovat&layout=canban&category='.$category_rv->id.'&city='.$city;
										$link_canban = JRoute::_($links);
										echo '<li><a href="'.$link_canban.'">'.$category_rv->title.'</a></li>';
									}
								?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

				<div class="mdl-a">
                    <div>
                        <div>
                            <div>
                                <h3><a style="color:#85193C" href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&layout=canmua');?>"><?php echo JText::_('CANMUA');?></a></h3>
                                <ul class="list1">
                                <?php 
									
									foreach($category_rv1 as $category_rv1)
									{
										$links = 'index.php?option=com_raovat&view=raovat&layout=canmua&category='.$category_rv1->id.'&city='.$city;
										$link_canmua = JRoute::_($links);
										echo '<li><a href="'.$link_canmua.'">'.$category_rv1->title.'</a></li>';
									}
								?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
<?php
}
elseif($layout =='canban')
{
?>
<div class="mdl-a">
                    <div>
                        <div>
                            <div>
                                <h3><a style="color:#85193C" href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&layout=canban');?>"><?php echo JText::_('CANBAN');?></a></h3>
                                <ul class="list1">
                                <?php 
									foreach($category_rv as $category_rv)
									{
										$links = 'index.php?option=com_raovat&view=raovat&layout=canban&category='.$category_rv->id.'&city='.$city;
										$link_canban = JRoute::_($links);
										echo '<li><a href="'.$link_canban.'">'.$category_rv->title.'</a></li>';
									}
								?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
<?php
}
elseif($layout =='canmua')
{
?>
				<div class="mdl-a">
                    <div>
                        <div>
                            <div>
                                <h3><a style="color:#85193C" href="<?php echo JRoute::_('index.php?option=com_raovat&view=raovat&layout=canmua');?>"><?php echo JText::_('CANMUA');?></a></h3>
                                <ul class="list1">
                                <?php 
									foreach($category_rv as $category_rv)
									{
										$links = 'index.php?option=com_raovat&view=raovat&layout=canmua&category='.$category_rv->id.'&city='.$city;
										$link_canmua = JRoute::_($links);
										echo '<li><a href="'.$link_canmua.'">'.$category_rv->title.'</a></li>';
									}
								?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
<?php
}
?>