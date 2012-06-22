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

// constantes de abertura e fechamento de tags php
define("FORM_BEGIN_TAG", "<?php");
define("FORM_END_TAG", "?>");

define("CODE_BEGIN_TAG", "{");
define("CODE_END_TAG", "}");

// constantes de assinatura de classe
define('FORM_GERADOR_CLASS_KEYWORD', 'class');
define("FORM_GERADOR_CLASS_EXTENDS_KEYWORD", "extends");

// tags de substituição
define('TAG_NOME_FORMULARIO', '@nomeFormulario');
define('TAG_NOME_MODULO', '@nomeModulo');
define('TAG_DATA_CRIACAO_FORMULARIO', '@dataCriacao');
define('TAG_TEXTO_LICENCA_USO', '@textoLicencaUso');
define('TAG_TIPO_LICENCA_USO', '@tipoLicencaUso');
define('TAG_VERSAO_FORMULARIO', '@versao');
define('TAG_DATA_VERSAO_FORMULARIO', '@dataVersao');
define('TAG_ANO_ATUAL_FORMULARIO', '@anoAtual');
define('TAG_DESCRICAO_FORMULARIO', '@descricaoFormulario');
define('TAG_AUTOR', '@autor');

// constantes de cabeçalho
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
*/
TEXT;
define("FORM_GERADOR_SUBFORM_FILE_HEADER", $header);

$header = <<<TEXT
	/**
	* Construtor do Formulário
	* 
	* @param array \$options
	*
	* @return @nomeModulo_Form_@nomeFormulario
	*/
TEXT;
define("FORM_GERADOR_CONSTRUTOR_FORMULARIO_HEADER", $header);