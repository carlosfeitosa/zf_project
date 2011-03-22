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
define("MSG_ERRO_VALOR_NAO_OBJETO_MODELO", "O valor não é uma instancia da classe: ");
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
define("MSG_ERRO_UPDATE_NAO_PERMITIDO", "Este objeto não permite atualização.");

/*
 * CATEGORIA
 */
define("MSG_ERRO_CATEGORIA_NAO_ATIVA", "Categoria solicitada está inativa.");
define("MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO", "Categoria de e-mail primário não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT", "Categoria de e-mail validação usuário plaintext não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "Categoria de e-mail validação usuário plaintext reenvio não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_EMAIL_CONFIRMACAO_CADASTRO_PLAINTEXT", "Categoria de e-mail de confirmação de cadastro plaintext não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE", "Categoria Remetente não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO", "Categoria Destinatario não encontrada no banco de dados.");
define("MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO", "Categoria de log validacao usuario não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA", "Categoria de log nova pessoa não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA", "Categoria de log de atualização de pessoa não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA", "Categoria de log de exclusão de pessoa não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_RACA", "Categoria de log nova raça não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_RACA", "Categoria de log de atualização de raça não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_COMPONENTE", "Categoria de log de inserção de componente não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_COMPONENTE", "Categoria de log de atualização de componente não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_COMPONENTE", "Categoria de log de exclusão de componente não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN", "Categoria de log novo token não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_TOKEN", "Categoria de log atualizacao de token não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log nova pessoa perfil mensagem categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log de atualizacao de pessoa perfil mensagem categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL", "Categoria de log nova pessoa perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL", "Categoria de log de atualizacao pessoa perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS", "Categoria de log novo dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS", "Categoria de log update dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAIS", "Categoria de log DELETE dados pessoais não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log nova pessoaPerfilMensagemCategoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log update pessoaPerfilMensagemCategoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "Categoria de log DELETE pessoaPerfilMensagemCategoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_BIOMETRICOS", "Categoria de log novo dados biometricos não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAS_PERFIS", "Categoria de log novo dados pessoas perfis não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_BIOMETRICOS", "Categoria de log update em dados biometricos não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAS_PERFIS", "Categoria de log update em dados pessoas perfis não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN", "Categoria de log novo login não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_LOGIN", "Categoria de log atualizacao de login não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL", "Categoria de log novo e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_EMAIL", "Categoria de log atualizacao de e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_EMAIL", "Categoria de log exclusão de e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_CATEGORIA", "Categoria de log nova categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_CATEGORIA", "Categoria de log de atualizacao de categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_CATEGORIA", "Categoria de log de exclusão de categoria não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_PERFIL", "Categoria de log de inserção de perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PERFIL", "Categoria de log de atualização de perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_PERFIL", "Categoria de log de exclusão de perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_MODULO", "Categoria de log novo modulo não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_MODULO", "Categoria de log update modulo não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_MODULO", "Categoria de log delete modulo não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_PERFIL", "Categoria de log novo perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_PERFIL", "Categoria de log update perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_PERFIL", "Categoria de log delete perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_ACAO_APLICACAO", "Categoria de log nova acao aplicacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_ACAO_APLICACAO", "Categoria de log de atualizacao de acao aplicacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_ACAO_APLICACAO", "Categoria de log delete acao aplicacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAS_PERFIS", "Categoria de log delete dados pessoas perfis não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_OUTPUT", "Categoria de log delete output não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA_PERFIL", "Categoria de log delete pessoa perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO", "Categoria de log delete formulario não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_BIOMETRICOS", "Categoria de log delete dados biometricos não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO", "Categoria de log nova associacao entre acao aplicacao e metodo validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO", "Categoria de log de atualizacao de associacao entre acao aplicacao e metodo validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO", "Categoria de log delete de associacao entre acao aplicacao e metodo validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_PERFIS", "Categoria de log nova associacao entre acao aplicacao e perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_PERFIS", "Categoria de log de atualizacao de associacao entre acao aplicacao e perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_PERFIS", "Categoria de log delete de associacao entre acao aplicacao e perfil não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_METODO_VALIDACAO", "Categoria de log novo metodo de validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_METODO_VALIDACAO", "Categoria de log de atualizacao de metodo de validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_METODO_VALIDACAO", "Categoria de log delete de metodo de validacao não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM", "Categoria de log nova mensagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_MENSAGEM", "Categoria de log atualizacao de mensagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_MENSAGEM", "Categoria de log delete de mensagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG", "Categoria de log não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_EMAIL", "Categoria de log e-mail não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_CATEGORIA_CHAVE_ESTRANGEIRA", "Categoria de categoria chave estrangeira não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "Categoria de relação categoria chave estrangeira não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LINGUAGEM", "Categoria da linguagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_CVC", "Categoria de CVC não encontrada no banco de dados");
define("MSG_ERRO_TIPO_CATEGORIA_CVC", "Tipo de categoria de CVC não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_WEBSITE", "Categoria de log novo website não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_WEBSITE", "Categoria de log update em website não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_PERFIL_USUARIO", "Categoria de PERFIL_USUARIO não encontrada no banco de dados");
/*
 * FORMULÁRIO
 */
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO", "Categoria de log novo formulario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO", "Categoria de log atualizacao de formulario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log novo grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log atualização grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log exclusão grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO", "Categoria de log novo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO", "Categoria de log de atualizacao de formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER", "Categoria de log novo formulario elemento filter não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER", "Categoria de log atualizacao de formulario elemento filter não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FILTER", "Categoria de log exclusão de formulario elemento filter não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log novo formulario elemento formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log atualizacao de formulario elemento formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log exclusão de formulario elemento formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log novo formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log atualizacao de formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR", "Categoria de log exclusão de formulario elemento validador não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "Categoria de log novo formulario formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO", "Categoria de log atualizacao de formulario formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO", "Categoria de log exclusão de formulario formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE", "Categoria de log novo formulario template não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_OUTPUT", "Categoria de log novo output não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_OUTPUT", "Categoria de log atualizao de output não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_TENTATIVA_AUTENTICACAO_USUARIO", "Categoria de log tentativa de autenticacao de usuario não encontrado no banco de dados");
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
define("MSG_ERROR_NENHUM_PERFIL_ENCONTRADO", "Nenhum perfil foi encontrado no sistema");

/*
 * PESSOA PERFIL
 */
define("MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO", "PessoaPerfil do sistema não encontrado.");
define("MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "PessoaPerfil de Usuario Não Validado não encontrado para esta pessoa.");
define("MSG_ERROR_PESSOAPERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO", "PessoaPerfil de Usuario Validado não encontrado para esta pessoa.");
define("MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO", "PessoaPerfil não encontrado para esta pessoa e para este perfil.");

/*
 * DADOS PESSOAIS
 */
define("MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA", "Nome da Pessoa não encontrado.");
define("MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA", "Dados pessoais não encontrados para esta pessoa.");


/**
 * PARAMETROS
 */
define("MSG_ERRO_PARAMETRO_ID_INVALIDO", "O id passado como parametro é inválido");

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
define("MSG_ERRO_ROWINFO_NAO_ENCONTRADO", "O objeto não possui o atributo 'rowinfo'.");

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
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO_EXISTE", "Não foi possível criar a relação, pois categoria chave estranfeira lá existe.");

// RELACAO CATEGORIA CHAVE ESTRANGEIRA
define("MSG_ERRO_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA_EXISTE", "Não foi possível criar a relação, pois já existe.");

//DADOS PESSOAIS
define("MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADOS", "Objeto dados pessoais não encontrado.");