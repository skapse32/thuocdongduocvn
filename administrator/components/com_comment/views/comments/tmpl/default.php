<?php
defined('_JEXEC') or die('Restricted access');
 
?>
<form action="index.php" method="post" name="adminForm">
    <table class="adminlist">
        <thead>
            <tr>
                <th width="5">
                    <?php echo JText::_( 'ID' ); ?>
                </th>
                <th width="20">
                    <input type="checkbox" name="toggle" value="" onclick="checkAll(<?php echo count( $this->items ); ?>);" />
                </th>
                <th>
                    <?php echo JText::_( 'Tên người hỏi' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Địa chỉ' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Email' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Tiêu đề' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Nội dung' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Ngày tạo' ); ?>
                </th>
                <th>
                    <?php echo JText::_( 'Trạng thái' ); ?>
                </th>               
            </tr>
        </thead>
        <?php
        $k = 0;
        for ($i=0, $n=count( $this->items ); $i < $n; $i++)
        {
            $row =& $this->items[$i];
            $checked 	= JHTML::_('grid.id',   $i, $row->id );
            $link 		= JRoute::_( 'index.php?option=com_comment&controller=comment&task=edit&cid[]='.$row->id );
            ?>
        <tr class="<?php echo "row$k"; ?>">
            <td>
                <?php echo $row->id; ?>
            </td>
            <td>
                <?php echo $checked; ?>
            </td>
            <td>
                <a href="<?php echo $link; ?>"><?php echo $row->username; ?></a>
            </td>
            <td>
                <?php echo $row->address; ?>
            </td>
            <td>
                <?php echo $row->email; ?>
            </td>
            <td>
                <a href="<?php echo $link; ?>"><?php echo $row->title; ?></a>
            </td>
            <td>
                <?php echo $row->content; ?>
            </td>
            <td>
                <?php echo $row->created; ?>
            </td>
            <td>
                <?php
                if($row->del_flag){
                    echo("Published");
                }else{
                    echo("Unpublished");
                }
                ?>
            </td>            
        </tr>
        <?php
        $k = 1 - $k;
    }
    ?>
    
    <tfoot>
    <tr>
      <td colspan="9"><?php echo $this->pagination->getListFooter(); ?></td>
    </tr>
  </tfoot>
    
    </table>
    <input type="hidden" name="option" value="com_comment" /> 
    <input type="hidden" name="task" value="" />
    <input type="hidden" name="boxchecked" value="0" />
    <input type="hidden" name="controller" value="Comment" />
    <input type="hidden" name="v" value="<?php echo JRequest::getVar('v');?>" />
</form>
