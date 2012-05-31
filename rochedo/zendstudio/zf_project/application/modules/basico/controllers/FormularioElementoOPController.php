<?php
/**
 * Controlador Formulario Elemento
 * 
 * Controlador responsavel pelos formularios elementos
 * 
 * @package Basico
 * 
 * @author Igor Pinho (igor.pinho.souza@rochedoproject.om)
 * 
 * @since 22/03/2011
 */

class Basico_OPController_FormularioElementoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_OPController_FormularioElementoOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario.elemento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.elemento';
	
	/**
	 * Nome do campo id da tabela basico_formulario.elemento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}	
	
	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * 
	 * @return Basico_OPController_FormularioElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoOPController();
		}
		// retornando singleton
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto formulario elemento vazio
	 * 
	 * @return Basico_Model_FormularioElemento
	 */
	public function retornaNovoObjetoFormularioElemento()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElemento();
	}
	
	/**
	 * Retorna o elemento hash
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public function retornaElementoHash()
	{
		// retornando o elemento
		return self::retornaElementoPorNome(FORM_ELEMENT_HASH);
	}

	/**
	 * Retorna o elemento html que permite inclusao de qualquer codigo, sem escapes
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public function retornaElementoHTMLContentDinamico()
	{
		// retornando elemento
		return self::retornaElementoPorNome(FORM_ELEMENT_HTML_DINAMIC_CONTENT);
	}

	/**
	 * Retorna o elemento javascript
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public function retornaElementoJavaScript()
	{
		// retornando elemento
		return self::retornaElementoPorNome(FORM_ELEMENT_HTML_JAVASCRIPT_CONTENT);
	}

	/**
	 * Retorna o elemento cujo nome foi passado por parametro
	 * 
	 * @param unknown_type $nomeElemento
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	private function retornaElementoPorNome($nomeElemento)
	{
		// recuperando array de resultados
		$objsFormularioElemento = $this->_retornaObjetosPorParametros("nome = '{$nomeElemento}'");

		// verificando se o elemento foi recuperado
		if (count($objsFormularioElemento) > 0)
			// retornando elemento
			return $objsFormularioElemento[0];

		return null;
	}

	/**
	 * Retorna o atributo elementRequired da relacao do formulario elemento com o formulario
	 * 
	 * @param Integer $idFormularioElemento
	 * @param Integer $idFormulario
	 * 
	 * @return Boolean|null
	 */
	public function retornaElementRequiredFormularioElementoFormulario($idFormularioElemento, $idFormulario)
	{
		// verificando se foi passado o parametro do id do formulario elemento e o id do formulario
		if ((!$idFormulario) or (!$idFormularioElemento)) {
			return null;
		}

		// recuperando o objeto formulario elemento
		$objetoFormularioElemento = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idFormularioElemento);

		// recuperando o objeto formularioFormularioElemento
		$objetoFormularioFormularioElemento = $objetoFormularioElemento->getFormularioFormularioElementoObjectPorIdFormulario($idFormulario);

		// verificando se o objeto formularioFormularioElemento foi recuperado
		if (isset($objetoFormularioFormularioElemento)) {
			// retornando o resultado da recuperacao do atributo elementRequired da vinculacao do formulario elemento com o formulario
			return $objetoFormularioFormularioElemento->elementRequired;
		}
	}
}