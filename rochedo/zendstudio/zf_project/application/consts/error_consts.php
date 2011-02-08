<?php
/**
 * Arquivo para definição de constantes de Mensagens de erro do sistema.
 * 
 */
require_once(APPLICATION_PATH . "/configs/application.php");

/*
 * APPLICATION
 */
define("MSG_ERRO_PAGINA_NAO_ENCONTRADA", "Página não encontrada.");
define("MSG_ERRO_CONEXAO_BANCO", "Falha na conexão com o banco de dados.");
define("MSG_ERRO_APLICACAO", "Desculpe, ocorreu um erro na aplicação.<br>Contate o suporte: <a href='mailto:" . SUPPORT_EMAIL . "'>" . SUPPORT_EMAIL . "</a>");
define("MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA", "Propriedade especificada inválida.");
define("MSG_ERRO_MANIPULACAO_ARQUIVO", "Erro na manipulação de arquivos: ");
define("MSG_ERRO_URL_INVALIDA", "Url inválida.");
define("MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA", "Erro ao tentar abrir arquivo para leitura: ");
define("MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA", "Erro ao tentar abrir arquivo para escrita: ");
define("MSG_ERRO_PATH_INEXISTENTE", "Caminho não encontrado no sistema de arquivos.");
define("MSG_ERRO_CODIFICAR_SEM_OPERACAO", "Operação de codificação não encontrada.");
define("MSG_ERRO_VALOR_NAO_OBJETO", "O valor não é um objeto.");
define("MSG_ERRO_SAVE_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->save().");
define("MSG_ERRO_DELETE_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->delete().");
define("MSG_ERRO_DELETE_EXISTEM_FILHOS", "Não é possivel apagar este registro pois ele possui registro(s) filho(s) vinculado e não foi especificado delete em cascata.");
define("MSG_ERRO_SAVE_SEM_PESSOAPERFIL_CATEGORIA", "Dados insuficientes para log.");
define("MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA", "Não é possivel atualizar este objeto pois existe uma versão mais atualizada no banco de dados.");
define("MSG_ERRO_SAVE_UPDATE_SEM_INFORMACAO_SOBRE_VERSAO", "Para realizar uma operação de update é preciso informar a versão da tupla.");
define("MSG_ERRO_SAVE_UPDATE_SEM_PERSISTENCIA", "Não é possivel atualizar este objeto pois ele não existe mais no banco de dados.");
define("MSG_ERRO_TIPO_NAO_TRATADO", "Tipo de dado não tratado.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO", "O valor informado não é do tipo INTEIRO.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_STRING", "O valor informado não é do tipo STRING.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_BOOLEAN", "O valor informado não é do tipo BOOLEAN.");
define("MSG_ERRO_ARRAY_FILTER_CHAVE_POSICAO_NAO_ENCONTRADA", "Não foi encontrado a chave de posicao no array contendo os filtros.");
define("MSG_ERRO_ARRAY_FILTER_CHAVE_FILTRO_NAO_ENCONTRADA", "Não foi encontrado a chave de filtro no array contendo os filtros.");
define("MSG_ERRO_ARRAY_FILTER_TIPO_OPERACAO_NAO_CONHECIDA", "Não foi encontrado o tipo de operação do filtro informado no array contendo os filtros.");

/*
 * CATEGORIA
 */
define("MSG_ERRO_CATEGORIA_NAO_ATIVA", "Categoria solicitada está inativa.");
define("MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO", "Categoria de e-mail primário não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT", "Categoria de e-mail validação usuário plaintext não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "Categoria de e-mail validação usuário plaintext reenvio não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE", "Categoria Remetente não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO", "Categoria Destinatario não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO", "Categoria de log validacao usuario não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA", "Categoria de log nova pessoa não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN", "Categoria de log novo token não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log nova pessoa perfil mensagem categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL", "Categoria de log nova pessoa perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS", "Categoria de log novo dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS", "Categoria de log update em dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_BIOMETRICOS", "Categoria de log novo dados biometricos não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_BIOMETRICOS", "Categoria de log update em dados biometricos não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN", "Categoria de log novo login não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL", "Categoria de log novo e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM", "Categoria de log nova mensagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_EMAIL", "Categoria de log e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_CATEGORIA_CHAVE_ESTRANGEIRA", "Categoria de categoria chave estrangeira não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "Categoria de relação categoria chave estrangeira não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LINGUAGEM", "Categoria da linguagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_CVC", "Categoria de CVC não encontrada no banco de dados");
define("MSG_ERRO_TIPO_CATEGORIA_CVC", "Tipo de categoria de CVC não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_WEBSITE", "Categoria de log novo website não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_WEBSITE", "Categoria de log update em website não encontrada no banco de dados");
/*
 * FORMULÁRIO
 */
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO", "Categoria de log novo formulario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO", "Categoria de log novo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER", "Categoria de log novo formulario elemento filter não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log novo formulario elemento formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log novo formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "Categoria de log novo formulario formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE", "Categoria de log novo formulario template não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_OUTPUT", "Categoria de log novo output não encontrado no banco de dados");
define("MSG_ERRO_FORMULARIO_SEM_TEMPLATE", "Não foi encontrado nenhum template para este formulário.");
define("MSG_ERRO_FORMULARIO_SEM_MODULO", "Não foi encontrado nenhum módulo para este formulário.");
define("MSG_ERRO_SUBFORMULARIO_SEM_FORMULARIO_PAI", "Não foi encontrado formulario pai para este sub-formulário.");
define("MSG_ERRO_SUBFORMULARIO_SEM_TEMPLATE", "Não foi encontrado nenhum template para este sub-formulário.");
define("MSG_ERRO_SUBFORMULARIO_SEM_MODULO", "Não foi encontrado nenhum módulo para este sub-formulário.");
define("MSG_ERRO_FORMULARIO_TIPO_CATEGORIA", "Este formulário não possui um tipo de categoria compativel.");
define("MSG_ERRO_FORMULARIO_SUB_FORMULARIO_CATEGORIA", "Este sub-formulário não possui uma categoria compativel.");
define("MSG_ERRO_GERAR_SUB_FORMULARIO", "Não foi possivel gerar este sub-formulário.");
define("MSG_ERRO_GERAR_TODOS_FORMULARIO", "Erro ao tentar gerar o formulario ");
define("MSG_ERRO_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_SEM_FORMULARIO", "Não foi encontrado o formulario vinculado com este elemento.");

/*
 * TOKEN
 */
define("MSG_ERRO_TOKEN_CHECK_CONSTRAINT","Chave estrangeira do token não confere.");
define("MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO", "Não foi encontrado a requisição solicitada.");
define("MSG_ERRO_TOKEN_ARRAYURLS_INEXISTENTE", "Não foi encontrado a listagem de endereços válidos para acesso.");

/*
 * LOGIN
 */
define("MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO", "Usuário master não encontrado no sistema.");

/*
 * PERFIL
 */
define("MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "Perfil de usuário não validado não encontrado no sistema.");
define("MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO", "Perfil de usuário validado não encontrado no sistema.");
define("MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO", "Perfil do sistema não encontrado.");

/*
 * PESSOA PERFIL
 */
define("MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO", "PessoaPerfil do sistema não encontrado.");
define("MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "PessoaPerfil de Usuario Não Validado não encontrado para esta pessoa.");

/*
 * DADOS PESSOAIS
 */
define("MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA", "Nome da Pessoa não encontrado.");

/*
 * DB
 * MAPPER
 */
define("MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO", "Table data gateway inválido.");

/*
 * SENDING EMAIL
 */
define("MSG_ERRO_CATEGORIA_MENSAGEM_INVALIDA", "Categoria de mensagem inválida.");
define("MSG_ERRO_CATEGORIA_SISTEMA_EMAIL", "Categoria Email de Sistema não encontrada no sistema.");
define("MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA", "Assinatura de Mensagem de e-mail do sistema não encontrada.");
define("MSG_ERRO_TRANSPORT_INVALIDO", "Problemas na inicialização do transporte SMTP: ");
define("MSG_ERRO_ENVIAR_EMAIL", "Não foi possível enviar o e-mail: ");

/*
 * EMAIL
 */
define("MSG_ERRO_EMAIL_JA_VALIDADO", "Email já validado no sistema.");
define("MSG_ERRO_EMAIL_VALIDACAO_EXPIRADO", "Link para validação expirado, recomeçe o seu cadastro.");
define("MSG_ERRO_EMAIL_CHECK_CONSTRAINT","Chave estrangeira do e-mail não confere.");

/**
 * OBJETO
 */
define("MSG_ERRO_NAO_OBJETO", "O parametro passado não é um objeto.");

/*
 * TRADUTOR
 */
define("MSG_ERRO_TRADUCAO_NAO_ENCONTRADA", "Tradução não encontrada para a expressão especificada.");
define("MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA", "(Translation not avaliable)");

/*
 * LOG
 */
define("MSG_ERRO_ABRIR_LOG_FS", "Não foi possível abrir o arquivo de LOG: ");


// TRANSACAO DE BANCO DE DADOS
define("MSG_ERRO_BD_TRANSACAO_OPERACAO_NAO_EXISTENTE", "Operação de transação de banco de dados inválida.");
define("MSG_ERRO_BD_TRANSACAO_ROLLBACK_SEM_TRANSACAO", "Rollback chamado sem transação inicializada.");
define("MSG_ERRO_BD_TRANSACAO_COMMIT_SEM_TRANSACAO", "Commit chamado sem transação inicializada.");

// GERACAO BANDO DE DADOS
define("MSG_ERRO_BD_PATH_NAO_ENCONTRADO", "Diretório de Scripts do Banco de Dados não encontrado.");
define("MSG_ERRO_EXECUCAO_SCRIPT", "Erro na execução do script.");

// CATEGORIA CHAVE ESTRANGEIRA
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_SEM_RELACAO", "Relação da categoria com chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_TOKEN_SEM_RELACAO", "Relação de token com categoria chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_EMAIL_SEM_RELACAO", "Relação de e-mail com categoria chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO", "Não foi possível criar a relação categoria chave estranfeira.");

//DADOS PESSOAIS
define("MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADOS", "Objeto dados pessoais não encontrado.");