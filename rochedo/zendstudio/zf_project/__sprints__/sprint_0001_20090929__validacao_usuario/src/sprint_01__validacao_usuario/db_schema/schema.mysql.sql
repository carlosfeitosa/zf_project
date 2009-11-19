
-- automatically generated MySQL code
-- author: Aram Hovsepyan
-- version: 1.0

CREATE TABLE IF NOT EXISTS `adminuser` (
`id` INT( 11 ) NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`name` VARCHAR( 50 ) NOT NULL ,
`username` VARCHAR( 50 ) NOT NULL ,
`password` VARCHAR( 50 ) NOT NULL
) ENGINE = MYISAM;

REPLACE INTO  `adminuser`
SET `id`=1, `name` = 'Administrator', `username` = 'admin', `password` = '21232f297a57a5a743894a0e4a801fc3';

CREATE TABLE IF NOT EXISTS `adminmenu` (
  `id` int(11) NOT NULL auto_increment,
  `caption` varchar(50) NOT NULL,
  `order` int(11) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) NOT NULL default '0',
  `controller` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `term` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `termcategory` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `termcategory` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `termtranslation` (
  `id` int(11) NOT NULL auto_increment,
  `language` varchar(100) NOT NULL default '',
  `translation` text NOT NULL,
  `term` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

INSERT INTO `adminmenu` VALUES(33, 'term categories', 22, '', 0, 'termcategory', 'index');
INSERT INTO `adminmenu` VALUES(34, 'terms', 23, '', 0, 'term', 'index');
INSERT INTO `adminmenu` VALUES(35, 'translations', 21, '', 0, 'termtranslation', 'index');
INSERT INTO `adminmenu` VALUES(36, 'add term', 1, '', 34, 'term', 'add');
INSERT INTO `adminmenu` VALUES(37, 'modify terms', 2, '', 34, 'term', 'modify');
INSERT INTO `adminmenu` VALUES(38, 'add category', 1, '', 33, 'termcategory', 'add');
INSERT INTO `adminmenu` VALUES(39, 'modify category', 2, '', 33, 'termcategory', 'modify');



	REPLACE INTO `adminmenu`
	SET `id` = 1, `caption` = 'pessoa management', `order` = 1,
	`description` = 'pessoa management submodule', `parent` = 0,
	`controller` = 'pessoa', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 2, `caption` = 'add pessoa', `order` = 1,
    `description` = 'Use this functionality to add new pessoa items to the system', `parent` = 1,
    `controller` = 'pessoa', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 3, `caption` = 'modify pessoa', `order` = 2,
    `description` = 'Use this functionality to modify existing pessoa items', `parent` = 1,
    `controller` = 'pessoa', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 4, `caption` = 'login management', `order` = 2,
	`description` = 'login management submodule', `parent` = 0,
	`controller` = 'login', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 5, `caption` = 'add login', `order` = 1,
    `description` = 'Use this functionality to add new login items to the system', `parent` = 4,
    `controller` = 'login', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 6, `caption` = 'modify login', `order` = 2,
    `description` = 'Use this functionality to modify existing login items', `parent` = 4,
    `controller` = 'login', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 7, `caption` = 'email management', `order` = 3,
	`description` = 'email management submodule', `parent` = 0,
	`controller` = 'email', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 8, `caption` = 'add email', `order` = 1,
    `description` = 'Use this functionality to add new email items to the system', `parent` = 7,
    `controller` = 'email', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 9, `caption` = 'modify email', `order` = 2,
    `description` = 'Use this functionality to modify existing email items', `parent` = 7,
    `controller` = 'email', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 10, `caption` = 'rowinfo management', `order` = 4,
	`description` = 'rowinfo management submodule', `parent` = 0,
	`controller` = 'rowinfo', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 11, `caption` = 'add rowinfo', `order` = 1,
    `description` = 'Use this functionality to add new rowinfo items to the system', `parent` = 10,
    `controller` = 'rowinfo', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 12, `caption` = 'modify rowinfo', `order` = 2,
    `description` = 'Use this functionality to modify existing rowinfo items', `parent` = 10,
    `controller` = 'rowinfo', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 13, `caption` = 'categoria management', `order` = 5,
	`description` = 'categoria management submodule', `parent` = 0,
	`controller` = 'categoria', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 14, `caption` = 'add categoria', `order` = 1,
    `description` = 'Use this functionality to add new categoria items to the system', `parent` = 13,
    `controller` = 'categoria', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 15, `caption` = 'modify categoria', `order` = 2,
    `description` = 'Use this functionality to modify existing categoria items', `parent` = 13,
    `controller` = 'categoria', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 16, `caption` = 'perfil management', `order` = 6,
	`description` = 'perfil management submodule', `parent` = 0,
	`controller` = 'perfil', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 17, `caption` = 'add perfil', `order` = 1,
    `description` = 'Use this functionality to add new perfil items to the system', `parent` = 16,
    `controller` = 'perfil', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 18, `caption` = 'modify perfil', `order` = 2,
    `description` = 'Use this functionality to modify existing perfil items', `parent` = 16,
    `controller` = 'perfil', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 19, `caption` = 'log management', `order` = 7,
	`description` = 'log management submodule', `parent` = 0,
	`controller` = 'log', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 20, `caption` = 'add log', `order` = 1,
    `description` = 'Use this functionality to add new log items to the system', `parent` = 19,
    `controller` = 'log', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 21, `caption` = 'modify log', `order` = 2,
    `description` = 'Use this functionality to modify existing log items', `parent` = 19,
    `controller` = 'log', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 22, `caption` = 'tipocategoria management', `order` = 8,
	`description` = 'tipocategoria management submodule', `parent` = 0,
	`controller` = 'tipocategoria', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 23, `caption` = 'add tipocategoria', `order` = 1,
    `description` = 'Use this functionality to add new tipocategoria items to the system', `parent` = 22,
    `controller` = 'tipocategoria', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 24, `caption` = 'modify tipocategoria', `order` = 2,
    `description` = 'Use this functionality to modify existing tipocategoria items', `parent` = 22,
    `controller` = 'tipocategoria', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 25, `caption` = 'dadospessoais management', `order` = 9,
	`description` = 'dadospessoais management submodule', `parent` = 0,
	`controller` = 'dadospessoais', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 26, `caption` = 'add dadospessoais', `order` = 1,
    `description` = 'Use this functionality to add new dadospessoais items to the system', `parent` = 25,
    `controller` = 'dadospessoais', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 27, `caption` = 'modify dadospessoais', `order` = 2,
    `description` = 'Use this functionality to modify existing dadospessoais items', `parent` = 25,
    `controller` = 'dadospessoais', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 28, `caption` = 'mensageiro management', `order` = 10,
	`description` = 'mensageiro management submodule', `parent` = 0,
	`controller` = 'mensageiro', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 29, `caption` = 'add mensageiro', `order` = 1,
    `description` = 'Use this functionality to add new mensageiro items to the system', `parent` = 28,
    `controller` = 'mensageiro', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 30, `caption` = 'modify mensageiro', `order` = 2,
    `description` = 'Use this functionality to modify existing mensageiro items', `parent` = 28,
    `controller` = 'mensageiro', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 31, `caption` = 'gerador management', `order` = 11,
	`description` = 'gerador management submodule', `parent` = 0,
	`controller` = 'gerador', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 32, `caption` = 'add gerador', `order` = 1,
    `description` = 'Use this functionality to add new gerador items to the system', `parent` = 31,
    `controller` = 'gerador', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 33, `caption` = 'modify gerador', `order` = 2,
    `description` = 'Use this functionality to modify existing gerador items', `parent` = 31,
    `controller` = 'gerador', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 34, `caption` = 'geradoruniqueid management', `order` = 12,
	`description` = 'geradoruniqueid management submodule', `parent` = 0,
	`controller` = 'geradoruniqueid', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 35, `caption` = 'add geradoruniqueid', `order` = 1,
    `description` = 'Use this functionality to add new geradoruniqueid items to the system', `parent` = 34,
    `controller` = 'geradoruniqueid', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 36, `caption` = 'modify geradoruniqueid', `order` = 2,
    `description` = 'Use this functionality to modify existing geradoruniqueid items', `parent` = 34,
    `controller` = 'geradoruniqueid', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 37, `caption` = 'mensagem management', `order` = 13,
	`description` = 'mensagem management submodule', `parent` = 0,
	`controller` = 'mensagem', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 38, `caption` = 'add mensagem', `order` = 1,
    `description` = 'Use this functionality to add new mensagem items to the system', `parent` = 37,
    `controller` = 'mensagem', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 39, `caption` = 'modify mensagem', `order` = 2,
    `description` = 'Use this functionality to modify existing mensagem items', `parent` = 37,
    `controller` = 'mensagem', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 40, `caption` = 'anexomensagem management', `order` = 14,
	`description` = 'anexomensagem management submodule', `parent` = 0,
	`controller` = 'anexomensagem', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 41, `caption` = 'add anexomensagem', `order` = 1,
    `description` = 'Use this functionality to add new anexomensagem items to the system', `parent` = 40,
    `controller` = 'anexomensagem', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 42, `caption` = 'modify anexomensagem', `order` = 2,
    `description` = 'Use this functionality to modify existing anexomensagem items', `parent` = 40,
    `controller` = 'anexomensagem', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 43, `caption` = 'mensagememail management', `order` = 15,
	`description` = 'mensagememail management submodule', `parent` = 0,
	`controller` = 'mensagememail', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 44, `caption` = 'add mensagememail', `order` = 1,
    `description` = 'Use this functionality to add new mensagememail items to the system', `parent` = 43,
    `controller` = 'mensagememail', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 45, `caption` = 'modify mensagememail', `order` = 2,
    `description` = 'Use this functionality to modify existing mensagememail items', `parent` = 43,
    `controller` = 'mensagememail', `action` = 'modify';

	REPLACE INTO `adminmenu`
	SET `id` = 46, `caption` = 'util management', `order` = 16,
	`description` = 'util management submodule', `parent` = 0,
	`controller` = 'util', `action` = 'index';
	
    REPLACE INTO `adminmenu`
    SET `id` = 47, `caption` = 'add util', `order` = 1,
    `description` = 'Use this functionality to add new util items to the system', `parent` = 46,
    `controller` = 'util', `action` = 'add';
	
	REPLACE INTO `adminmenu`
    SET `id` = 48, `caption` = 'modify util', `order` = 2,
    `description` = 'Use this functionality to modify existing util items', `parent` = 46,
    `controller` = 'util', `action` = 'modify';


CREATE TABLE IF NOT EXISTS `pessoa`
(
    `id` int(11) NOT NULL auto_increment,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `login`
(
    `id` int(11) NOT NULL auto_increment,
    `login` varchar(100) NOT NULL default '',
    `senha` varchar(100) NOT NULL default '',
    `ativo` tinyint(1) NOT NULL default 0,
    `tentativasFalhas` int(11) NOT NULL default 0,
    `travado` tinyint(1) NOT NULL default 0,
    `resetado` tinyint(1) NOT NULL default 0,
    `dataHoraUltimoLogon` date NOT NULL,
    `observacoes` varchar(100) NOT NULL default '',
    `podeExpirar` tinyint(1) NOT NULL default 0,
    `dataHoraProximaExpiracao` date NOT NULL,
    `dataHoraUltimaExpiracao` date NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `email`
(
    `id` int(11) NOT NULL auto_increment,
    `uniqueId` varchar(100) NOT NULL default '',
    `email` varchar(100) NOT NULL default '',
    `validado` tinyint(1) NOT NULL default 0,
    `dataHoraUltimaValidacao` date NOT NULL,
    `ativo` tinyint(1) NOT NULL default 0,
    `pessoa` int(11) NOT NULL default 0,
    `categoria` int(11) NOT NULL default 0,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `rowinfo`
(
    `id` int(11) NOT NULL auto_increment,
    `xml` varchar(100) NOT NULL default '',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `categoria`
(
    `id` int(11) NOT NULL auto_increment,
    `nivel` int(11) NOT NULL default 0,
    `nome` varchar(100) NOT NULL default '',
    `descricao` varchar(100) NOT NULL default '',
    `ativo` tinyint(1) NOT NULL default 0,
    `tipoCategoria` int(11) NOT NULL default 0,
    `categoria` int(11) NOT NULL default 0,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `perfil`
(
    `id` int(11) NOT NULL auto_increment,
    `nome` varchar(100) NOT NULL default '',
    `descricao` varchar(100) NOT NULL default '',
    `ativo` tinyint(1) NOT NULL default 0,
    `categoria` int(11) NOT NULL default 0,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `log`
(
    `id` int(11) NOT NULL auto_increment,
    `dataHoraEvento` date NOT NULL,
    `xml` varchar(100) NOT NULL default '',
    `categoria` int(11) NOT NULL default 0,
    `pessoaPerfil` int(11) NOT NULL default 0,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `tipocategoria`
(
    `id` int(11) NOT NULL auto_increment,
    `nome` varchar(100) NOT NULL default '',
    `descricao` varchar(100) NOT NULL default '',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `dadospessoais`
(
    `id` int(11) NOT NULL auto_increment,
    `nome` varchar(100) NOT NULL default '',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `mensageiro`
(
    `id` int(11) NOT NULL auto_increment,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `gerador`
(
    `id` int(11) NOT NULL auto_increment,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `geradoruniqueid`
(
    `id` int(11) NOT NULL auto_increment,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `mensagem`
(
    `id` int(11) NOT NULL auto_increment,
    `remetente` varchar(100) NOT NULL default '',
    `destinatarios` varchar(100) NOT NULL default '',
    `assunto` varchar(100) NOT NULL default '',
    `dataHoraMensagem` date NOT NULL,
    `mensagem` varchar(100) NOT NULL default '',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `anexomensagem`
(
    `id` int(11) NOT NULL auto_increment,
    `nomeOriginal` varchar(100) NOT NULL default '',
    `nomeSugestao` varchar(100) NOT NULL default '',
    `descricao` varchar(100) NOT NULL default '',
    `arquivo` varchar(100) NOT NULL default '',
    `mimeType` varchar(100) NOT NULL default '',
    `mensagem` int(11) NOT NULL default 0,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `mensagememail`
(
    `id` int(11) NOT NULL auto_increment,
    `destinatariosCopiaCarbonada` varchar(100) NOT NULL default '',
    `destinatariosCopiaCarbonadaCega` varchar(100) NOT NULL default '',
    `responderPara` varchar(100) NOT NULL default '',
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------



CREATE TABLE IF NOT EXISTS `util`
(
    `id` int(11) NOT NULL auto_increment,
	PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------------------------


CREATE TABLE IF NOT EXISTS `pessoaperfil`
(
    `id` int(11) NOT NULL auto_increment,
    `pessoa` int(11) NOT NULL default 0,
    `perfil` int(11) NOT NULL default 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ---------------------------------------------


CREATE TABLE IF NOT EXISTS `pessoaperfilmensagem`
(
    `id` int(11) NOT NULL auto_increment,
    `pessoaperfil` int(11) NOT NULL default 0,
    `mensagem` int(11) NOT NULL default 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ---------------------------------------------

