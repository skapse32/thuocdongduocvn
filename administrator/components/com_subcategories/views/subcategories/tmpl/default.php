<?php
/* SubCategories for Joomla 1.5 */

// No Direct Access
defined( '_JEXEC' ) or die( 'Restricted access' );
?>

<form action="index.php?option=<?php echo $this->option; ?>" method="post" id="adminForm" name="adminForm">

<div class="col width-25">
	<fieldset style="border: 0;"> 
    </fieldset>
</div>

<div class="col width-50">
	
    <div class="t">
        <div class="t">
            <div class="t"/>
            </div>
        </div>
    </div>
	<div class="m">
        <div width="100%" class="install-body state-<?php echo $this->stateColor; ?>">
            <?php echo $this->stateMessage; ?>
        </div>
	</div>
    <div class="b">
        <div class="b">
            <div class="b"/>
            </div>
        </div>
    </div>
    <br />
    <div class="t">
        <div class="t">
            <div class="t"/>
            </div>
        </div>
    </div>
   	<div class="m">
    	<fieldset style="border: 0;">
            <div id="cpanel" style="margin-right: 20px;">
                <?php HelperSubCategories_Helper::quickiconButton( $this->stateLink, $this->stateIcon, $this->stateAction, $this->stateTarget ); ?>
            </div>
            <div style="margin-left: 20px;">
	            <h1 style="text-indent: 50px;"><?php echo JText::_( 'WHEN NEW JOOMLA RELEASE' )?></h1>
                <ul type="none" style="text-indent: 50px;" >
					<li><strong><?php echo '1: ' . JText::_( 'UPDATE FIRST' )?></strong></li><br />
					<li><strong><?php echo '2: ' . JText::_( 'UPDATE SECOND' )?></strong></li><br />
                    <li><strong><?php echo '3: ' . JText::_( 'UPDATE THIRD' )?></strong></li>
                </ul>
            </div>
        </fieldset>
	</div>
	<div class="b">
        <div class="b">
            <div class="b"/>
            </div>
        </div>
    </div>

</div>

<div class="col width-25">
	<fieldset style="border: 0;"> 
	</fieldset>
</div>

<div class="clr"></div>

<input type="hidden" name="option" value="<?php echo $this->option; ?>" />
<input type="hidden" name="controller" value="<?php echo $this->controller; ?>" />
<input type="hidden" name="task" value="" />
<?php echo JHTML::_('form.token'); ?>
</form><br />

<?php
HelperSubCategories_Helper::quickCopyright();
?>