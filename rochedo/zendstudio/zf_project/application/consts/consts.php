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
define("RESOURCE_TYPE_BASICO_CONTROLLERCONTROLLERS", "OPControllers");
define("RESOURCE_PATH_BASICO_CONTROLLERCONTROLLERS", "controllers");
define("RESOURCE_NAMESPACE_BASICO_CONTROLLERCONTROLLER", "OPController_");

define("IDENTACAO_PADRAO", "    ");
define("QUEBRA_DE_LINHA", PHP_EOL);
define("QUEBRA_DE_LINHA_HTML", "<br>");
define("TAG_ABRE_LISTA_NAO_ORDENADA", "<ul>");
define("TAG_ABRE_LISTA_NAO_ORDENADA_ERROR", "<ul id = 'errorUl'>");
define("TAG_FECHA_LISTA_NAO_ORDENADA", "</ul>");
define("TAG_ABRE_ITEM_LISTA_NAO_ORDENADA", "<li>");
define("TAG_FECHA_ITEM_LISTA_NAO_ORDENADA", "</li>");
define("ASPAS_SIMPLES_ESCAPADA_HTML", '\\\'');
define("CARACTER_QUEBRA_ELEMENTOS_OBJETO", ",");
define("CARACTER_BARRA_URL", "/");
define("CARACTER_CODIFICACAO_BARRA_URL", "|");
define("INCLUDE_INCLUDE_ONCE", "include_once");
define("INCLUDE_REQUIRE_ONCE", "require_once");
define("INCLUDE_INCLUDE", "include");
define("INCLUDE_REQUIRE", "require");
define("GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT", true);
define("CODIFICAR_OBJETO_TO_ENCODED_STRING", "CODIFICAR_OBJETO_TO_ENCODED_STRING");
define("CODIFICAR_ENCODED_STRING_TO_ARRAY", "CODIFICAR_ENCODED_STRING_TO_ARRAY");
define("ID_GENERICO", "id_generico");
define("TIPO_INTEIRO", 11);
define("TIPO_STRING", 12);
define("TIPO_BOOLEAN", 13);
define("AUTH_TABLE", "login");
define("AUTH_IDENTITY_COLUMN", "login");
define("AUTH_CREDENTIAL_COLUMN", "senha");
define("AUTH_IDENTITY_ARRAY_KEY", "BasicoAutenticacaoUsuarioLogin");
define("AUTH_CREDENTIAL_ARRAY_KEY", "BasicoAutenticacaoUsuarioSenha");
define("AUTH_ID_LOGIN_SESSION_KEY", "AUTH_ID_LOGIN_SESSION_KEY");
define("ROWINFO_SYSTEM_STARTUP_MASTER", "SYSTEM_STARTUP_MASTER");
define("ROWINFO_ATRIBUTE_NAME", "rowinfo");
define("REQUEST_ACTION_KEY", "action");
define("PROPRIEDADE_DATAHORA_ULTIMA_ATUALIZACAO", "dataHoraUltimaAtualizacao");


// LOGIN

define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO");
define("ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA", "ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA");
define("QUANTIDADE_TENTATIVAS_LOGIN_MAX", 5);


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
define("TIPO_CATEGORIA_FORMULARIO", "FORMULARIO");

/**
 * CATEGORIAS
 */
define("FORMULARIO_SUB_FORMULARIO", "FORMULARIO_SUB_FORMULARIO");
define("MENSAGEM_EMAIL_SIMPLES", "MENSAGEM_EMAIL_SIMPLES");
define("PERFIL_USUARIO_NAO_VALIDADO", "USUARIO_NAO_VALIDADO");
define("PERFIL_USUARIO_VALIDADO", "USUARIO_VALIDADO");
define("APPLICATION_SYSTEM_PERFIL", "SISTEMA");
define("EMAIL_PRIMARIO", "EMAIL_PRIMARIO");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO", "MENSAGEM_EMAIL_VALIDACAO_USUARIO");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT","MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT");
define("LOG_VALIDACAO_USUARIO", "LOG_VALIDACAO_USUARIO");
define("LOG_NOVA_PESSOA", "LOG_NOVA_PESSOA");
define("LOG_UPDATE_PESSOA", "LOG_UPDATE_PESSOA");
define("LOG_NOVO_TOKEN", "LOG_NOVO_TOKEN");
define("LOG_NOVO_WEBSITE", "LOG_NOVO_WEBSITE");
define("LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA");
define("LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA", "LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA");
define("LOG_NOVA_PESSOA_PERFIL", "LOG_NOVA_PESSOA_PERFIL");
define("LOG_UPDATE_PESSOA_PERFIL", "LOG_UPDATE_PESSOA_PERFIL");
define("LOG_NOVO_DADOS_PESSOAIS", "LOG_NOVO_DADOS_PESSOAIS");
define("LOG_UPDATE_DADOS_PESSOAIS", "LOG_UPDATE_DADOS_PESSOAIS");
define("LOG_NOVO_DADOS_BIOMETRICOS", "LOG_NOVO_DADOS_BIOMETRICOS");
define("LOG_UPDATE_DADOS_BIOMETRICOS", "LOG_UPDATE_DADOS_BIOMETRICOS");
define("LOG_UPDATE_WEBSITE", "LOG_UPDATE_WEBSITE");
define("LOG_NOVO_EMAIL", "LOG_NOVO_EMAIL");
define("LOG_UPDATE_EMAIL", "LOG_UPDATE_EMAIL");
define("LOG_NOVA_CATEGORIA", "LOG_NOVA_CATEGORIA");
define("LOG_UPDATE_CATEGORIA", "LOG_UPDATE_CATEGORIA");
define("LOG_NOVO_LOGIN", "LOG_NOVO_LOGIN");
define("LOG_UPDATE_LOGIN", "LOG_UPDATE_LOGIN");
define("LOG_NOVA_MENSAGEM", "LOG_NOVA_MENSAGEM");
define("LOG_UPDATE_MENSAGEM", "LOG_UPDATE_MENSAGEM");
define("LOG_TOKEN_VALIDACAO_USUARIO", "LOG_TOKEN_VALIDACAO_USUARIO");
define("LOG_UPDATE_TOKEN_VALIDACAO_USUARIO", "LOG_UPDATE_TOKEN_VALIDACAO_USUARIO");
define("LOG", "LOG");
define("LOG_EMAIL", "LOG_EMAIL");
define("LOG_TENTATIVA_AUTENTICACAO_USUARIO", "LOG_TENTATIVA_AUTENTICACAO_USUARIO");
define("LOG_CATEGORIA_CHAVE_ESTRANGEIRA", "LOG_CATEGORIA_CHAVE_ESTRANGEIRA");
define("LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA", "LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA");
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
define("FORMULARIO_ELEMENTO_HIDDEN", "FORMULARIO_ELEMENTO_HIDDEN");
define("CATEGORIA_CVC", "CVC");
define("TIPO_CATEGORIA_CVC", "CVC");

/**
 * FORMULÁRIOS
 */
define("LOG_NOVO_FORMULARIO", "LOG_NOVO_FORMULARIO");
define("LOG_UPDATE_FORMULARIO", "LOG_UPDATE_FORMULARIO");
define("LOG_NOVO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_ELEMENTO");
define("LOG_UPDATE_FORMULARIO_ELEMENTO", "LOG_UPDATE_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FILTER", "LOG_NOVO_FORMULARIO_ELEMENTO_FILTER");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER", "LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_TEMPLATE", "LOG_NOVO_FORMULARIO_TEMPLATE");
define("LOG_UPDATE_FORMULARIO_TEMPLATE", "LOG_UPDATE_FORMULARIO_TEMPLATE");
define("LOG_NOVO_OUTPUT", "LOG_NOVO_OUTPUT");
define("LOG_UPDATE_OUTPUT", "LOG_UPDATE_OUTPUT");
define("FORM_TOKEN_ELEMENT_NAME", "Csrf");

define("FORM_ELEMENT_HASH", "FORM_HASH");

define("FORM_GERADOR_OUTPUT_DOJO", "OUTPUT_DOJO");
define("FORM_GERADOR_OUTPUT_HTML", "OUTPUT_HTML");
define("FORM_ELEMENTO_NAME_VALIDAR_URL", "validarUrl");

// RADIO BUTTON SEXO DB VALUES
define("FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO", "M");
define("FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO", "F");


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
define("FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE", 'if ($options!=null)');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE", '->setValue');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE", '$options->');

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

define("FORM_GERADOR_AJUDA_BUTTON_BEGIN_TAG", "<button dojoType=\"dijit.form.Button\" type=\"button\">");
define("FORM_GERADOR_AJUDA_BUTTON_END_TAG", "</button>");

define("FORM_GERADOR_AJUDA_BUTTON_SCRIPT_BEGIN_TAG", "<script type=\"dojo/method\" event=\"onClick\" args=\"evt\">");
define("FORM_GERADOR_AJUDA_BUTTON_SCRIPT_END_TAG", "</script>");

define("FORM_GERADOR_RECUPERACAO_EXTENSAO", ".lkg");
define("FORM_GERADOR_RECUPERACAO_PATH_SUFIXO", "/_lkg/");

/**
 * MENSAGEM
 */
define("MENSAGEM_TAG_NOME", "@nomeUsuario");
define("MENSAGEM_TAG_TRATAMENTO", "@tratamento");
define("MENSAGEM_TAG_LOGIN", "@login");
define("MENSAGEM_TAG_LINK_VALIDACAO_EMAIL", "@linkValidacaoEmail");
define("MENSAGEM_TAG_LINK_MEU_PERFIL", "@linkMeuPerfil");
define("MENSAGEM_TAG_DATA_HORA_FINALIZACAO_CADASTRO_BASICO", '@dataHoraFinalizacaoCadastro');
define("MENSAGEM_TAG_ASSINATURA_MENSAGEM", '@assinaturaMensagem');

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
define("LINK_DIALOG_FORM", "http://localhost/rochedo_project/public/basico/token/retornaDialogContent/t/");

/**
 * LINK PARA CONTROLADOR DE TOKENS 
 */
define("LINK_CONTROLADOR_TOKENS", "/basico/token/decode/t/");

// COMPONENTE
define("COMPONENTE_NAO_ZF_PREFIX", "COMPONENTE_NAO_ZF_PREFIX");
define("COMPONENTE_NAO_ZF_PATH", "COMPONENTE_NAO_ZF_PATH");
define("CATEGORIA_COMPONENTE_DOJO", "COMPONENTE_DOJO");