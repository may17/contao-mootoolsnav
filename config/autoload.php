<?php

/**
 * Contao Open Source CMS
 *
 * Copyright (c) 2005-2014 Leo Feyer
 *
 * @package Mootoolsnav
 * @link    https://contao.org
 * @license http://www.gnu.org/licenses/lgpl-3.0.html LGPL
 */


/**
 * Register the classes
 */
ClassLoader::addClasses(array
(
	'ModuleMootoolsnav' => 'system/modules/mootoolsnav/ModuleMootoolsnav.php',
));


/**
 * Register the templates
 */
TemplateLoader::addFiles(array
(
	'mod_mootoolsnav' => 'system/modules/mootoolsnav/templates',
));
