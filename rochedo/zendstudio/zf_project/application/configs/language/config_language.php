<?php
/**
 * Arquivo de configuração de linguagem
 * 
 * Este arquivo contem as configurações de linguagem da aplicação
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/06/2015
 */

// definições da língua do sistema
define("DEFAULT_SYSTEM_LANGUAGE", LANGUAGE_PT_BR);

// definições de data do sistema
define("DEFAULT_SYSTEM_DATETIME_LOCALE_PT_BR", "pt_BR");
define("DEFAULT_SYSTEM_DATETIME_LOCALE_EN_US", "en_US");
define("DEFAULT_SYSTEM_DATETIME_LOCALE", DEFAULT_SYSTEM_DATETIME_LOCALE_EN_US);
define("DEFAULT_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");
define("DEFAULT_PG_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");
define("DEFAULT_MSSQL_DATABASE_DATETIME_FORMAT", "yyyy-MM-dd HH:mm:ss");
define("DEFAULT_DATETIME_FORMAT_PT_BR", "dd/MM/yyyy HH:mm:ss");
define("DEFAULT_DATETIME_FORMAT_EN_US", "MM/dd/yyyy HH:mm:ss");