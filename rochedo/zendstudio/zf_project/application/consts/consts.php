<?php
/**
 * Arquivo para definição de contantes do sistema.
 * 
 */


/**
 * REQUIRES
 */
require_once("lang_consts.php");
require_once("error_consts.php");
require_once("log_consts.php");
require_once("dictionary_consts.php");

/**
 * APLICAÇÃO
 */
define("RESOURCE_TYPE_BASICO_PLUGINS", "plugins");
define("RESOURCE_PATH_BASICO_PLUGINS", "actionControllers/plugins");
define("RESOURCE_NAMESPACE_BASICO_PLUGINS", "Controller_Plugin");
define("RESOURCE_TYPE_BASICO_ABSTRACTS", "abstracts");
define("RESOURCE_PATH_BASICO_ABSTRACTS", "controllers/abstracts");
define("RESOURCE_NAMESPACE_BASICO_ABSTRACTS", "Abstract_");
define("RESOURCE_TYPE_BASICO_OPCONTROLLERS", "OPControllers");
define("RESOURCE_PATH_BASICO_OPCONTROLLERS", "controllers");
define("RESOURCE_NAMESPACE_BASICO_OPCONTROLLERS", "OPController_");

define("TAG_LINK", "@link");
define("JAVASCRIPT_HISTORY_GO_BACK", "javascript: history.go(-2);");

define("IDENTACAO_PADRAO", "    ");
define("QUEBRA_DE_LINHA", PHP_EOL);
define("QUEBRA_DE_LINHA_HTML", "<br>");
define("TAG_ABRE_LISTA_NAO_ORDENADA", "<ul>");
define("TAG_ABRE_LISTA_NAO_ORDENADA_ERROR", "<ul id = 'errorUl'>");
define("TAG_FECHA_LISTA_NAO_ORDENADA", "</ul>");
define("TAG_ABRE_ITEM_LISTA_NAO_ORDENADA", "<li>");
define("TAG_FECHA_ITEM_LISTA_NAO_ORDENADA", "</li>");
define("TAG_ABRE_TITULO", "<h3>");
define("TAG_FECHA_TITULO", "</h3>");
define("TAG_ABRE_SUBTITULO", "<h4>");
define("TAG_FECHA_SUBTITULO", "</h4>");
define("TAG_ABRE_MENSAGEM", "<h5>");
define("TAG_FECHA_MENSAGEM", "</h5>");
define("ASPAS_SIMPLES_ESCAPADA_HTML", '\\\'');
define("CARACTER_QUEBRA_ELEMENTOS_OBJETO", ",");
define("CARACTER_PREFIXO_ATRIBUTO_PRIVADO_OBJETO", "_");
define("CARACTER_BARRA_URL", "/");
define("CARACTER_CODIFICACAO_BARRA_URL", "|");
define("CARACTER_CODIFICACAO_BARRA_URL_HTML_ESCAPADO", "%7C");
define("CARACTER_CODIFICACAO_ACAO_COMPLETA", "|");
define("INCLUDE_INCLUDE_ONCE", "include_once");
define("INCLUDE_REQUIRE_ONCE", "require_once");
define("INCLUDE_INCLUDE", "include");
define("INCLUDE_REQUIRE", "require");
define("GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT", true);
define("CODIFICAR_OBJETO_TO_ENCODED_STRING", "CODIFICAR_OBJETO_TO_ENCODED_STRING");
define("CODIFICAR_ENCODED_STRING_TO_ARRAY", "CODIFICAR_ENCODED_STRING_TO_ARRAY");
define("CODIFICAR_OBJETO_TO_ARRAY", "CODIFICAR_OBJETO_TO_ARRAY");
define("CODIFICAR_OBJETO_TO_ARRAY_USANDO_BLACKLIST_ATRIBUTOS_SISTEMA", "CODIFICAR_OBJETO_TO_ARRAY_USANDO_BLACKLIST_ATRIBUTOS_SISTEMA");
define("ID_GENERICO", "id_generico");
define("TIPO_INTEIRO", 11);
define("TIPO_STRING", 12);
define("TIPO_BOOLEAN", 13);
define("TIPO_FLOAT", 14);
define("TIPO_DATE", 15);
define("AUTH_TABLE", "login");
define("AUTH_IDENTITY_COLUMN", "login");
define("AUTH_CREDENTIAL_COLUMN", "senha");
define("AUTH_IDENTITY_ARRAY_KEY", "BasicoAutenticacaoUsuarioLogin");
define("AUTH_CREDENTIAL_ARRAY_KEY", "BasicoAutenticacaoUsuarioSenha");
define("AUTH_ID_LOGIN_SESSION_KEY", "AUTH_ID_LOGIN_SESSION_KEY");
define("PERFIL_ID_PERFIL_PADRAO_KEY", "PERFIL_ID_PERFIL_PADRAO_KEY");
define("AUTH_KEEP_LOGGED_KEY", "BasicoAutenticacaoUsuarioLoginManterLogado");
define("ROWINFO_SYSTEM_STARTUP_MASTER", "SYSTEM_STARTUP_MASTER");
define("ROWINFO_ATRIBUTE_NAME", "rowinfo");
define("REQUEST_ACTION_KEY", "action");
define("PROPRIEDADE_DATAHORA_CADASTRO", "dataHoraCadastro");
define("PROPRIEDADE_DATAHORA_ULTIMA_ATUALIZACAO", "dataHoraUltimaAtualizacao");
define("SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP", "inicioProcessamentoMicrosegundosPHP");
define("SESSION_POOL_REQUESTS_ARRAY", "poolRequestsArray");
define("SESSION_CHAVE_POST_ULTIMO_REQUEST", "chavePostUltimoRequest");
define("SESSION_POST_ULTIMO_REQUEST", "postUltimoRequest");
define("SESSION_AUTHENTICATED_USER_IP", "authenticatedUserIp");
define("CVC_PARAM_CHAVE_POST_ULTIMO_REQUEST", "chavePostUltimoRequest");
define("CVC_PARAM_SOBRESCREVER_ATUALIZACAO", "sobrescreverAtualizacao");
define("CVC_PARAM_CANCELAR", "cancelar");
define("CVC_PARAM_NOME_OBJETO_EM_CONFLITO", "nomeObjetoEmConflito");
define("CVC_PARAM_ID_OBJETO_EM_CONFLITO", "idObjetoEmConflito");


// LOGIN

define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_EXPIRADO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_EXPIRADO");
define("QUANTIDADE_TENTATIVAS_LOGIN_MAX", 5);
define("QUANTIDADE_TENTATIVAS_LOGIN_IP_BAN_MAX", 10);
define("ADMIN_LOGIN_NAME_DATABASE_RESET", "admin");


// USUARIO
define("DEFAULT_USER_LANGUAGE", "DEFAULT_USER_LANGUAGE");

// DATABASE
define("TABLE_ID_FIELD", "id");
define("DB_BEGIN_TRANSACTION", 1);
define("DB_COMMIT_TRANSACTION", 2);
define("DB_ROLLBACK_TRANSACTION", 3);
define("SESSION_DB", "SESSION_DB");
define("ARRAY_TABLE_DEPENDENCIES_FK_TABLE", "fk_table");
define("ARRAY_TABLE_DEPENDENCIES_FK_COLUMN", "fk_column");
define("ARRAY_TABLE_DEPENDENCIES_PK_TABLE", "pk_table");
define("ARRAY_TABLE_DEPENDENCIES_PK_COLUMN", "pk_column");
define("ARRAY_TABLE_DEPENDENCIES_CONSTRAINT_NAME", "constraint_name");


// ARRAY
define("ARRAY_FILTER_EXCLUDE_POSITION_BEGIN", 21);
define("ARRAY_FILTER_EXCLUDE_POSITION_MIDDLE", 22);
define("ARRAY_FILTER_EXCLUDE_POSITION_END", 23);
define("ARRAY_FILTER_INCLUDE_POSITION_BEGIN", 24);
define("ARRAY_FILTER_INCLUDE_POSITION_MIDDLE", 25);
define("ARRAY_FILTER_INCLUDE_POSITION_END", 26);
define("ARRAY_FILTER_CHAVE_POSICAO", "POSICAO");
define("ARRAY_FILTER_CHAVE_FILTRO", "FILTRO");

/**
 * TIPO CATEGORIAS
 */
define("TIPO_CATEGORIA_SISTEMA", "SISTEMA");
define("TIPO_CATEGORIA_LINGUAGEM", "LINGUAGEM");
define("TIPO_CATEGORIA_PERFIL", "PERFIL");
define("TIPO_CATEGORIA_FORMULARIO", "FORMULARIO");

/**
 * CATEGORIAS
 */
define("FORMULARIO_SUB_FORMULARIO", "FORMULARIO_SUB_FORMULARIO");
define("MENSAGEM_EMAIL_SIMPLES", "MENSAGEM_EMAIL_SIMPLES");
define("PERFIL_USUARIO_NAO_VALIDADO", "USUARIO_NAO_VALIDADO");
define("PERFIL_USUARIO_VALIDADO", "USUARIO_VALIDADO");
define("PERFIL_USUARIO_PUBLICO", "USUARIO_PUBLICO");
define("PERFIL_USUARIO_ADMINISTRADOR", "USUARIO_ADMINISTRADOR");
define("PERFIL_USUARIO_DESENVOLVEDOR", "USUARIO_DESENVOLVEDOR");
define("PERFIL_ACAO_DESATIVADA", "PERFIL_ACAO_DESATIVADA");
define("APPLICATION_SYSTEM_PERFIL", "SISTEMA");
define("EMAIL_PRIMARIO", "EMAIL_PRIMARIO");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO", "MENSAGEM_EMAIL_VALIDACAO_USUARIO");
define("MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN_PLAINTEXT","MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN_PLAINTEXT");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT","MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_TENTATIVA_REGISTRO_UTILIZANDO_EMAIL_PRIMARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT");
define("LOG_VALIDACAO_USUARIO", "LOG_VALIDACAO_USUARIO");
define("LOG_NOVA_PESSOA", "LOG_NOVA_PESSOA");
define("LOG_UPDATE_PESSOA", "LOG_UPDATE_PESSOA");
define("LOG_DELETE_PESSOA", "LOG_DELETE_PESSOA");
define("LOG_NOVO_COMPONENTE", "LOG_NOVO_COMPONENTE");
define("LOG_UPDATE_COMPONENTE", "LOG_UPDATE_COMPONENTE");
define("LOG_DELETE_COMPONENTE", "LOG_DELETE_COMPONENTE");
define("LOG_NOVO_WEBSITE", "LOG_NOVO_WEBSITE");
define("LOG_NOVA_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS", "LOG_NOVA_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS");
define("LOG_UPDATE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS", "LOG_UPDATE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS");
define("LOG_DELETE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS", "LOG_DELETE_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS");
define("LOG_NOVA_PESSOAS_PERFIS", "LOG_NOVA_PESSOAS_PERFIS");
define("LOG_UPDATE_PESSOAS_PERFIS", "LOG_UPDATE_PESSOAS_PERFIS");
define("LOG_DELETE_PESSOAS_PERFIS", "LOG_DELETE_PESSOAS_PERFIS");
define("LOG_NOVA_RACA", "LOG_NOVA_RACA");
define("LOG_UPDATE_RACA", "LOG_UPDATE_RACA");
define("LOG_DELETE_RACA", "LOG_DELETE_RACA");
define("LOG_NOVO_DADOS_PESSOAIS", "LOG_NOVO_DADOS_PESSOAIS");
define("LOG_UPDATE_DADOS_PESSOAIS", "LOG_UPDATE_DADOS_PESSOAIS");
define("LOG_DELETE_DADOS_PESSOAIS", "LOG_DELETE_DADOS_PESSOAIS");
define("LOG_NOVO_DADOS_BIOMETRICOS", "LOG_NOVO_DADOS_BIOMETRICOS");
define("LOG_NOVO_DADOS_PESSOAS_PERFIS", "LOG_NOVO_DADOS_PESSOAS_PERFIS");
define("LOG_UPDATE_DADOS_BIOMETRICOS", "LOG_UPDATE_DADOS_BIOMETRICOS");
define("LOG_UPDATE_DADOS_PESSOAS_PERFIS", "LOG_UPDATE_DADOS_PESSOAS_PERFIS");
define("LOG_UPDATE_WEBSITE", "LOG_UPDATE_WEBSITE");
define("LOG_DELETE_WEBSITE", "LOG_DELETE_WEBSITE");
define("LOG_NOVO_EMAIL", "LOG_NOVO_EMAIL");
define("LOG_UPDATE_EMAIL", "LOG_UPDATE_EMAIL");
define("LOG_DELETE_EMAIL", "LOG_DELETE_EMAIL");
define("LOG_NOVA_MASCARA", "LOG_NOVO_MASCARA");
define("LOG_UPDATE_MASCARA", "LOG_UPDATE_MASCARA");
define("LOG_DELETE_MASCARA", "LOG_DELETE_MASCARA");
define("LOG_NOVA_CATEGORIA", "LOG_NOVA_CATEGORIA");
define("LOG_UPDATE_CATEGORIA", "LOG_UPDATE_CATEGORIA");
define("LOG_DELETE_CATEGORIA", "LOG_DELETE_CATEGORIA");
define("LOG_NOVO_TIPO_CATEGORIA", "LOG_NOVO_TIPO_CATEGORIA");
define("LOG_UPDATE_TIPO_CATEGORIA", "LOG_UPDATE_TIPO_CATEGORIA");
define("LOG_DELETE_TIPO_CATEGORIA", "LOG_DELETE_TIPO_CATEGORIA");
define("LOG_NOVO_PERFIL", "LOG_NOVO_PERFIL");
define("LOG_UPDATE_PERFIL", "LOG_UPDATE_PERFIL");
define("LOG_DELETE_PERFIL", "LOG_DELETE_PERFIL");
define("LOG_NOVO_PAIS", "LOG_NOVO_PAIS");
define("LOG_UPDATE_PAIS", "LOG_UPDATE_PAIS");
define("LOG_DELETE_PAIS", "LOG_DELETE_PAIS");
define("LOG_NOVA_ACAO_APLICACAO", "LOG_NOVA_ACAO_APLICACAO");
define("LOG_UPDATE_ACAO_APLICACAO", "LOG_UPDATE_ACAO_APLICACAO");
define("LOG_DELETE_ACAO_APLICACAO", "LOG_DELETE_ACAO_APLICACAO");
define("LOG_DELETE_FORMULARIO", "LOG_DELETE_FORMULARIO");
define("LOG_DELETE_DADOS_BIOMETRICOS", "LOG_DELETE_DADOS_BIOMETRICOS");
define("LOG_DELETE_DADOS_PESSOAS_PERFIS", "LOG_DELETE_DADOS_PESSOAS_PERFIS");
define("LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO", "LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO");
define("LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO", "LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO");
define("LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO", "LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO");
define("LOG_NOVA_ACOES_APLICACAO_PERFIS", "LOG_NOVA_ACOES_APLICACAO_PERFIS");
define("LOG_UPDATE_ACOES_APLICACAO_PERFIS", "LOG_UPDATE_ACOES_APLICACAO_PERFIS");
define("LOG_DELETE_ACOES_APLICACAO_PERFIS", "LOG_DELETE_ACOES_APLICACAO_PERFIS");
define("LOG_NOVO_METODO_VALIDACAO", "LOG_NOVO_METODO_VALIDACAO");
define("LOG_UPDATE_METODO_VALIDACAO", "LOG_UPDATE_METODO_VALIDACAO");
define("LOG_DELETE_METODO_VALIDACAO", "LOG_DELETE_METODO_VALIDACAO");
define("LOG_NOVO_LOGIN", "LOG_NOVO_LOGIN");
define("LOG_UPDATE_LOGIN", "LOG_UPDATE_LOGIN");
define("LOG_DELETE_LOGIN", "LOG_DELETE_LOGIN");
define("LOG_NOVA_MENSAGEM", "LOG_NOVA_MENSAGEM");
define("LOG_UPDATE_MENSAGEM", "LOG_UPDATE_MENSAGEM");
define("LOG_DELETE_MENSAGEM", "LOG_DELETE_MENSAGEM");
define("LOG_NOVO_TOKEN", "LOG_NOVO_TOKEN");
define("LOG_UPDATE_TOKEN", "LOG_UPDATE_TOKEN");
define("LOG", "LOG");
define("LOG_EMAIL", "LOG_EMAIL");
define("LOG_TENTATIVA_AUTENTICACAO_USUARIO", "LOG_TENTATIVA_AUTENTICACAO_USUARIO");
define("LOG_SUCESSO_AUTENTICACAO_USUARIO", "LOG_SUCESSO_AUTENTICACAO_USUARIO");
define("LOG_SUCESSO_DESAUTENTICACAO_USUARIO", "LOG_SUCESSO_DESAUTENTICACAO_USUARIO");
define("LOG_MANTER_USUARIO_LOGADO", "LOG_MANTER_USUARIO_LOGADO");
define("LOG_ACAO_DESATIVADA", "LOG_ACAO_DESATIVADA");
define("LOG_ACAO_NAO_PERMITIDA", "LOG_ACAO_NAO_PERMITIDA");
define("LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL", "LOG_ACAO_INDISPONIVEL_ATRAVES_DE_URL");
define("LOG_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO", "LOG_IP_USUARIO_DIFERENTE_IP_USUARIO_AUTENTICADO_SESSAO");
define("LOG_CATEGORIA_CHAVE_ESTRANGEIRA", "LOG_CATEGORIA_CHAVE_ESTRANGEIRA");
define("LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA");
define("LOG_TENTATIVA_ACESSO_HOST_BANIDO", "LOG_TENTATIVA_ACESSO_HOST_BANIDO");
define("LOG_ADICIONA_IP_HOSTS_DENY", "LOG_ADICIONA_IP_HOSTS_DENY");
define("LOG_REMOVE_IP_HOSTS_DENY", "LOG_REMOVE_IP_HOSTS_DENY");
define("LOG_ATIVA_IP_HOSTS_DENY", "LOG_ATIVA_IP_HOSTS_DENY");
define("LOG_DESATIVA_IP_HOSTS_DENY", "LOG_DESATIVA_IP_HOSTS_DENY");
define("LOG_TENTATIVA_REGERAR_CHECKSUM", "LOG_TENTATIVA_REGERAR_CHECKSUM");
define("LOG_SUCESSO_REGERAR_CHECKSUM", "LOG_SUCESSO_REGERAR_CHECKSUM");
define("MENSAGEM_PESSOAS_ENVOLVIDAS", "MENSAGEM_PESSOAS_ENVOLVIDAS");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE", "MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA", "MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA");
define("SISTEMA_EMAIL", "SISTEMA_EMAIL");
define("FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO", "FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO");
define("FORMULARIO_ELEMENTO_HASH", "FORMULARIO_ELEMENTO_HASH");
define("FORMULARIO_ELEMENTO_BUTTON", "FORMULARIO_ELEMENTO_BUTTON");
define("FORMULARIO_ELEMENTO_HTML", "FORMULARIO_ELEMENTO_HTML");
define("FORMULARIO_ELEMENTO_HIDDEN", "FORMULARIO_ELEMENTO_HIDDEN");
define("CATEGORIA_CVC", "CVC");
define("TIPO_CATEGORIA_CVC", "CVC");
define("CATEGORIA_PERFIL_USUARIO", "PERFIL_USUARIO");
define("CATEGORIA_PERFIL_USUARIO_SISTEMA", "PERFIL_USUARIO_SISTEMA");
define("DESCRICAO_CATEGORIA_CRIADA_POR_DEMANDA", "Categoria criada por demanda.");
define("CATEGORIA_FORMULARIO_INPUT_LOGIN", "FORMULARIO_INPUT_LOGIN");

/**
 * FORMULÁRIOS
 */
define("LOG_NOVO_FORMULARIO", "LOG_NOVO_FORMULARIO");
define("LOG_UPDATE_FORMULARIO", "LOG_UPDATE_FORMULARIO");
define("LOG_NOVO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_ELEMENTO");
define("LOG_UPDATE_FORMULARIO_ELEMENTO", "LOG_UPDATE_FORMULARIO_ELEMENTO");
define("LOG_DELETE_FORMULARIO_ELEMENTO", "LOG_DELETE_FORMULARIO_ELEMENTO");
define("LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO", "LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO");
define("LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO", "LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO");
define("LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO", "LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FILTER", "LOG_NOVO_FORMULARIO_ELEMENTO_FILTER");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER", "LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER");
define("LOG_DELETE_FORMULARIO_ELEMENTO_FILTER", "LOG_DELETE_FORMULARIO_ELEMENTO_FILTER");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_TEMPLATE", "LOG_NOVO_FORMULARIO_TEMPLATE");
define("LOG_UPDATE_FORMULARIO_TEMPLATE", "LOG_UPDATE_FORMULARIO_TEMPLATE");
define("LOG_NOVO_OUTPUT", "LOG_NOVO_OUTPUT");
define("LOG_UPDATE_OUTPUT", "LOG_UPDATE_OUTPUT");
define("LOG_DELETE_OUTPUT", "LOG_DELETE_OUTPUT");
define("FORM_TOKEN_ELEMENT_NAME", "Csrf");
define("FORM_AUTENTICACAO_USUARIO", "FORM_AUTENTICACAO_USUARIO");
define("FORM_ELEMENT_HIDDEN", "hidden");

/**
 * RASCUNHO
 */
define("LOG_NOVO_RASCUNHO", "LOG_NOVO_RASCUNHO");
define("LOG_UPDATE_RASCUNHO", "LOG_UPDATE_RASCUNHO");
define("LOG_DELETE_RASCUNHO", "LOG_DELETE_RASCUNHO");

// RADIO BUTTON SEXO DB VALUES
define("FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO", "M");
define("FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO", "F");


// TAG PARA SUBSTITUICAO DA OPÇÃO "Não desejo informar."
define("TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR", "@NAO_DESEJO_INFORMAR");

/**
 * MODULOS
 */
define('LOG_NOVO_MODULO', 'LOG_NOVO_MODULO');
define('LOG_UPDATE_MODULO', 'LOG_UPDATE_MODULO');
define('LOG_DELETE_MODULO', 'LOG_DELETE_MODULO');


define("FORM_ELEMENT_HASH", "FORM_HASH");
define("FORM_ELEMENT_HTML_DINAMIC_CONTENT", "FORM_FIELD_HTML_CONTENT_DINAMICO");
define("FORM_ELEMENT_HTML_JAVASCRIPT_CONTENT", "FORM_FIELD_HTML_JAVASCRIPT");

define("FORM_GERADOR_OUTPUT_DOJO", "OUTPUT_DOJO");
define("FORM_GERADOR_OUTPUT_HTML", "OUTPUT_HTML");
define("FORM_GERADOR_OUTPUT_AJAX", "OUTPUT_AJAX");
define("FORM_ELEMENTO_NAME_VALIDAR_URL", "validarUrl");

define("OUTPUT_HTML", "OUTPUT_HTML");

$header = <<<TEXT
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: @data_criacao
*
* LICENÇA DE USO
*
* (implementar licença)
*
*
* @category   RochedoProject
* @package    @modulo
* @copyright  Copyright (c) 2010 Rochedo Project. (http://www.rochedoproject.com)
* @license    (implementar)
* @version    @versao: @data_versao
*/
TEXT;
define("FORM_GERADOR_HEADER", $header);

define("FORM_BEGIN_TAG", "<?php");
define("FORM_END_TAG", "?>");


$header = <<<TEXT
@identacao/**
@identacao* Constructor do Form
@identacao* @param array \$options
@identacao* @return @nome_classe
@identacao*/
TEXT;
define("FORM_GERADOR_CONSTRUCTOR_HEADER", $header);

define("FORM_GERADOR_CONSTRUCTOR_CALL", 'public function __construct($options = null)');
define("FORM_GERADOR_CONSTRUCTOR_INHERITS", 'parent::__construct($options);');


$header = <<<TEXT
@identacao// Inicializando o formulário.
TEXT;
define("FORM_GERADOR_CONSTRUCTOR_COMMENT", $header);

$header = <<<TEXT
@identacao// Adicionando paths para localizacao de componentes nao ZF.
TEXT;
define("FORM_GERADOR_ADDPREFIXPATH_COMMENT", $header);

$header = <<<TEXT
@identacao// Adicionando displays groups.
TEXT;
define("FORM_GERADOR_ADDDISPLAYGROUP_COMMENT", $header);

$header = <<<TEXT
@identacao// Inicializando o sub-formulário.
TEXT;
define("FORM_GERADOR_SUB_FORM_INIT_COMMENT", $header);

define("FORM_GERADOR_ELEMENTS", '$elements');
define("FORM_GERADOR_CLASS_EXTENDS_ELEMENT", "extends");
define("FORM_CLASS_EXTENDS_DOJO_FORM", "Zend_Dojo_Form");
define("FORM_CLASS_EXTENDS_DOJO_FORM_SUB_FORM", "Zend_Dojo_Form_SubForm");
define("FORM_CLASS_EXTENDS_ZEND_FORM", "Zend_Form");
// NAO TESTADO!!!
define("FORM_CLASS_EXTENDS_ZEND_FORM_SUB_FORM", "Zend_Form_SubForm");


$header = <<<TEXT
@identacao// Criando array de elementos.
TEXT;
define("FORM_GERADOR_ADD_ELEMENTS_COMMENT", $header);

$header = <<<TEXT
// Adicionando elementos ao formulario.
TEXT;
define("FORM_GERADOR_ADD_ELEMENTS_TO_FORM_COMMENT", $header);

$header = <<<TEXT
// Removendo escapes das mensagens de erro dos elementos do formulario.
TEXT;
define("FORM_GERADOR_REMOVE_ZEND_FORM_ELEMENTS_ERROR_MESSAGES_ESCAPE", $header);

$header = <<<TEXT
// Adicionando sub-formulario ao formulario pai.
TEXT;
define("FORM_GERADOR_ADD_SUB_FORM_TO_FORM_COMMENT", $header);

$header = <<<TEXT
// Incluindo arquivos de sub-formularios no formulario pai.
TEXT;
define("FORM_GERADOR_INCLUDE_SUB_FORM_TO_FORM_COMMENT", $header);

define("FORM_GERADOR_THIS_INSTANCE", '$this');
define("FORM_GERADOR_FORM_SETNAME", '$this->setName');
define("FORM_GERADOR_FORM_SETMETHOD", '$this->setMethod');
define("FORM_GERADOR_FORM_SETACTION", '$this->setAction');
define("FORM_GERADOR_FORM_SET_ENCRYPTED_ACTION", '$this->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl');
define("FORM_GERADOR_FORM_ADDATTRIBS", '$this->addAttribs');
define("FORM_GERADOR_FORM_SETDECORATORS", '$this->setDecorators');
define("FORM_GERADOR_FORM_ADDELEMENTS", '$this->addElements');
define("FORM_GERADOR_FORM_ADDPREFIXPATH", '$this->addPrefixPath');
define("FORM_GERADOR_FORM_ADDDISPLAYGROUP", '$this->addDisplayGroup');
define("FORM_GERADOR_FORM_GETDISPLAYGROUP", '$this->getDisplayGroup');
define("FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE", "@variableInstance");
define("FORM_GERADOR_FORM_SUB_FORM_SETNAME", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setName');
define("FORM_GERADOR_FORM_SUB_FORM_SETMETHOD", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setMethod');
define("FORM_GERADOR_FORM_SUB_FORM_SETACTION", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setAction');
define("FORM_GERADOR_FORM_SUB_FORM_SET_ENCRYPTED_ACTION", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setAction(Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl');
define("FORM_GERADOR_FORM_SUB_FORM_ADDATTRIBS", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->addAttribs');
define("FORM_GERADOR_FORM_SUB_FORM_SETDECORATORS", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setDecorators');
define("FORM_GERADOR_FORM_SUB_FORM_SETORDER", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->setOrder');
define("FORM_GERADOR_FORM_SUB_FORM_ADDELEMENTS", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->addElements');
define("FORM_GERADOR_FORM_SUB_FORM_ADDDISPLAYGROUP", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->addDisplayGroup');
define("FORM_GERADOR_FORM_SUB_FORM_GETDISPLAYGROUP", FORM_GERADOR_FORM_SUB_FORM_VARIABLE_INSTANCE . '->getDisplayGroup');
define("FORM_GERADOR_FORM_SUB_FORM_ADDSUBFORM", '->addSubForm');

define("FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP", 'if (!Basico_OPController_UtilOPController::ambienteDesenvolvimento())');
define("FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT", '$this->createElement');
define("FORM_GERADOR_FORM_ELEMENT_SETATTRIBS", '->setAttribs');
define("FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_FORMNAME_TAG", "@nomeForm");
define("FORM_GERADOR_FORM_ELEMENT_FORM_NAME", "@nomeForm");
define("FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_TITLE_TAG", '@title');
define("FORM_GERADOR_FORM_ELEMENT_SETATTRIBS_VALIDATION_MESSAGE_TAG", '@message');
define("FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE", '->setRequired(true)');
define("FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE", '->setRequired(false)');
define("FORM_GERADOR_FORM_ELEMENT_SETORDER", '->setOrder');
define("FORM_GERADOR_FORM_ELEMENT_ADDFILTERS", '->addFilters');
define("FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR", '->addValidator');
define("FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR", '->addDecorator');
define("FORM_GERADOR_FORM_ELEMENT_REMOVEDECORATOR", '->removeDecorator');
define("FORM_GERADOR_FORM_ELEMENT_SETLABEL", '->setLabel');
define("FORM_GERADOR_FORM_ELEMENT_GETNAME", '->getName()');
define("FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE", '->setInvalidMessage');
define("FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE", 'if (($options!=null) and ');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE", '->setValue');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE", '$options[');

define("FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL", '$this->getView()->tradutor');

define("FORM_GERADOR_FORM_ELEMENT_LABEL_REQUIRED", "* ");

define("FORM_GERADOR_FORM_TEMP_VARIABLE", '$tempVariable');
define("FORM_GERADOR_FORM_ELEMENT_GET_DIJITPARAM", "->getDijitParam");
define("FORM_GERADOR_FORM_ELEMENT_SET_DIJITPARAM", "->setDijitParam");
define("FORM_GERADOR_FORM_ELEMENT_DIJITPARAM_CONSTRAINTS", "constraints");
define("FORM_GERADOR_FORM_ELEMENT_DIJITPARAM_CONTRAINTS_PATTERN", "pattern");

define("FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY", "FORM_GERADOR_ARRAY_INIT_FORM_FILENAME_EXTENSION_RECOVERY");
define("FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM", "FORM_GERADOR_ARRAY_INIT_FORM_HEADER_FORM");
define("FORM_GERADOR_ARRAY_INIT_FORM_BEGIN_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_BEGIN_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_CLASS", "FORM_GERADOR_ARRAY_INIT_FORM_CLASS_EXTENDS_CLASS");
define("FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_BEGIN_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_END_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_CODE_BLOCK_END_TAG");
define("FORM_GERADOR_ARRAY_INIT_HEADER_CONSTRUCTOR_FORM", "FORM_GERADOR_ARRAY_INIT_HEADER_CONSTRUCTOR_FORM");
define("FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_CALL", "FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_CALL");
define("FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_INHERITS", "FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_INHERITS");
define("FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_CONSTRUCTOR_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_NAME", "FORM_GERADOR_ARRAY_INIT_FORM_NAME");
define("FORM_GERADOR_ARRAY_INIT_FORM_ADDPREFIXPATH_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_ADDPREFIXPATH_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_METHOD", "FORM_GERADOR_ARRAY_INIT_FORM_METHOD");
define("FORM_GERADOR_ARRAY_INIT_FORM_ACTION", "FORM_GERADOR_ARRAY_INIT_FORM_ACTION");
define("FORM_GERADOR_ARRAY_INIT_FORM_ACTION_BASE_URL", "@baseUrl");
define("FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS", "FORM_GERADOR_ARRAY_INIT_FORM_ATTRIBS");
define("FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR", "FORM_GERADOR_ARRAY_INIT_FORM_DECORATOR");
define("FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_ELEMENTS_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_ADD_ELEMENTS_TO_FORM_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_ADD_ELEMENTS_TO_FORM_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS", "FORM_GERADOR_ARRAY_INIT_FORM_ARRAY_ELEMENTS");
define("FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO", "FORM_GERADOR_ARRAY_INIT_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO");
define("FORM_GERADOR_ARRAY_INIT_FORM_END_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_END_TAG");

define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_FILENAME_EXTENSION_RECOVERY", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_FILENAME_EXTENSION_RECOVERY");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_HEADER_FORM");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_BEGIN_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_BEGIN_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_CLASS", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CLASS_EXTENDS_CLASS");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_BEGIN_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_END_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODE_BLOCK_END_TAG");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_INIT_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_INIT_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_NAME", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_NAME");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADDPREFIXPATH_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADDPREFIXPATH_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_METHOD");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ACTION");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ATTRIBS");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_DECORATOR");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ORDER", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ORDER");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ELEMENTS_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ELEMENTS_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADD_ELEMENTS_TO_FORM_COMMENT", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ADD_ELEMENTS_TO_FORM_COMMENT");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ARRAY_ELEMENTS", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_ARRAY_ELEMENTS");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_CODIGO_CHECK_AMBIENTE_DESENVOLVIMENTO");
define("FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_END_TAG", "FORM_GERADOR_ARRAY_INIT_FORM_SUB_FORM_END_TAG");

define("FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_VARIABLE_INSTANCE_FORM", "@variableInstaceForm");
define("FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_URL", "@urlForm");
define("FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_FORM_NAME", "@nomeForm");
define("FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_TITLE_DIALOG", "@tituloForm");
define("FORM_GERADOR_FORMULARIO_ELEMENTO_BUTTON_DIALOG_DOJO_OFFSET", "@offset");

define("FORM_GERADOR_AJUDA_BUTTON_BEGIN_TAG", "<button dojoType=\"dijit.form.Button\" type=\"button\" tabindex=\"-1\">");
define("FORM_GERADOR_AJUDA_BUTTON_END_TAG", "</button>");

define("FORM_GERADOR_AJUDA_BUTTON_SCRIPT_BEGIN_TAG", "<script type=\"dojo/method\" event=\"onClick\" args=\"evt\">");
define("FORM_GERADOR_AJUDA_BUTTON_SCRIPT_END_TAG", "</script>");

define("FORM_GERADOR_RECUPERACAO_EXTENSAO", ".lkg");
define("FORM_GERADOR_RECUPERACAO_PATH_SUFIXO", "/_lkg/");

define("FORM_ACEITE_TERMOS_USO_TAG_STRING_CONFIRMACAO", "@stringConfirmacao");

/**
 * MENSAGEM
 */
define("MENSAGEM_TAG_NOME", "@nomeUsuario");
define("MENSAGEM_TAG_TRATAMENTO", "@tratamento");
define("MENSAGEM_TAG_LOGIN", "@login");
define("MENSAGEM_TAG_LINK_VALIDACAO_EMAIL", "@linkValidacaoEmail");
define("MENSAGEM_TAG_LINK_MEU_PERFIL", "@linkMeuPerfil");
define("MENSAGEM_TAG_LINK_SUGESTOES_LOGIN", "@linkSugestoesLogin");
define("MENSAGEM_TAG_DATA_HORA_FINALIZACAO_CADASTRO_BASICO", '@dataHoraFinalizacaoCadastro');
define("MENSAGEM_TAG_ASSINATURA_MENSAGEM", '@assinaturaMensagem');
define("MENSAGEM_TAG_SUPORTE_EMAIL", '@linkEmailSuporte');

// AJUDA
define("AJUDA_BUTTON_LABEL", "?"); 

/**
 * EMAIL
 */
define("EMAIL_CHARSET", "utf-8");

/**
 * LINKS DO SISTEMA 
 */
define("LINK_VALIDACAO_USUARIO", "/basico/email/validarEmail/t/");
define("LINK_MEU_PERFIL", "/basico/dadosusuario/index/");
define("LINK_DOCUMENTACAO_ONLINE", "#");

/**
 * LINK PARA CONTROLADOR DE TOKENS 
 */
define("LINK_CONTROLADOR_TOKENS", "/basico/token/decode/t/");

// COMPONENTE
define("COMPONENTE_NAO_ZF_PREFIX", "COMPONENTE_NAO_ZF_PREFIX");
define("COMPONENTE_NAO_ZF_PATH", "COMPONENTE_NAO_ZF_PATH");
define("CATEGORIA_COMPONENTE_DOJO", "COMPONENTE_DOJO");
define("CATEGORIA_COMPONENTE_ROCHEDO", "COMPONENTE_ROCHEDO");