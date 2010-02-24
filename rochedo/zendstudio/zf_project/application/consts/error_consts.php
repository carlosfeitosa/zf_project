<?php
/**
 * Arquivo para definição de constantes de Mensagens de erro do sistema.
 */
// APPLICATION
define("MSG_ERRO_PAGINA_NAO_ENCONTRADA", "Página não encontrada.");
define("MSG_ERRO_APLICACAO", "Erro na aplicação.");
define("MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA", "Propriedade especificada inválida");

// CATEGORIA
define("MSG_ERRO_CATEGORIA_NAO_ATIVA", "Categoria solicitada está inativa.");
define("MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO", "Categoria de e-mail primário não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT", "Categoria de e-mail validação usuário plaintext não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "Categoria de e-mail validação usuário plaintext reenvio não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE", "Categoria Remetente não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO", "Categoria Destinatario não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO", "Categoria de log validacao usuario não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA", "Categoria de log nova pessoa não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL", "Categoria de log nova pessoa perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS", "Categoria de log novo dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL", "Categoria de log novo e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM", "Categoria de log nova mensagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN", "Categoria de log novo token não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LINGUAGEM", "Categoria da linguagem não encontrada no banco de dados");

//TOKEN
define("MSG_ERRO_TOKEN_CHECK_CONSTRAINT","Chave estrangeira do token não confere.");
define("MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO", "Não foi encontrado a requisição solicitada.");
define("MSG_ERRO_TOKEN_ARRAYURLS_INEXISTENTE", "Não foi encontrado a listagem de endereços válidos para acesso.");

// LOGIN
define("MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO", "Usuário master não encontrado no sistema.");

// PERFIL
define("MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "Perfil de usuário não validado não encontrado no sistema.");
define("MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO", "Perfil do sistema não encontrado.");

// PESSOA PERFIL
define("MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO", "PessoaPerfil do sistema não encontrado.");

//DADOS PESSOAIS
define("MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA", "Nome da Pessoa não encontrado.");

// DB
// MAPPER
define("MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO", "Table data gateway inválido.");

//SENDING EMAIL
define("MSG_ERRO_CATEGORIA_MENSAGEM_INVALIDA", "Categoria de mensagem inválida.");
define("MSG_ERRO_CATEGORIA_SISTEMA_EMAIL", "Categoria Email de Sistema não encontrada no sistema.");
define("MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA", "Assinatura de Mensagem de e-mail do sistema não encontrada.");

//TRADUTOR
define("MSG_ERRO_TRADUCAO_NAO_ENCONTRADA", "Tradução não encontrada para a expressão especificada.");