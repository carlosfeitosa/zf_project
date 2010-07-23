<?php
/**
 * Arquivo para definição de contantes da lógica do sistema.
 * 
 */


/**
 * REQUIRES
 */
require_once("error_consts.php");
require_once("log_consts.php");
require_once("lang_consts.php");
require_once("dictionary_consts.php");

/**
 * APLICAÇÃO
 */
define("IDENTACAO_PADRAO", "    ");
define("QUEBRA_DE_LINHA", PHP_EOL);

/**
 * CATEGORIAS
 */
define("MENSAGEM_EMAIL_SIMPLES", "MENSAGEM_EMAIL_SIMPLES");
define("PERFIL_USUARIO_NAO_VALIDADO", "USUARIO_NAO_VALIDADO");
define("APPLICATION_SYSTEM_PERFIL", "SISTEMA");
define("EMAIL_PRIMARIO", "EMAIL_PRIMARIO");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO", "MENSAGEM_EMAIL_VALIDACAO_USUARIO");
define("MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT","MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT");
define("SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO", "SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO");
define("LOG_VALIDACAO_USUARIO", "LOG_VALIDACAO_USUARIO");
define("LOG_NOVA_PESSOA", "LOG_NOVA_PESSOA");
define("LOG_NOVA_PESSOA_PERFIL", "LOG_NOVA_PESSOA_PERFIL");
define("LOG_NOVO_DADOS_PESSOAIS", "LOG_NOVO_DADOS_PESSOAIS");
define("LOG_NOVO_EMAIL", "LOG_NOVO_EMAIL");
define("LOG_NOVA_MENSAGEM", "LOG_NOVA_MENSAGEM");
define("LOG_TOKEN_VALIDACAO_USUARIO", "LOG_TOKEN_VALIDACAO_USUARIO");
define("MENSAGEM_PESSOAS_ENVOLVIDAS", "MENSAGEM_PESSOAS_ENVOLVIDAS");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE", "MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA", "MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO_COPIA_CARBONADA_OCULTA");
define("MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA", "MENSAGEM_PESSOAS_ENVOLVIDAS_RESPONDER_PARA");
define("SISTEMA_EMAIL", "SISTEMA_EMAIL");

/**
 * FORMULÁRIOS
 */
define("LOG_NOVO_FORMULARIO", "LOG_NOVO_FORMULARIO");
define("LOG_NOVO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FILTER", "LOG_NOVO_FORMULARIO_ELEMENTO_FILTER");
define("LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR", "LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR");
define("LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO", "LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO");
define("LOG_NOVO_FORMULARIO_TEMPLATE", "LOG_NOVO_FORMULARIO_TEMPLATE");
define("LOG_NOVO_OUTPUT", "LOG_NOVO_OUTPUT");
define("FORM_GERADOR_OUTPUT_DOJO", "OUTPUT_DOJO");
define("FORM_GERADOR_OUTPUT_HTML", "OUTPUT_HTML");

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
* @version    0.1: 2010-07-09 17:00:00
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
@identacao/**
@identacao* Inicializando o formulário.
@identacao*/
TEXT;
define("FORM_GERADOR_CONSTRUCTOR_COMMENT", $header);

define("FORM_GERADOR_ELEMENTS", '$elements');
define("FORM_GERADOR_CLASS_EXTENDS_ELEMENT", "extends");
define("FORM_CLASS_EXTENDS_DOJO_FORM", "Zend_Dojo_Form");
define("FORM_CLASS_EXTENDS_ZEND_FORM", "Zend_Form");


$header = <<<TEXT
@identacao/**
@identacao* Adicionando array de elementos.
@identacao*/
TEXT;
define("FORM_GERADOR_ADD_ELEMENTS_COMMENT", $header);

define("FORM_GERADOR_FORM_SETNAME", '$this->setName');
define("FORM_GERADOR_FORM_SETMETHOD", '$this->setMethod');
define("FORM_GERADOR_FORM_SETACTION", '$this->setAction');
define("FORM_GERADOR_FORM_ADDATTRIBS", '$this->addAttribs');
define("FORM_GERADOR_FORM_SETDECORATORS", '$this->setDecorators');
define("FORM_GERADOR_FORM_ADDELEMENTS", '$this->addElements');

define("FORM_GERADOR_FORM_ELEMENT_CHECK_DEVELOP", 'if (!Basico_Model_Util::ambienteDesenvolvimento())');
define("FORM_GERADOR_FORM_ELEMENT_CREATEELEMENT", '$this->createElement');
define("FORM_GERADOR_FORM_ELEMENT_SETATTRIBS", '->setAttribs');
define("FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_TRUE", '->setRequired(true)');
define("FORM_GERADOR_FORM_ELEMENT_SETREQUIRED_FALSE", '->setRequired(false)');
define("FORM_GERADOR_FORM_ELEMENT_ADDFILTERS", '->addFilters');
define("FORM_GERADOR_FORM_ELEMENT_ADDVALIDATOR", '->addValidator');
define("FORM_GERADOR_FORM_ELEMENT_ADDDECORATOR", '->AddDecorator');
define("FORM_GERADOR_FORM_ELEMENT_SETLABEL", '->setLabel');
define("FORM_GERADOR_FORM_ELEMENT_SETINVALIDMESSAGE", '->setInvalidMessage');
define("FORM_GERADOR_FORM_ELEMENT_CHECK_RELOADABLE", 'if ($options!=null)');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE", '->setValue');
define("FORM_GERADOR_FORM_ELEMENT_SETVALUE_VARIABLE", '$options->');

define("FORM_GERADOR_FORM_ELEMENT_TRADUTOR_CALL", '$this->getView()->tradutor');


/**
 * EMAIL
 */
define("EMAIL_CHARSET", "utf-8");

/**
 * LINKS DO SISTEMA 
 */
define("LINK_VALIDACAO_USUARIO", "http://localhost/rochedo_project/public/basico/email/validarEmail/t/");
define("LINK_DIALOG_FORM", "http://localhost/rochedo_project/public/basico/token/retornaDialogContent/t/");

/*
 * LINK PARA CONTROLADOR DE TOKENS 
 */
define("LINK_CONTROLADOR_TOKENS", "/basico/token/decode/t/");