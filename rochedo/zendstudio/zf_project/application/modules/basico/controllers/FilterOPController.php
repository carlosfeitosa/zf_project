<?php
/**
 * Controlador Filter.
 *
 * Controlador responsável pelos filters do sistema
 *
 * @package Basico
 * 
 * @uses Basico_Model_Filter
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 12/07/2012
 */
class Basico_OPController_FilterOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FilterOPController
	 * @var Basico_OPController_FilterOPController
	 */
	static protected $_singleton;
	/**
	 * Instância do Modelo Filter.
	 * @var Basico_Model_Filter
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.filter
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.filter';

	/**
	 * Nome do campo id da tabela basico.filter
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_FilterOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FilterOPController
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
	 * Retorna instância do Controlador Basico_OPController_FilterOPController.
	 * 
	 * @return Basico_OPController_FilterOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FilterOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados do filter pelo id passado como parametro
	 * 
	 * @param Int $idFilter - id do filter que tera os dados retornados
	 * 
	 * @return Array|null - array se encontrar o filter ou null se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaDadosFilterPorId($idFilter)
	{
		// recuperando constanteTextualAjuda
		$arrayDadosFilter = $this->_retornaArrayDadosObjetoPorId($idFilter);
		
		// verificando se a ajuda foi encontrada
		if (is_array($arrayDadosFilter)) {
			// retornando array com os dados do filter
			return $arrayDadosFilter;
		}
		
		return null;
	}
	
	/**
	 * Retorna o id do componente do filter pelo id passado como parametro
	 * 
	 * @param Int $idFilter - id do filter que tera os dados retornados
	 * 
	 * @return Array|null - array se encontrar o filter ou null se não encontrar
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaIdComponenteFilterPorIdFilter($idFilter)
	{
		// recuperando o id componente do filter
		$arrayDadosFilter = $this->_retornaArrayDadosObjetoPorId($idFilter, array('idComponente'));
		
		// verificando se a ajuda foi encontrada
		if (is_array($arrayDadosFilter)) {
			// retornando o id do componente do filter
			return $arrayDadosFilter['idComponente'];
		}
		
		return null;
	}
	
	/**
	 * Retorna os attribs do filter pelo id passado como parametro
	 * 
	 * @param Int $idFilter - id do filter que tera os attribs retornados
	 * 
	 * @return String|null - attribs do filter
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 16/08/2012
	 */
	public function retornaAttribsFilterPorIdFilter($idFilter)
	{
		// recuperando o id componente do filter
		$arrayDadosFilter = $this->_retornaArrayDadosObjetoPorId($idFilter, array('attribs'));
		
		// verificando se o filter foi encontrado
		if (is_array($arrayDadosFilter)) {
			// retornando os attribs do filter
			return $arrayDadosFilter['attribs'];
		}
		
		return null;
	}
	
	/**
	 * Retorna um array com os filters defaults e especializacao (exclude e include) do elemento 
	 * atraves do id do elemento e do id da associacao do elemento com o formulario
	 * 
	 * @param int $idElemento - id do elemento do formulario
	 * @param int $idAssocclElemento - id da associacao entre o elemento e o formulario
	 * 
	 * @return Array
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 31/07/2012
	 */
	public function retornaArrayDadosFiltersElemento($idElemento, $idAssocclElemento)
	{
		// recuperando filters includes default do elemento
    	$arrayDadosFilters['default'] = Basico_OPController_FormularioElementoAssocclFilterOPController::getInstance()->retornaArrayDadosFiltersDefaultOrdenadoPorOrdemPorIdElemento($idElemento);
    	
    	// recuperando os filters da especializacao do elemento no formulario
    	$arrayDadosFilters['especializacao'] = Basico_OPController_FormularioAssocclElementoAssocclFilterOPController::getInstance()->retornaArrayDadosFiltersEspecializacaoOrdenadoPorOrdemPorIdAssocclElemento($idAssocclElemento);

    	// retornando array com os filtros do elemento
    	return $arrayDadosFilters;
    	
	}
}