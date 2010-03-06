<?php if (!isset($GLOBALS['activemenuaccord'])) $GLOBALS['activemenuaccord']=-1; ?>
<script type="text/javascript">
<!--//--><![CDATA[//><!--
var moomenu = { 
    init: function(){
        this.accordion = new Accordion($$('li.menutoggler'), $$('ul.menuaccord'), {
            show: <?php echo $GLOBALS['activemenuaccord']; ?>
            
        });
    }
}
window.addEvent('domready', moomenu.init.bind(moomenu));
var activemenuaccord = <?php echo $GLOBALS['activemenuaccord']; ?>;

//--><!]]>
</script>

<!-- indexer::stop -->
<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<a href="<?php echo $this->request; ?>#<?php echo $this->skipId; ?>" class="invisible" title="<?php echo $this->skipNavigation; ?>"></a>
<?php echo $this->items; ?> 
<a id="<?php echo $this->skipId; ?>" class="invisible" title="<?php echo $this->skipNavigation; ?>"></a>

</div>
<!-- indexer::continue -->
