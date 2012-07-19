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


class ModuleMootoolsnav extends ModuleNavigation
{

	/**
	 * Template
	 * @var string
	 */
	protected $strTemplate = 'mod_mootoolsnav';


	/**
	 * Do not display the module if there are no menu items
	 * @return string
	 */
	public function generate()
	{
		if (TL_MODE == 'BE')
		{
			$objTemplate = new BackendTemplate('be_wildcard');

			$objTemplate->wildcard = '### MOOTOOLS NAVIGATION MENU ###';
			$objTemplate->title = $this->headline;
			$objTemplate->id = $this->id;
			$objTemplate->link = $this->name;
			$objTemplate->href = 'contao/main.php?do=themes&amp;table=tl_module&amp;act=edit&amp;id=' . $this->id;

			return $objTemplate->parse();
		}

		$GLOBALS['TL_JAVASCRIPT'][] = 'system/modules/mootoolsnav/html/mootoolsnav-uncompressed.js';

		if ($this->mootoolsnavTrigger == '')
		{
			$this->mootoolsnavTrigger = 'mouseenter';
		}

		return parent::generate();
	}


	protected function compile()
	{
		$cssID = deserialize($this->cssID);

		if ($cssID[0] == '')
		{
			$cssID[0] = 'mootoolsnav'.$this->id;
		}

		$this->Template->container = $cssID[0];
		$this->cssID = $cssID;

		parent::compile();
	}
}

