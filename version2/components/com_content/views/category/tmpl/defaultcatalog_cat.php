<?php // no direct access
defined('_JEXEC') or die('Restricted access');
$cparams =& JComponentHelper::getParams('com_media');
?>
<?php if ($this->cat->published == 0) : ?>
<div class="system-unpublished">
<?php endif; ?>

<?php if ($this->cat->params->get('show_category_title')) : ?>
<table class="contentpaneopen<?php echo $this->escape($this->cat->params->get( 'pageclass_sfx' )); ?>">
<tr>
	<?php if ($this->cat->params->get('show_category_title')) : ?>
	<td class="contentheading<?php echo $this->escape($this->cat->params->get( 'pageclass_sfx' )); ?>" width="100%">
   		<?php if ($this->cat->params->get('show_cat_num_articles') && $this->cat->params->get('show_cat_num_position') == 'left') : ?>
        <span class="small">
            ( <?php if ($this->cat->numitems==1) {
            echo $this->cat->numitems ." ". JText::_( 'item' );}
            else {
            echo $this->cat->numitems ." ". JText::_( 'items' );} ?> )
        </span>
            &nbsp;
        <?php endif; ?>
		<?php if ($this->cat->params->get('show_category_link') && $this->cat->link != '') : ?>
		<a href="<?php echo $this->cat->link; ?>" class="contentpagetitle<?php echo $this->escape($this->cat->params->get( 'pageclass_sfx' )); ?>">
			<?php echo $this->escape($this->cat->title); ?></a>
		<?php else : ?>
			<?php echo $this->escape($this->cat->title); ?>
		<?php endif; ?>
		<?php if ($this->cat->params->get('show_cat_num_articles') && $this->cat->params->get('show_cat_num_position') == 'right') : ?>
            &nbsp;
        <span class="small">
            ( <?php if ($this->cat->numitems==1) {
            echo $this->cat->numitems ." ". JText::_( 'item' );}
            else {
            echo $this->cat->numitems ." ". JText::_( 'items' );} ?> )
        </span>
        <?php endif; ?>
	</td>
	<?php endif; ?>
</tr>
</table>
<?php endif; ?>
<?php  if (!$this->cat->params->get('show_intro')) :
	echo $this->cat->event->afterDisplayTitle;
endif; ?>
<?php echo $this->cat->event->beforeDisplayContent; ?>
<table class="contentpaneopen<?php echo $this->escape($this->cat->params->get( 'pageclass_sfx' )); ?>">
<?php if (($this->cat->params->get('show_section') && $this->cat->sectionid) || ($this->cat->params->get('show_category') && $this->cat->catid)) : ?>
<tr>
	<td>
		<?php if ($this->cat->params->get('show_section') && $this->cat->sectionid && isset($this->cat->section)) : ?>
		<span>
			<?php if ($this->cat->params->get('link_section')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getSectionRoute($this->cat->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->escape($this->cat->section); ?>
			<?php if ($this->cat->params->get('link_section')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
				<?php if ($this->cat->params->get('show_category')) : ?>
				<?php echo ' - '; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>
		<?php if ($this->cat->params->get('show_category') && $this->cat->catid) : ?>
		<span>
			<?php if ($this->cat->params->get('link_category')) : ?>
				<?php echo '<a href="'.JRoute::_(ContentHelperRoute::getCategoryRoute($this->cat->catslug, $this->cat->sectionid)).'">'; ?>
			<?php endif; ?>
			<?php echo $this->escape($this->cat->category); ?>
			<?php if ($this->cat->params->get('link_category')) : ?>
				<?php echo '</a>'; ?>
			<?php endif; ?>
		</span>
		<?php endif; ?>
	</td>
</tr>
<?php endif; ?>

<?php if ($this->cat->params->get('show_url') && $this->cat->urls) : ?>
<tr>
	<td valign="top" colspan="2">
		<a href="http://<?php echo $this->escape($this->cat->urls) ; ?>" target="_blank">
			<?php echo $this->escape($this->cat->urls); ?></a>
	</td>
</tr>
<?php endif; ?>

<?php if ($this->cat->params->get('show_cat_num_articles') && $this->cat->params->get('show_cat_num_position') == 'top') : ?>
<tr>
	<td valign="top" colspan="2">
    <span class="small">
        ( <?php if ($this->cat->numitems==1) {
        echo $this->cat->numitems ." ". JText::_( 'item' );}
        else {
        echo $this->cat->numitems ." ". JText::_( 'items' );} ?> )
    </span>
    </td>
</tr>
<?php endif; ?>

<tr>
<td valign="top" colspan="2">
	<?php if (isset ($this->cat->toc)) : ?>
        <?php echo $this->cat->toc; ?>
    <?php endif; ?>
	<?php if ($this->params->get('show_category_description_image') && $this->cat->image) : ?>
    	<?php if ($this->params->get('show_category_description_image_link')) : ?>
        <a href="<?php echo $this->cat->link; ?>" target="_self">
		<img src="<?php echo $this->baseurl . '/' . $cparams->get('image_path') . '/'. $this->cat->image;?>" align="<?php echo $this->cat->image_position;?>" hspace="6" alt="<?php echo $this->cat->image;?>" />
        </a>
   		<?php else : ?>
		<img src="<?php echo $this->baseurl . '/' . $cparams->get('image_path') . '/'. $this->cat->image;?>" align="<?php echo $this->cat->image_position;?>" hspace="6" alt="<?php echo $this->cat->image;?>" />
		<?php endif; ?> 
	<?php endif; ?>
	<?php if ($this->cat->params->get('show_category_description')) : ?>
		<?php echo $this->cat->text; ?>
	<?php endif; ?>
	</td>
</tr>

<?php if ($this->cat->params->get('show_cat_num_articles') && $this->cat->params->get('show_cat_num_position') == 'bottom') : ?>
<tr>
	<td valign="top" colspan="2">
    <span class="small">
        ( <?php if ($this->cat->numitems==1) {
        echo $this->cat->numitems ." ". JText::_( 'item' );}
        else {
        echo $this->cat->numitems ." ". JText::_( 'items' );} ?> )
    </span>
    </td>
</tr>
<?php endif; ?>
    
</table>
<?php if ($this->cat->published == 0) : ?>
</div>
<?php endif; ?>
<span class="article_separator">&nbsp;</span>
<?php echo $this->cat->event->afterDisplayContent; ?>
