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
define("LOG_MSG_UPDATE_PESSOA", "Atualizacao de pessoa no banco de dados.");
define("LOG_MSG_DELETE_PESSOA", "Exclusão de pessoa no banco de dados.");
define("LOG_MSG_NOVA_PESSOA_PERFIL", "Nova associacao de pessoa perfil inserida no banco de dados.");
define("LOG_MSG_UPDATE_PESSOA_PERFIL", "Atualizacao da associacao de pessoa perfil no banco de dados.");
define("LOG_MSG_UPDATE_DADOS_PESSOAS_PERFIS", "Atualizacao dos dados de pessoas perfils no banco de dados.");
define("LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Nova pessoa perfil mensagem categoria inserida no banco de dados.");
define("LOG_MSG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Atualizacao de pessoa perfil mensagem categoria no banco de dados.");
define("LOG_MSG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Exclusão de pessoa perfil mensagem categoria no banco de dados.");
define("LOG_MSG_NOVO_DADOS_PESSOAIS", "Novos dados pessoais inseridos no banco de dados.");
define("LOG_MSG_UPDATE_DADOS_PESSOAIS", "Atualizacao de dados pessoais no banco de dados.");
define("LOG_MSG_DELETE_DADOS_PESSOAIS", "Exclusão de dados pessoais no banco de dados.");
define("LOG_MSG_NOVO_DADOS_BIOMETRICOS", "Novos dados biometricos inseridos no banco de dados.");
define("LOG_MSG_NOVO_DADOS_PESSOAS_PERFIS", "Novos dados pessoa perfil inseridos no banco de dados.");
define("LOG_MSG_UPDATE_DADOS_BIOMETRICOS", "Atualizacao de dados biometricos no banco de dados.");
define("LOG_MSG_NOVO_WEBSITE", "Novo website inserido no banco de dados.");
define("LOG_MSG_UPDATE_WEBSITE", "Atualiacao de website no banco de dados.");
define("LOG_MSG_DELETE_WEBSITE", "Exclusão de website no banco de dados.");
define("LOG_MSG_NOVO_EMAIL", "Novo e-mail inserido no banco de dados.");
define("LOG_MSG_UPDATE_EMAIL", "Atualizacao de e-mail no banco de dados.");
define("LOG_MSG_DELETE_EMAIL", "Exclusão de e-mail no banco de dados.");
define("LOG_MSG_NOVA_MASCARA", "Nova mascara inserida no banco de dados.");
define("LOG_MSG_UPDATE_MASCARA", "Atualizacao de mascara no banco de dados.");
define("LOG_MSG_DELETE_MASCARA", "Exclusão de mascara no banco de dados.");
define("LOG_MSG_NOVA_CATEGORIA", "Nova categoria inserida no banco de dados.");
define("LOG_MSG_UPDATE_CATEGORIA", "Atualizacao de categoria no banco de dados.");
define("LOG_MSG_DELETE_CATEGORIA", "Exclusão de categoria no banco de dados.");
define("LOG_MSG_NOVO_TIPO_CATEGORIA", "Novo tipo categoria inserida no banco de dados.");
define("LOG_MSG_UPDATE_TIPO_CATEGORIA", "Atualizacao de tipo categoria no banco de dados.");
define("LOG_MSG_DELETE_TIPO_CATEGORIA", "Exclusão de tipo categoria no banco de dados.");
define("LOG_MSG_NOVO_PERFIL", "Novo perfil inserido no banco de dados.");
define("LOG_MSG_UPDATE_PERFIL", "Atualizacao de perfil no banco de dados.");
define("LOG_MSG_DELETE_PERFIL", "Exclusão de perfil no banco de dados.");
define("LOG_MSG_NOVO_PAIS", "Novo país inserido no banco de dados.");
define("LOG_MSG_UPDATE_PAIS", "Atualizacao do país no banco de dados.");
define("LOG_MSG_DELETE_PAIS", "Exclusão do país no banco de dados.");
define("LOG_MSG_NOVO_COMPONENTE", "Novo componente inserido no banco de dados.");
define("LOG_MSG_UPDATE_COMPONENTE", "Atualizacao de componente no banco de dados.");
define("LOG_MSG_DELETE_COMPONENTE", "Exclusão de componente no banco de dados.");
define("LOG_MSG_NOVO_MODULO", "Novo modulo inserido no banco de dados.");
define("LOG_MSG_UPDATE_MODULO", "Atualizacao de modulo no banco de dados.");
define("LOG_MSG_DELETE_MODULO", "Exclusão de modulo no banco de dados.");
define("LOG_MSG_CATEGORIA_CHAVE_ESTRANGEIRA", "Criação de categoria chave estrangeira.");
define("LOG_MSG_NOVA_CATEGORIA_CHAVE_ESTRANGEIRA", "Criação de categoria chave estrangeira.");
define("LOG_MSG_NOVA_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "Criação de relação categoria chave estrangeira.");
define("LOG_MSG_DELETE_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "Não é possivel a exclusao de relação categoria chave estrangeira.");
define("LOG_MSG_NOVA_MENSAGEM", "Nova mensagem inserida no banco de dados.");
define("LOG_MSG_UPDATE_MENSAGEM", "Atualizacao de mensagem no banco de dados.");
define("LOG_MSG_DELETE_MENSAGEM", "Exclusao de mensagem do banco de dados");
define("LOG_MSG_NOVO_TOKEN", "Novo token inserido no banco de dados.");
define("LOG_MSG_UPDATE_TOKEN", "Atualizacao de token no banco de dados.");
define("LOG_MSG_VALIDACAO_USUARIO", "Tentativa de validacao de e-mail de usuario.");
define("LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO", "Tentativa de autenticacao de usuario.");
define("LOG_MSG_TENTATIVA_AUTENTICACAO_USUARIO_LOGIN_NAO_EXISTENTE", "Tentativa de autenticacao de usuario. Login inexistente: ");
define("LOG_MSG_SUCESSO_AUTENTICACAO_USUARIO", "Sucesso na tentativa de autenticar o usuario");
define("LOG_MSG_SUCESSO_DESAUTENTICACAO_USUARIO", "Sucesso na tentativa de desautenticar o usuario");
define("LOG_MSG_MANTER_USUARIO_LOGADO", "Marcacao para manter usuario logado");
define("LOG_MSG_TENTATIVA_ACESSO_ACAO_DESATIVADA", "Tentativa de acesso a acao desativada.");
define("LOG_MSG_TENTATIVA_ACESSO_ACAO_NAO_PERMITIDA", "Tentativa de acesso a acao nao permitida.");
define("LOG_MSG_TENTATIVA_ACESSO_ACAO_INDISPONIVEL_ATRAVES_DE_URL", "Tentativa de acesso a acao indisponivel atraves de url.");
define("LOG_MSG_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO", "Tentativa de acesso de usuario logado atraves de IP diferente do registrado na sessao durante o processo de logon.");
define("LOG_MSG_TENTATIVA_ACESSO_HOST_BANIDO", "Tentativa de acesso a partir de host banido.");
define("LOG_MSG_ADICIONA_IP_HOSTS_DENY", "Adicao de IP na lista de IPs bloqueados pelo sistema (");
define("LOG_MSG_REMOVE_IP_HOSTS_DENY", "Remocao de IP na lista de IPs bloqueados pelo sistema (");
define("LOG_MSG_ATIVA_IP_HOSTS_DENY", "Ativacao de IP na lista de IPs bloqueados pelo sistema (");
define("LOG_MSG_DESATIVA_IP_HOSTS_DENY", "Desativacao de IP na lista de IPs bloqueados pelo sistema (");
define("LOG_MSG_NOVO_LOGIN", "Novo login inserido no banco de dados.");
define("LOG_MSG_UPDATE_LOGIN", "Atualizacao de login no banco de dados.");
define("LOG_MSG_NOVA_RACA", "Nova raça inserida no banco de dados.");
define("LOG_MSG_UPDATE_RACA", "Atualizacao de raça no banco de dados.");
define("LOG_MSG_DELETE_RACA", "Exclusao de raça no banco de dados.");
define("LOG_MSG_NOVA_ACAO_APLICACAO", "Nova acao aplicacao inserida no banco de dados");
define("LOG_MSG_UPDATE_ACAO_APLICACAO", "Atualizacao de acao aplicacao no banco de dados");
define("LOG_MSG_DELETE_ACAO_APLICACAO", "Exclusao de acao aplicacao do banco de dados");
define("LOG_MSG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO", "Nova associacao entre acao aplicacao e metodo validacao inserida no banco de dados");
define("LOG_MSG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO", "Atualizacao de associacao entre acao aplicacao e metodo validacao no banco de dados");
define("LOG_MSG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO", "Exclusao de associacao entre acao aplicacao e metodo validacao no banco de dados");
define("LOG_MSG_NOVA_ACOES_APLICACAO_PERFIS", "Nova associacao entre acao aplicacao e perfil inserida no banco de dados");
define("LOG_MSG_UPDATE_ACOES_APLICACAO_PERFIS", "Atualizacao de associacao entre acao aplicacao e perfil no banco de dados");
define("LOG_MSG_DELETE_ACOES_APLICACAO_PERFIS", "Exclusao de associacao entre acao aplicacao e perfil no banco de dados");
define("LOG_MSG_NOVO_METODO_VALIDACAO", "Novo metodo validacao inserida no banco de dados");
define("LOG_MSG_UPDATE_METODO_VALIDACAO", "Atualizacao de metodo validacao no banco de dados");
define("LOG_MSG_DELETE_METODO_VALIDACAO", "Exclusao de metodo validacao no banco de dados");
define("LOG_MSG_DELETE_CATEGORIA_CHAVE_ESTRANGEIRA", "Não é possivel a exclusao de categoria chave estrangeira do banco de dados");
define("DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR", "Chamada a ação de controlador.");
define("LOG_MSG_DELETE_DADOS_BIOMETRICOS", "Exclusao de dados biometricos do banco de dados");
define("LOG_MSG_DELETE_DADOS_PESSOAS_PERFIS", "Exclusao de dados pesssoas perfis do banco de dados");
define("LOG_MSG_DELETE_OUTPUT", "Exclusao de output do banco de dados");
define("LOG_MSG_DELETE_PESSOA_PERFIL", "Exclusao de perfil da pessoa do banco de dados");
define("LOG_MSG_DELETE_FORMULARIO", "Exclusao de formulario do banco de dados");


/*
 * FORMULÁRIO
 */
define("LOG_MSG_NOVO_FORMULARIO", "Novo formulario inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO", "Atualizacao de formulario no banco de dados.");
define("LOG_MSG_NOVO_GRUPO_FORMULARIO_ELEMENTO", "Novo grupo formulario elemento inserido no banco de dados.");
define("LOG_MSG_UPDATE_GRUPO_FORMULARIO_ELEMENTO", "Atualizacao de grupo formulario elemento no banco de dados.");
define("LOG_MSG_DELETE_GRUPO_FORMULARIO_ELEMENTO", "Exclusão de grupo formulario elemento no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO", "Novo formulario elemento inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO_ELEMENTO", "Atualizacao de formulario elemento no banco de dados.");
define("LOG_MSG_DELETE_FORMULARIO_ELEMENTO", "Exclusão de formulario elemento no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FILTER", "Novo formulario elemento filter inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_FILTER", "Atualizacao de formulario elemento filter no banco de dados.");
define("LOG_MSG_DELETE_FORMULARIO_ELEMENTO_FILTER", "Exclusão de formulario elemento filter no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Novo formulario elemento formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Atualizacao formulario elemento formulario elemento validador no banco de dados.");
define("LOG_MSG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Exclusão formulario elemento formulario elemento validador no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "Novo formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR", "Atualizacao de formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR", "Exclusão de formulario elemento validador inserido no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "Novo formulario formulario elemento inserido no banco de dados.");
define("LOG_MSG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO", "Atualizacao de formulario formulario elemento no banco de dados.");
define("LOG_MSG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO", "Exclusão de formulario formulario elemento no banco de dados.");
define("LOG_MSG_NOVO_FORMULARIO_TEMPLATE", "Novo formulario template inserido no banco de dados.");
define("LOG_MSG_EMAIL", "Operação de envio de e-mail.");
define("LOG_MSG_EMAIL_SUCESSO", "Operação de envio de e-mail SUCESSO.");
define("LOG_MSG_EMAIL_FALHA", "Operação de envio de e-mail FALHA: ");

/**
 * RASCUNHO
 */
define("LOG_MSG_NOVO_RASCUNHO", "Novo rascunho inserido no banco de dados.");
define("LOG_MSG_UPDATE_RASCUNHO", "Atualização de rascunho no banco de dados.");
define("LOG_MSG_DELETE_RASCUNHO", "Exclusão de rascunho no banco de dados.");

/*
 * OUTPUT
 */
define("LOG_MSG_NOVO_OUTPUT", "Novo output inserido no banco de dados.");
define("LOG_MSG_UPDATE_OUTPUT", "Atualizacao de output no banco de dados.");

/*
 * RESET BANCO DE DADOS
 */
define("LOG_MSG_RESET_DB_INICIO", "Início do reset do banco de dados.");
define("LOG_MSG_RESET_DB_SUCESSO", "Banco de dados resetado com sucesso.");
define("LOG_MSG_DROP_DB_INICIO", "Drop do banco de dados iniciado.");
define("LOG_MSG_DROP_DB_SUCESSO", "Drop do banco de dados efetuado com sucesso.");
define("LOG_MSG_CREATE_DB_INCIO", "Create do banco de dados iniciado.");
define("LOG_MSG_CREATE_DB_SUCESSO", "Create do banco de dados efetuado com sucesso.");
define("LOG_MSG_INSERT_DB_DATA_INICIO", "Insert dos dados no banco de dados iniciado.");
define("LOG_MSG_INSERT_DB_DATA_SUCESSO", "Insert dos dados no banco de dados efetuado com sucesso.");
define("LOG_MSG_CREATE_CVC_INICIO", "Criacao dos objetos nao versionados iniciado.");
define("LOG_MSG_CREATE_CVC_SUCESSO", "Criacao dos objetos nao versionados efetuado com sucesso.");
define("LOG_MSG_CREATE_ADMIN_INICIO", "Criacao do usuario admin iniciado.");
define("LOG_MSG_CREATE_ADMIN_SUCESSO", "Criacao do usuario admin efetuado com sucesso.");
define("LOG_MSG_ERRO_EXECUCAO_SCRIPT", "Erro na execução do script.");

