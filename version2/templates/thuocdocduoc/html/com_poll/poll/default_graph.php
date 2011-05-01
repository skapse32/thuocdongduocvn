<?php // no direct access
defined('_JEXEC') or die('Restricted access'); ?>
<br />
<table class="pollstableborder" cellspacing="0" cellpadding="0" border="0">
<tbody>
<?php foreach($this->votes as $vote) : ?>
	<tr class="sectiontableentry<?php echo $vote->odd; ?>">
		<td width="100%" colspan="3">
			+ <?php echo $vote->text; ?>
		</td>
	</tr>
	<tr class="sectiontableentry<?php echo $vote->odd; ?>">
		<td align="right" width="25">
			<strong><?php echo $this->escape($vote->hits); ?></strong>&nbsp;
		</td>
		<td width="30" >
			<?php echo $this->escape($vote->percent); ?>%
		</td>
		<td width="400" >
			<div class="<?php echo $vote->class; ?>" style="height:<?php echo $vote->barheight; ?>px;width:<?php echo $vote->percent; ?>%"></div>
		</td>
	</tr>
	<tr><td colspan="3">&nbsp;</td></tr>
<?php endforeach; ?>
</tbody>
</table>
<br />
<table cellspacing="0" cellpadding="0" border="0" class="time">
<tbody>
	<tr>
		<td class="smalldark">
			<?php echo JText::_( 'Number of Voters' ); ?>&nbsp;&nbsp;
		</td>
		<td class="smalldark">
			&nbsp;:&nbsp;
			<?php if(isset($this->votes[0])) echo $this->votes[0]->voters; ?>&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
	<tr>
		<td class="smalldark">
			<?php echo JText::_( 'First Vote' ); ?>
		</td>
		<td class="smalldark">
			&nbsp;:&nbsp;
			<?php echo $this->escape($this->first_vote); ?>
		</td>
	</tr>
	<tr>
		<td class="smalldark">
			<?php echo JText::_( 'Last Vote' ); ?>
		</td>
		<td class="smalldark">
			&nbsp;:&nbsp;
			<?php echo $this->escape($this->last_vote); ?>
		</td>
	</tr>
</tbody>
</table>
