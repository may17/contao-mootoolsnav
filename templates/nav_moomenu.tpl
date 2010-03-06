<?php

  $togglerlevel = 'level_1';
  $menulevel = 'level_2';

?>

<ul class="<?php echo $this->level; if($this->level == $menulevel) echo ' menuaccord" onmouseover="moomenu_stop()" onmouseout="moomenu_fire()'; ?>">
<?php if (!isset($GLOBALS['accorditem'][$this->level])) $GLOBALS['accorditem'][$this->level] = 0; ?>

<?php foreach($this->items as $item): ?>

<?php if ($item['isActive']): ?>

<?php if(empty($item['subitems'])): /* Ohne Untermenüs */ ?>

<li class="<?php if ($item['class']) echo $item['class']; ?><?php if($this->level == $togglerlevel) echo ' nosubmenu'; ?>"><p class="active <?php if ($item['class']): ?> <?php echo $item['class']; endif; ?>"><?php echo $item['link']; ?></p></li>

<?php else: /* Mit Untermenüs */ ?>
<?php if ($this->level == $togglerlevel) $GLOBALS['activemenuaccord'] = $GLOBALS['accorditem'][$this->level]; ?>
<li class="active <?php if ($item['class']) echo $item['class']; ?><?php if($this->level == $togglerlevel): ?> menutoggler<?php endif; ?>"><p class="active <?php if ($item['class']): ?> <?php echo $item['class']; endif; ?>"<?php if($this->level == $togglerlevel): ?> onmouseover="moomenu.accordion.display(<?php echo $GLOBALS['accorditem'][$this->level]; ?>)" onmouseout="moomenu.accordion.display(activemenuaccord)"<?php endif; ?>><?php echo $item['link']; ?></p><?php echo $item['subitems']; ?></li>
<?php $GLOBALS['accorditem'][$this->level]++; ?>
<?php endif; ?>
<?php else: ?>

<?php if ($this->level == $togglerlevel && strpos($item['class'], 'trail') !== false) $GLOBALS['activemenuaccord'] = $GLOBALS['accorditem'][$this->level]; ?>

<?php if($this->level == $togglerlevel): /* Level 1 */ ?>

<?php if(empty($item['subitems'])): /* Ohne Untermenüs */ ?>

<li class="<?php if ($item['class']) echo $item['class']; ?> nosubmenu" onmouseover="moomenu_stop()" onmouseout="moomenu_fire()"><a href="<?php echo $item['href']; ?>"<?php if ($item['class']): ?> class="<?php echo $item['class']; ?>"<?php endif; ?><?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; if ($item['tabindex']): ?> tabindex="<?php echo $item['tabindex']; ?>"<?php endif; ?> onclick="this.blur();<?php echo $item['target']; ?>"><?php echo $item['link']; ?></a></li>

<?php else: /* Mit Untermenüs */ ?>
<li class="<?php if ($item['class']) echo $item['class']; ?> menutoggler"><a href="<?php echo $item['href']; ?>"<?php if ($item['class']): ?> class="<?php echo $item['class']; ?>"<?php endif; ?><?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; if ($item['tabindex']): ?> tabindex="<?php echo $item['tabindex']; ?>"<?php endif; ?> onclick="this.blur();<?php echo $item['target']; ?>" onmouseover="moomenu_display(<?php echo $GLOBALS['accorditem'][$this->level]; ?>)" onmouseout="moomenu_fire()"><?php echo $item['link']; ?></a><?php echo $item['subitems']; ?></li>
<!-- count accorditem -->
<?php $GLOBALS['accorditem'][$this->level]++; ?>
<?php endif; ?>

<?php else: /* Level 2 oder höher */ a?>

<li class="<?php if ($item['class']) echo $item['class']; ?>"><a href="<?php echo $item['href']; ?>"<?php if ($item['class']): ?> class="<?php echo $item['class']; ?>"<?php endif; ?><?php if ($item['accesskey'] != ''): ?> accesskey="<?php echo $item['accesskey']; ?>"<?php endif; if ($item['tabindex']): ?> tabindex="<?php echo $item['tabindex']; ?>"<?php endif; ?> onclick="this.blur();<?php echo $item['target']; ?>"><?php echo $item['link']; ?></a><?php echo $item['subitems']; ?></li>

<?php endif; ?>

<?php endif; ?>

<?php endforeach; ?>
</ul>