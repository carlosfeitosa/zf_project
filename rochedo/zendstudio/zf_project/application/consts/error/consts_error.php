<?php
/**
 * Arquivo para definição de constantes de erro do sistema.
 * 
 * Este arquivo contem as definições das constantes de erro do sistema
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 04/06/2012
 */

// includes
require_once APPLICATION_PATH . "/configs/application.php";

// definições de erros da aplicação (geral)
define("MSG_ERRO_APLICACAO", "Desculpe, ocorreu um erro na aplicação.<br>Contate o suporte: <a href='mailto:" . SUPPORT_EMAIL . "'>" . SUPPORT_EMAIL . "</a>");
define("MSG_ERRO_PAGINA_NAO_ENCONTRADA", "Página não encontrada.");
define("MSG_ERRO_URL_INVALIDA", "Url inválida.");

// definições de erros de banco de dados
define("MSG_ERRO_CONEXAO_BANCO", "Falha na conexão com o banco de dados.");
define("MSG_ERRO_DATABASE_CHECKSUM_INVALIDO", "Manipulacao humana de informacoes do banco de dados detectada (checksum invalido).");
define("MSG_ERRO_SAVE_SEM_PESSOAPERFIL_CATEGORIA", "Dados insuficientes para log.");
define("MSG_ERRO_BD_TRANSACAO_OPERACAO_NAO_EXISTENTE", "Operação de transação de banco de dados inválida.");
define("MSG_ERRO_BD_TRANSACAO_ROLLBACK_SEM_TRANSACAO", "Rollback chamado sem transação inicializada.");
define("MSG_ERRO_BD_TRANSACAO_COMMIT_SEM_TRANSACAO", "Commit chamado sem transação inicializada.");
define("MSG_ERRO_BD_PATH_NAO_ENCONTRADO", "Diretório de Scripts do Banco de Dados não encontrado.");
define("MSG_ERRO_DB_EXECUCAO_SCRIPT", "Erro na execução do script.");

// definições de erros de classe
define("MSG_ERRO_PROPRIEDADE_ESPECIFICADA_INVALIDA", "Propriedade especificada inválida: ");
define("MSG_ERRO_VALOR_NAO_OBJETO", "O valor não é um objeto.");
define("MSG_ERRO_VALOR_NAO_OBJETO_MODELO", "O valor não é uma instancia da classe: ");
define("MSG_ERRO_FIND_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->find().");
define("MSG_ERRO_FETCHALL_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->fetchAll().");
define("MSG_ERRO_FETCHLIST_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->fetchList().");
define("MSG_ERRO_SAVE_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->save().");
define("MSG_ERRO_DELETE_METODO_NAO_ENCONTRADO", "O objeto não possui o metodo getMapper()->delete().");
define("MSG_ERRO_DELETE_EXISTEM_FILHOS", "Não é possivel apagar este registro pois ele possui registro(s) filho(s) vinculado e não foi especificado delete em cascata.");
define("MSG_ERRO_UPDATE_NAO_PERMITIDO", "Este objeto não permite atualização.");
define("MSG_ERRO_NAO_OBJETO", "O parametro passado não é um objeto.");
define("MSG_ERRO_ROWINFO_NAO_ENCONTRADO", "O objeto não possui o atributo 'rowinfo'.");
define("MSG_ERRO_OBJETO_NAO_ESPERADO_CONTROLADOR", "O objeto não representa o objeto a qual o controlador faz referencia.");

// definições de erros de controle de versão (cvc)
define("MSG_ERRO_SAVE_UPDATE_VERSAO_DESATUALIZADA", "Não é possivel atualizar este objeto pois existe uma versão mais atualizada no banco de dados.");
define("MSG_ERRO_SAVE_UPDATE_SEM_INFORMACAO_SOBRE_VERSAO", "Para realizar uma operação de update é preciso informar a versão da tupla.");
define("MSG_ERRO_SAVE_UPDATE_SEM_PERSISTENCIA", "Não é possivel atualizar este objeto pois ele não existe mais no banco de dados.");
define("MSG_ERRO_CVC_FALHOU", "Nao foi possivel versionar este objeto: ");
define("MSG_ERRO_TIPO_CATEGORIA_CVC", "Tipo de categoria de CVC não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_CVC", "Categoria de CVC não encontrada no banco de dados");

// definições de erros de manipulação de arquivos/pastas
define("MSG_ERRO_MANIPULACAO_ARQUIVO", "Erro na manipulação de arquivos: ");
define("MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_LEITURA", "Erro ao tentar abrir arquivo para leitura: ");
define("MSG_ERRO_MANIPULACAO_ARQUIVO_PERMISSAO_ESCRITA", "Erro ao tentar abrir arquivo para escrita: ");
define("MSG_ERRO_PATH_INEXISTENTE", "Caminho não encontrado no sistema de arquivos.");

// definições de erros de codificação
define("MSG_ERRO_CODIFICAR_SEM_OPERACAO", "Operação de codificação não encontrada.");

// definições de erros de tipagem
define("MSG_ERRO_TIPO_NAO_TRATADO", "Tipo de dado não tratado.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO", "O valor informado não é do tipo INTEIRO.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_STRING", "O valor informado não é do tipo STRING.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_BOOLEAN", "O valor informado não é do tipo BOOLEAN.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_FLOAT", "O valor informado não é do tipo FLOAT.");
define("MSG_ERRO_TIPO_ERRADO_TIPO_ARRAY", "O valor informado não é do tipo ARRAY.");

// definições de erros de filtros de array
define("MSG_ERRO_ARRAY_FILTER_CHAVE_POSICAO_NAO_ENCONTRADA", "Não foi encontrado a chave de posicao no array contendo os filtros.");
define("MSG_ERRO_ARRAY_FILTER_CHAVE_FILTRO_NAO_ENCONTRADA", "Não foi encontrado a chave de filtro no array contendo os filtros.");
define("MSG_ERRO_ARRAY_FILTER_TIPO_OPERACAO_NAO_CONHECIDA", "Não foi encontrado o tipo de operação do filtro informado no array contendo os filtros.");

// definições de erros de segurança
define("MSG_ERRO_TENTATIVAS_FALHAS_LOGIN_IP_BAN", "IP banido por tentativas excessivas, sem sucesso, de logon.");

// definições de erros de categoria
define("MSG_ERRO_CATEGORIA_NAO_ATIVA", "Categoria solicitada está inativa.");
define("MSG_ERRO_CATEGORIA_NAO_ENCONTRADA", "A categoria solicitada não foi encontrada: ");
define("MSG_ERRO_CATEGORIA_NAO_PODE_SER_CRIADA_SEM_TIPO_CATEGORIA", "A categoria solicitada não pode ser criada pois não foi informado o seu tipo categoria: ");
define("MSG_ERRO_CATEGORIA_LOG", "Categoria de log não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_PERFIL_USUARIO_SISTEMA", "Categoria PERFIL_USUARIO_SISTEMA não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_PERFIL_USUARIO", "Categoria de PERFIL_USUARIO não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_LINGUAGEM", "Categoria da linguagem não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_TIPO_TABELA", "Categoria do tipo de tabela (dicionario de dados) não encontrada no banco de dados");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_SEM_RELACAO", "Relação da categoria com chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_TOKEN_SEM_RELACAO", "Relação de token com categoria chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_EMAIL_SEM_RELACAO", "Relação de e-mail com categoria chave estrangeira não encontrada.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO", "Não foi possível criar a relação categoria chave estranfeira.");
define("MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_CRIAR_RELACAO_EXISTE", "Não foi possível criar a relação, pois categoria chave estranfeira lá existe.");
define("MSG_ERRO_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA_EXISTE", "Não foi possível criar a relação, pois já existe.");

// definições de erros de log
define("MSG_ERRO_CATEGORIA_LOG_TENTATIVA_AUTENTICACAO_USUARIO", "Categoria de log tentativa de autenticacao de usuario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_SUCESSO_AUTENTICACAO_USUARIO", "Categoria de log sucesso na autenticacao de usuario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_MANTER_USUARIO_LOGADO", "Categoria de log manter usuario logado não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_SUCESSO_DESAUTENTICACAO_USUARIO", "Categoria de log sucesso na desautenticacao de usuario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_ACAO_DESATIVADA", "Categoria de log tentativa de acesso a acao desativada não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_ACAO_NAO_PERMITIDA", "Categoria de log tentativa de acesso a acao não permitida não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL", "Categoria de log tentativa de acesso a acao indisponivel atraves de url não encontrado no banco de dados");
define("MSG_ERRO_ABRIR_LOG_FS", "Não foi possível abrir o arquivo de LOG: ");

// definições de erros de categorias para formulário
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO", "Categoria de log novo formulario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO", "Categoria de log atualizacao de formulario não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log novo grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log atualização grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO", "Categoria de log exclusão grupo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO", "Categoria de log novo formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO", "Categoria de log de atualizacao de formulario elemento não encontrado no banco de dados");
define("MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO", "Categoria de log de exclusão de formulario elemento não encontrado no banco de dados");
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


// definições de erros do gerador de formulários
define("MSG_ERRO_AO_TENTAR_ADICIONAR_ELEMENTO_AO_FORMULARIO", "Não foi possivel adicionar elemento ao formulario: ");
define("MSG_ERRO_GRUPO_DECORATOR_JA_PROCESSADO", "Grupo de decorators ja processado.");
define("MSG_ERRO_GRUPO_FILTER_JA_PROCESSADO", "Grupo de filters ja processado.");
define("MSG_ERRO_GRUPO_VALIDATOR_JA_PROCESSADO", "Grupo de validators ja processado.");

// definições de erros de token
define("MSG_ERRO_TOKEN_CHECK_CONSTRAINT", "Chave estrangeira do token não confere.");
define("MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO", "Não foi encontrado a requisição solicitada.");
define("MSG_ERRO_TOKEN_ARRAYURLS_INEXISTENTE", "Não foi encontrado a listagem de endereços válidos para acesso.");

// definições de erros de login/logon
define("MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO", "Usuário master não encontrado no sistema.");
define("MSG_ERRO_LOGIN_NAO_ENCONTRADO", "Login não encontrado.");
define("MSG_ERRO_CRIACAO_LOGIN_ADMIN", "Nao foi possivel criar o usuario administrador: ");

// definições de erros de perfil
define("MSG_ERROR_PERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "Perfil de usuário não validado não encontrado no sistema.");
define("MSG_ERROR_PERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO", "Perfil de usuário validado não encontrado no sistema.");
define("MSG_ERROR_PERFIL_USUARIO_DESENVOLVEDOR_NAO_ENCONTRADO", "Perfil de usuário desenvolvedor não encontrado no sistema.");
define("MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO", "Perfil do sistema não encontrado.");
define("MSG_ERROR_NENHUM_PERFIL_ENCONTRADO", "Nenhum perfil foi encontrado no sistema");

// definições de erros de associação de pessoa com perfil
define("MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO", "Perfil associado ao usuário sistema não encontrado.");
define("MSG_ERROR_PESSOAPERFIL_USUARIO_NAO_VALIDADO_NAO_ENCONTRADO", "Associação pessoa com o perfil de usuário não validado não encontrado.");
define("MSG_ERROR_PESSOAPERFIL_USUARIO_VALIDADO_NAO_ENCONTRADO", "Associação pessoa com o perfil de usuário validado não encontrado.");
define("MSG_ERROR_PESSOAPERFIL_NAO_ENCONTRADO", "Nenhum perfil associado foi encontrado para esta pessoa/perfil.");

// definições de erros com a entidade "pessoa"
define("MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA", "Nome não encontrado.");
define("MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA", "Dados pessoais não encontrados para esta pessoa.");
define("MSG_ERRO_DADOS_BIOMETRICOS_PESSOA_NAO_ENCONTRADO_NO_SISTEMA", "Dados biometricos da pessoa não encontrado.");
define("MSG_ERRO_DADOS_PESSOAIS_TROCA_SENHA", "'Nao foi possivel trocar a senha do usuario.'");
define("MSG_ERRO_DADOS_PESSOAIS_DADOS_CONTA", "Erro ao tentar salvar os dados da conta: ");
define("MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADOS", "Objeto dados pessoais não encontrado.");

// definições de erros de parametros
define("MSG_ERRO_PARAMETRO_ID_INVALIDO", "O id passado como parametro é inválido.");

// definições de erros do mapper
define("MSG_ERRO_TABLE_DATA_GATEWAY_INVALIDO", "Table data gateway inválido.");
define("MSG_ERRO_MAPPER_NAO_ENCONTRADO", "O objeto não possui mapper.");

// definições de erros de e-mail
define("MSG_ERRO_CATEGORIA_MENSAGEM_INVALIDA", "Categoria de mensagem inválida.");
define("MSG_ERRO_CATEGORIA_SISTEMA_EMAIL", "Categoria email do sistema não encontrada no sistema.");
define("MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA", "Assinatura de mensagem de e-mail do sistema não encontrada.");
define("MSG_ERRO_TRANSPORT_INVALIDO", "Problemas na inicialização do transporte SMTP: ");
define("MSG_ERRO_ENVIAR_EMAIL", "Não foi possível enviar o e-mail: ");
define("MSG_ERRO_ASSOCIACAO_PESSOAS_PEFIS_MENSAGENS_CATEGORIAS_FALHOU", "Nao foi possivel salvar as relações das pessoas com perfis relacionadas com a mensagem e categorias: ");
define("MSG_ERRO_EMAIL_JA_VALIDADO", "Email já validado no sistema.");
define("MSG_ERRO_EMAIL_VALIDACAO_EXPIRADO", "Link para validação expirado, recomeçe o seu cadastro.");
define("MSG_ERRO_EMAIL_CHECK_CONSTRAINT","Chave estrangeira do e-mail não confere.");

// definições de erros do tradutor (dicionario de expressão)
define("MSG_ERRO_TRADUCAO_NAO_ENCONTRADA", "Tradução não encontrada para a expressão especificada.");
define("MSG_ERRO_UTILIZANDO_LINGUA_PADRAO_TRADUCAO_NAO_ENCONTRADA", "(Translation not avaliable)");

// definições de erros do rascunho
define("MSG_ERRO_SALVAR_RASCUNHO", "Erro ao salvar rascunho: ");