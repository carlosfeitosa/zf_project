<?php
/**
 * Arquivo para definição de contantes de formulários.
 * 
 * Este arquivo contem as constantes para utilização sobre formulários
 * 
 * @package core
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * @since 21/06/2012
 */

// constante que define o autor padrão dos formulários
define('FORM_AUTOR_PADRAO', 'SYSTEM');

// constantes de abertura e fechamento de tags php
define("FORM_BEGIN_TAG", "<?php");
define("FORM_END_TAG", "?>");

define("CODE_BEGIN_TAG", "{");
define("CODE_END_TAG", "}");

// constantes de assinatura de classe
define('FORM_GERADOR_CLASS_KEYWORD', 'class');
define("FORM_GERADOR_CLASS_EXTENDS_KEYWORD", "extends");

// definições do captcha
define("NOME_COMPONENTE_CAPTCHA", "Captcha");
define("CAPTCHA_IMAGE_DIR", PUBLIC_PATH . "/images/captcha/");
define("CAPTCHA_IMAGE_URL", "/images/captcha/");
define("CAPTCHA_FONT_PATH", PUBLIC_PATH . "/fonts/typewcond_bold.otf");
define("CAPTCHA_WORDLEN", 6);
define("CAPTCHA_TYPE", "Image");
define("CAPTCHA_WIDTH", 250);
define("CAPTCHA_HEIGHT", 250);
define("CAPTCHA_FONT_SIZE", 50);
define("CAPTCHA_EXPIRATION", 300);
define("CAPTCHA_GCFREQ", 100);

// constantes globais
define("FORM_GERADOR_SET_LABEL_REQUIRED_HTML", "'<span title=\'Campo requerido (required field)\' class=\'labelRequiredSymbol\'>* </span>' . ");

// constantes de assinatura e chamada de metodos
define("FORM_GERADOR_CONSTRUCTOR_CALL", '@identacaopublic function __construct($options = null)');
define("FORM_GERADOR_CONSTRUCTOR_INHERITS", '@identacaoparent::__construct($options);');
define("FORM_GERADOR_FORM_INIT_DECLARATION", '@identacaoprivate function initForm()');
define("FORM_GERADOR_FORM_INIT_CALL", '@identacao$this->initForm();');
define("FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_DECLARATION", '@identacaoprivate function adicionaElementos()');
define("FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_CALL", '@identacao$this->adicionaElementos();');
define("FORM_GERADOR_FORM_ADICIONA_DECORATOS_CALL", '@identacao$this->adicionaDecorators();');
define("FORM_GERADOR_FORM_ADICIONA_DISPLAYGROUPS_CALL", '@identacao$this->adicionaDisplayGroups();');
define("FORM_GERADOR_FORM_ADICIONA_DECORATORS_DECLARATION", '@identacaoprivate function adicionaDecorators()');
define("FORM_GERADOR_FORM_ADICIONA_DISPLAYGROUPS_DECLARATION", '@identacaoprivate function adicionaDisplayGroups()');
define("FORM_GERADOR_FORM_SETNAME", '@identacao$this->setName(\'@nomeFormulario\');');
define("FORM_GERADOR_FORM_SETMETHOD", '@identacao$this->setMethod(\'@metodoFormulario\');');
define("FORM_GERADOR_FORM_SETACTION", '@identacao$this->setAction(Basico_OPController_CpgTokenOPController::getInstance()->gerarTokenPorUrl(Basico_OPController_UtilOPController::retornaBaseUrl() . \'@acaoFormulario\'));');
define("FORM_GERADOR_FORM_SETATTRIBS", '@identacao@instancia->setAttribs(array(@atributosFormulario));');
define("FORM_GERADOR_ADDDECORATOR", '@identacao@instancia->addDecorator(@decorator);');
define("FORM_GERADOR_REMOVEDECORATOR", '@identacao@instancia->removeDecorator(@decorator);');
define("FORM_GERADOR_FORM_ADDELEMENT", '@identacao@instancia->addElement(@elemento);');
define("FORM_GERADOR_FORM_REMOVEELEMENT", '@identacao@instancia->removeElement(@elemento);');
define("FORM_GERADOR_SETLABEL", '@identacao@instancia->setLabel(@elementRequiredSymbol$this->getView()->tradutor(@label)@ajudaButton);');
define("FORM_GERADOR_SETATTRIBS", '@identacao@instancia->setAttribs(@attribs);');
define("FORM_GERADOR_SETOPTIONS", '@identacao@instancia->setOptions(@options);');
define("FORM_GERADOR_SETATTRIB", '@identacao@instancia->setAttrib(@attribName, @attribValue);');
define("FORM_GERADOR_REMOVEATTRIB", '@identacao@instancia->removeAttrib(@attribName);');
define("FORM_GERADOR_SETORDER", '@identacao@instancia->setOrder(@ordem);');
define("FORM_GERADOR_SETREQUIRED", '@identacao@instancia->setRequired(@required);');
define("FORM_GERADOR_REMOVEFILTER", '@identacao@instancia->removeFilter(@filter);');
define("FORM_GERADOR_ADDFILTER", '@identacao@instancia->addFilter(@filter);');
define("FORM_GERADOR_REMOVEVALIDATOR", '@identacao@instancia->removeValidator(@validator);');
define("FORM_GERADOR_ADDVALIDATOR", '@identacao@instancia->addValidator(@validator, false, @attribs);');
define("FORM_GERADOR_AJUDA_BUTTON_SCRIPT", "'&nbsp;<button type=\"button\" tabindex=\"-1\" class=\"helpButton\" onClick=\"showDialogAlert(\'@nomeFormulario\', \'' . \$this->getView()->tradutor('DIALOG_HELP_TITLE') . '\', \'' . Basico_OPController_UtilOPController::escapaAspasStringJavascriptPHP(\$this->getView()->tradutor('@constanteTextual')) . '\', 1);\"></button>'");
define("TRADUTOR_CALL", '$this->getView()->tradutor');
define("FORM_GERADOR_GETELEMENTS", '@identacao@instancia->getElements()');
define("FORM_GERADOR_CHECK_DEVELOP", 'if (!Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {');

// tags de substituição
define('TAG_NOME_FORMULARIO', '@nomeFormulario');
define('TAG_METODO_FORMULARIO', '@metodoFormulario');
define('TAG_ACAO_FORMULARIO', '@acaoFormulario');
define('TAG_ATRIBUTOS_FORMULARIO', '@atributosFormulario');
define('TAG_DECORATOR_FORMULARIO', '@decorator');
define('TAG_ELEMENTO_FORMULARIO', '@elemento');
define('TAG_NOME_MODULO', '@nomeModulo');
define('TAG_DATA_CRIACAO_FORMULARIO', '@dataCriacao');
define('TAG_TEXTO_LICENCA_USO', '@textoLicencaUso');
define('TAG_TIPO_LICENCA_USO', '@tipoLicencaUso');
define('TAG_VERSAO_FORMULARIO', '@versao');
define('TAG_DATA_VERSAO_FORMULARIO', '@dataVersao');
define('TAG_ANO_ATUAL_FORMULARIO', '@anoAtual');
define('TAG_DESCRICAO_FORMULARIO', '@descricaoFormulario');
define('TAG_AUTOR', '@autor');
define('TAG_IDENTACAO', '@identacao');
define('TAG_INSTANCIA', '@instancia');
define('TAG_LABEL', '@label');
define('TAG_ATTRIBS', '@attribs');
define('TAG_OPTIONS', '@options');
define('TAG_ATTRIB_NAME', '@attribName');
define('TAG_ATTRIB_VALUE', '@attribValue');
define('TAG_ORDEM', '@ordem');
define('TAG_REQUIRED', '@required');
define('TAG_FILTER', '@filter');
define('TAG_VALIDATOR', '@validator');
define('TAG_AJUDA_BUTTON', '@ajudaButton');
define('TAG_CONSTANTE_TEXTUAL', '@constanteTextual');
define('TAG_INSTANCIA_FORMULARIO', '$this');
define("TAG_TITLE", '@title');
define("TAG_MESSAGE", '@message');
define('TAG_BASE_URL', '@baseUrl');
define('TAG_ELEMENT_REQUIRED_SYMBOL', '@elementRequiredSymbol');


// constantes de comentarios de metodos ou chamadas de metodos
define("FORM_GERADOR_PARENT_CONSTRUCTOR_CALL_COMMENT", '@identacao// Chamando o construtor parent do formulário');
define("FORM_GERADOR_FORM_INIT_CALL_COMMENT", '@identacao// Chamando método de inicialização do formulário');
define("FORM_GERADOR_SET_NAME_CALL_COMMENT", '@identacao// Setando o nome do formulário');
define("FORM_GERADOR_SET_METHOD_CALL_COMMENT", '@identacao// Setando o método do formulário');
define("FORM_GERADOR_SET_ACTION_CALL_COMMENT", '@identacao// Setando a ação do formulário');
define("FORM_GERADOR_ADD_ATTRIBS_CALL_COMMENT", '@identacao// Adicionando atributos ao formulário');
define("FORM_GERADOR_SET_OPTIONS_CALL_COMMENT", '@identacao// Setando options do formulário');
define("FORM_GERADOR_ADD_DECORATOR_CALL_COMMENT", '@identacao// Adicionando decorators ao formulário');
define("FORM_GERADOR_REMOVE_DECORATOR_CALL_COMMENT", '@identacao// Removendo decorator do formulário');
define("FORM_GERADOR_ADICIONA_ELEMENTOS_CALL_COMMENT", '@identacao// Adicionando elementos ao formulário');
define("FORM_GERADOR_ADICIONA_DISPLAYGROUPS_CALL_COMMENT", '@identacao// Adicionando display groups ao formulario');
define("FORM_GERADOR_ADD_DECORATOR_COMMENT", '@identacao// Adicionando e removendo decorators do formulário');
define("FORM_GERADOR_ADD_ELEMENT_COMMENT", '@identacao// Adicionando elementos do formulário');

// constantes de cabeçalho
$header = <<<TEXT
@identacao// Adicionando paths para localizacao de componentes nao ZF.
TEXT;
define("FORM_GERADOR_ADDPREFIXPATH_COMMENT", $header);

// cabeçalho de arquivo contendo classe de formulário
$header = <<<TEXT
/**
* Classe @nomeModulo_Form_@nomeFormulario
* Formulário @nomeFormulario
*
* Formulário gerado pelo gerador RF.
* em: @dataCriacao
*
* LICENÇA DE USO
*
* @textoLicencaUso
*
*
* @category   RochedoFrameworkForm
* @package    @nomeModulo
* @copyright  Copyright (c) 2010~@anoAtual Rochedo Project. (http://www.rochedoframework.com)
* @license    @tipoLicencaUso
* @version    @versao: @dataVersao
*
* @author @autor
* @since @dataCriacao
*/
TEXT;
define("FORM_GERADOR_FORM_FILE_HEADER", $header);

// cabeçalho de assinatura de classe de formulário
$header = <<<TEXT
/**
* @nomeFormulario
* @descricaoFormulario
*
* @author @autor
* @since @dataCriacao
*/
TEXT;
define("FORM_GERADOR_FORM_CLASS_HEADER", $header);

// cabeçalho de arquivo contendo classe de sub-formulário
$header = <<<TEXT
/**
* Classe @nomeModulo_Form_@nomeSubFormulario
* Sub-Formulário @nomeSubFormulario
*
* Formulário gerado pelo gerador RF.
* em: @dataCriacao
*
* LICENÇA DE USO
*
* (implementar licença)
*
*
* @category   RochedoFrameworkFormSubForm
* @package    @modulo
* @copyright  Copyright (c) 2010~@anoAtual Rochedo Project. (http://www.rochedoframework.com)
* @license    (implementar)
* @version    @versao: @dataVersao
*
* @author @autor
* @since @dataCriacao
*/
TEXT;
define("FORM_GERADOR_SUBFORM_FILE_HEADER", $header);

$header = <<<TEXT
@identacao/**
@identacao* Construtor do Formulário
@identacao* 
@identacao* @param array \$options - array com opções para construção do formulário
@identacao*
@identacao* @return void - não espera retorno
@identacao*
@identacao* @author @autor
@identacao* @since @dataCriacao
@identacao*/
TEXT;
define("FORM_GERADOR_CONSTRUTOR_FORMULARIO_HEADER", $header);

$header = <<<TEXT
@identacao/**
@identacao* Inicializa o Formulário
@identacao*
@identacao* @return void - não espera retorno
@identacao*
@identacao* @author @autor
@identacao* @since @dataCriacao
@identacao*/
TEXT;
define("FORM_GERADOR_INIT_FORMULARIO_HEADER", $header);

$header = <<<TEXT
@identacao/**
@identacao* Adiciona elementos ao Formulário
@identacao*
@identacao* @return void - não espera retorno
@identacao*
@identacao* @author @autor
@identacao* @since @dataCriacao
@identacao*/
TEXT;
define("FORM_GERADOR_ADICIONA_ELEMENTOS_FORMULARIO_HEADER", $header);

$header = <<<TEXT
@identacao/**
@identacao* Adiciona decorators ao Formulário
@identacao*
@identacao* @return void - não espera retorno
@identacao*
@identacao* @author @autor
@identacao* @since @dataCriacao
@identacao*/
TEXT;
define("FORM_GERADOR_ADICIONA_DECORATORS_FORMULARIO_HEADER", $header);

$header = <<<TEXT
@identacao/**
@identacao* Adiciona diplayGroups ao Formulário
@identacao*
@identacao* @return void - não espera retorno
@identacao*
@identacao* @author @autor
@identacao* @since @dataCriacao
@identacao*/
TEXT;
define("FORM_GERADOR_ADICIONA_DISPLAY_GROUPS_FORMULARIO_HEADER", $header);