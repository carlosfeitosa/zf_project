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
define('FORM_AUTOR_PADRAO', 'Sistema');

// constantes de abertura e fechamento de tags php
define("FORM_BEGIN_TAG", "<?php");
define("FORM_END_TAG", "?>");

define("CODE_BEGIN_TAG", "{");
define("CODE_END_TAG", "}");

// constantes de assinatura de classe
define('FORM_GERADOR_CLASS_KEYWORD', 'class');
define("FORM_GERADOR_CLASS_EXTENDS_KEYWORD", "extends");

// constantes de assinatura e chamada de metodos
define("FORM_GERADOR_CONSTRUCTOR_CALL", '    public function __construct($options = null)');
define("FORM_GERADOR_CONSTRUCTOR_INHERITS", '        parent::__construct($options);');
define("FORM_GERADOR_FORM_INIT_DECLARATION", '    private function init()');
define("FORM_GERADOR_FORM_INIT_CALL", '        $this->init();');
define("FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_DECLARATION", '    private function adicionaElementos()');
define("FORM_GERADOR_FORM_ADICIONA_ELEMENTOS_CALL", '        $this->adicionaElementos();');
define("FORM_GERADOR_FORM_SETNAME", '$this->setName(\'@nomeFormulario\');');
define("FORM_GERADOR_FORM_SETMETHOD", '$this->setMethod(\'@metodoFormulario\');');
define("FORM_GERADOR_FORM_SETACTION", '$this->setAction(\'@acaoFormulario\');');

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


// constantes de comentarios de metodos ou chamadas de metodos
define("FORM_GERADOR_PARENT_CONSTRUCTOR_CALL_COMMENT", '        // Chamando o construtor parent do formulário');
define("FORM_GERADOR_FORM_INIT_CALL_COMMENT", '        // Chamando método de inicialização do formulário');
define("FORM_GERADOR_SET_NAME_CALL_COMMENT", '        // Setando o nome do formulário');
define("FORM_GERADOR_ADICIONA_ELEMENTOS_CALL_COMMENT", '        // adicionando elementos ao formulário');

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
    /**
    * Construtor do Formulário
    * 
    * @param array \$options - array com opções para construção do formulário
    *
    * @return void - não espera retorno
    *
    * @author @autor
    * @since @dataCriacao
    */
TEXT;
define("FORM_GERADOR_CONSTRUTOR_FORMULARIO_HEADER", $header);

$header = <<<TEXT
    /**
    * Inicializa o Formulário
    *
    * @return void - não espera retorno
    *
    * @author @autor
    * @since @dataCriacao
    */
TEXT;
define("FORM_GERADOR_INIT_FORMULARIO_HEADER", $header);

$header = <<<TEXT
    /**
    * Adiciona elementos ao Formulário
    *
    * @return void - não espera retorno
    *
    * @author @autor
    * @since @dataCriacao
    */
TEXT;
define("FORM_GERADOR_ADICIONA_ELEMENTOS_FORMULARIO_HEADER", $header);