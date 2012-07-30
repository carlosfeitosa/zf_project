<?php
/**
 * Arquivo de configuração de segurança do sistema
 * 
 * Este arquivo contem as configurações de segurança do sistema
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/05/2012
 */

// definições de token inválido
define("APPLICATION_INVALID_REQUEST_TOKEN_REDIRECT_TO_INDEX", true);

// definições de checksum
define("APPLICATION_DATABASE_MAKE_CHECKSUM", true);
define("APPLICATION_DATABASE_CHECK_CHECKSUM", true);
define("APPLICATION_DATABASE_RESET_MAKE_SYSTEM_CHECKSUM", true);
define("APPLICATION_DATABASE_MAKE_SYSTEM_CHECKSUM_MAXTIME_SECONDS", 1200);

// definições de uso de memória
define("APPLICATION_ADMIN_MEMORY_SIZE", "512M");
define("APPLICATION_DICIONARIO_DADOS_MEMORY_SIZE", "384M");

// definições de encriptação
define("APPLICATION_CRYPT_SALT", "$6$");

// definições de sessão
define("TEMPO_EXPIRACAO_SESSAO_SEGUNDOS", 600);

// definições para logon inválido
define("QUANTIDADE_TENTATIVAS_FALHAS_MINIMA_ENVIO_MENSAGEM_ALERTA", 3);
define("QUANTIDADE_TENTATIVAS_LOGIN_MAX", 5);
define("QUANTIDADE_TENTATIVAS_LOGIN_IP_BAN_MAX", 10);

// definições de e-mail
define("FORM_VALIDATOR_EMAILADDRESS_CHECK_DEEP_MX", false);

// definições de hosts banidos
define("HOSTS_DENNY", APPLICATION_PATH . "/modules/basico/config/hosts_denny.ini");

// definições de reset do banco de dados
define("ADMIN_LOGIN_NAME_DATABASE_RESET", "admin");