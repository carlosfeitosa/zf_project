<?php
/**
 * Arquivo de configuração do módulo básico
 * 
 * Este arquivo contem as configurações do módulo básico
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/05/2012
 */

// definições de caminhos
define("BASICO_VIEW_SCRIPTS_PATH", APPLICATION_PATH . "/modules/basico/views/scripts");
define("BASICO_VIEW_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/views/helpers");
define("BASICO_CONTROLLER_HELPERS_PATH", APPLICATION_PATH . "/modules/basico/actionControllers/helpers");
define("BASICO_DB_SCRIPTS_PATH", APPLICATION_PATH . "/../scripts/db");
define("BASICO_DB_PGSQL_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql");
define("BASICO_DB_MSSQL_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql");
define("BASICO_DB_PGSQL_CREATE_SCHEMA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql/schema");
define("BASICO_DB_MSSQL_CREATE_SCHEMA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql/schema");
define("BASICO_DB_PGSQL_DATA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/pgsql/data");
define("BASICO_DB_MSSQL_DATA_SCRIPTS_PATH", BASICO_DB_SCRIPTS_PATH . "/mssql/data");