-- **********************************************************
-- *                                                        *
-- * IMPORTANT NOTE                                         *
-- *                                                        *
-- * Do not import this file manually but use the TYPOlight *
-- * install tool to create and maintain database tables!   *
-- *                                                        *
-- **********************************************************

--
-- Table `tl_module`
--

CREATE TABLE `tl_module` (
  `mootoolsnavLevel` smallint(5) unsigned NOT NULL default '0',
  `mootoolsnavTrigger` varchar(8) NOT NULL default '',
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

