<?php
/**
 * Arquivo para definição de constantes de log do sistema.
 */

/*
 * PRIORIDADES
 */
define("LOG_PRIORITY_EMERGENCIA", Zend_Log::EMERG);
define("LOG_PRIORITY_ALERTA",     Zend_Log::ALERT);
define("LOG_PRIORITY_CRITICO",    Zend_Log::CRIT);
define("LOG_PRIORITY_ERRO",       Zend_Log::ERR);
define("LOG_PRIORITY_AVISO",      Zend_Log::WARN);
define("LOG_PRIORITY_NOTICIA",    Zend_Log::NOTICE);
define("LOG_PRIORITY_INFORMACAO", Zend_Log::INFO);
define("LOG_PRIORITY_DEBUG",      Zend_Log::DEBUG);

/*
 * FORMATO DO LOG
 */
define("LOG_FORMAT", '[%timestamp% - %priorityName% (%priority%)]: %message%' . PHP_EOL);

/*
 * MENSAGENS DE LOG
 */
define("LOG_MSG_NOVA_PESSOA", "Nova pessoa inserida no banco de dados.");
define("LOG_MSG_NOVA_PESSOA_PERFIL", "Nova associacao de pessoa perfil inserida no banco de dados.");
define("LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Nova pessoa perfil mensagem categoria inserida no banco de dados.");
define("LOG_MSG_NOVO_DADOS_PESSOAIS", "Novos dados pessoais inseridos no banco de dados.");
define("LOG_MSG_NOVO_EMAIL", "Novo e-mail inserido no banco de dados.");
define("LOG_MSG_NOVA_MENSAGEM", "Nova mensagem inserida no banco de dados.");
define("LOG_MSG_NOVO_TOKEN", "Novo token inserido no banco de dados.");
define("LOG_MSG_VALIDACAO_USUARIO", "Tentativa de validacao de e-mail de usuario.");

/*
 * FORMULÁRIO
 */
define("LOG_MSG_NOVO_FORMULARIO", "Novo formulario inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO", "Novo formulario elemento inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FILTER", "Novo formulario elemento filter inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Novo formulario elemento formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "Novo formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "Novo formulario formulario elemento inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_TEMPLATE", "Novo formulario template inserido no banco de dados.");
define("LOG_MSG_EMAIL", "Operação de envio de e-mail.");
define("LOG_MSG_EMAIL_SUCESSO", "Operação de envio de e-mail SUCESSO.");
define("LOG_MSG_EMAIL_FALHA", "Operação de envio de e-mail FALHA: ");

/*
 * OUTPUT
 */
define("LOG_MSG_NOVO_OUTPUT", "Novo output inserido no banco de dados.");
