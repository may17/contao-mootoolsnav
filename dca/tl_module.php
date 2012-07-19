<?php if (!defined('TL_ROOT')) die('You cannot access this file directly!');

/**
 * Contao Open Source CMS
 * Copyright (C) 2005-2011 Leo Feyer
 *
 * Formerly known as TYPOlight Open Source CMS.
 *
 * This program is free software: you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation, either
 * version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program. If not, please visit the Free
 * Software Foundation website at <http://www.gnu.org/licenses/>.
 *
 * PHP version 5
 * @copyright  Andreas Schempp 2008-2012
 * @author     Andreas Schempp <andreas@schempp.ch>
 * @license    http://opensource.org/licenses/lgpl-3.0.html
 */


/**
 * Palettes
 */
$GLOBALS['TL_DCA']['tl_module']['palettes']['mootoolsnav'] = '{title_legend},name,headline,type;{nav_legend},levelOffset,showLevel,hardLimit,showProtected;{reference_legend:hide},defineRoot;{template_legend:hide},navigationTpl,mootoolsnavLevel,mootoolsnavTrigger;{protected_legend:hide},protected;{expert_legend:hide},guests,cssID,space';


/**
 * Fields
 */
$GLOBALS['TL_DCA']['tl_module']['fields']['mootoolsnavLevel'] = array
(
	'label'					=> &$GLOBALS['TL_LANG']['tl_module']['mootoolsnavLevel'],
	'exclude'				=> true,
	'inputType'				=> 'text',
	'eval'					=> array('maxlength'=>5, 'rgxp'=>'digit', 'tl_class'=>'w50'),
);

$GLOBALS['TL_DCA']['tl_module']['fields']['mootoolsnavTrigger'] = array
(
	'label'					=> &$GLOBALS['TL_LANG']['tl_module']['mootoolsnavTrigger'],
	'exclude'				=> true,
	'inputType'				=> 'select',
	'options'				=> array('mouseenter', 'click'),
	'reference'				=> &$GLOBALS['TL_LANG']['tl_module']['mootoolsnavTrigger'],
	'eval'					=> array('mandatory'=>true, 'tl_class'=>'w50'),
);

