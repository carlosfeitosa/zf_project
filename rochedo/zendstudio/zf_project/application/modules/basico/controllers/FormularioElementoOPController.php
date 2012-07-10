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

class Basico_OPController_FormularioElementoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_OPController_FormularioElementoOPController
	 */
	protected static $_singleton;

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
	 * @param String $nomeElemento
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

	/**
	 * Retorna um array contendo os ids dos componentes dos elementos passados por parametro
	 * 
	 * @param Array $arrayIdsElementos - ids dos elementos que deseja recuperar os ids dos componentes
	 * 
	 * @return Array|false - array contendo os ids dos componentes dos elementos ou false se não conseguir
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 21/06/2012
	 */
	public function retornaArrayIdsComponentesElementosPorArrayIdsElementos($arrayIdsElementos)
	{
		// verificando se foram passados elementos no array de ids de elementos
		if (!count($arrayIdsElementos)) {
			// retornando falso
			return false;
		}

		// tranformando o array em string
		$stringIdsElementos = implode(',', $arrayIdsElementos);

		// recuperando array com os ids dos componentes
		$arrayIdsComponentes = $this->_retornaArrayDadosObjetosPorParametros("id in ({$stringIdsElementos})", null, null, null, array('idComponente'));

		// limpando memória
		unset($stringIdsElementos);

		// verificando se foram recuperados os dados
		if (!count($arrayIdsComponentes)) {
			// retornando falso
			return false;
		}

		// inicializando variáveis
		$arrayRetorno = array();

		// loop para popular o array de retorno
		foreach ($arrayIdsComponentes as $arrayValor) {
			// setando o valor no array
			$arrayRetorno[] = $arrayValor['idComponente'];

			// limpando memória
			unset($arrayValor);
		}

		// limpando memória
		unset($arrayIdsComponentes);

		// retornando array
		return $arrayRetorno;
	}
	
	/**
	 * Retorna um array com os dados para montagem dos elementos atraves do array de ids de elementos
	 * 
	 * @param array $arrayIdsElementos - array com ids dos elementos para recuperacao dos dados
	 * 
	 * @return array - array contendo os dados dos elementos encontrados ou um array vazio se não encontrar nenhum elemento
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 10/07/2012
	 */
	public function retornaArrayDadosMontagemElementosPorArrayIdsElementos(array $arrayIdsElementos)
	{
		// verificando se foram passados elementos no array de ids de elementos
		if (!count($arrayIdsElementos)) {
			// retornando falso
			return false;
		}

		// tranformando o array em string
		$stringIdsElementos = implode(',', $arrayIdsElementos);
		
		// inicializando variaveis
		$arrayDadosElementos = array();

		// recuperando array com os dados dos elementos
		$arrayDadosElementos = $this->_retornaArrayDadosObjetosPorParametros("id in ({$stringIdsElementos})", null, null, null, array('idElemento', 'idComponente', 'idAjuda', 'constanteTextualLabel', 'element', 'elementName', 'elementAttribs', 'elementValueDefault', 'elementReloadable'));

		// loop para organizar array de retorno
		foreach ($arrayDadosElementos as $arrayDadoElemento)
		{
			$arrayResultado[$arrayDadoElemento['idElemento']] = $arrayDadoElemento;
		}
		
		// retornando array com dados dos elementos
		return $arrayDadosElementos;
	}
}