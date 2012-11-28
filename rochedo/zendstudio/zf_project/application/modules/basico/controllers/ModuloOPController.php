<?php
/**
 * Controlador de Modulo
 * 
 * Responsável pelos modulos do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Modulo
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_ModuloOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_ModuloOPController.
	 * @var Basico_OPController_ModuloOPController
	 */
	protected static $_singleton;
	/**
	 * Instância do modelo Basico_Model_Modulo
	 * @var Basico_Model_Modulo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.modulo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.modulo';
	/**
	 * Nome do campo id da tabela basico.modulo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do controlador Basico_OPController_ModuloOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_ModuloOPController
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
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ModuloOPController
	 * 
	 * @return Basico_OPController_ModuloOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ModuloOPController;
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o objeto modulo do modulo nomeado pelo parametro passado
	 * 
	 * @param String $nomeModulo
	 * 
	 * @return null|Basico_Model_Modulo
	 */
	public function retornaObjetoModuloPorNome($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando objeto
		$objModulo = $this->_retornaObjetosPorParametros("nome = '{$nomeModulo}'", null, 1, 0);

		// verificando resultado da recuperacao
		if (is_object($objModulo))
			return $objModulo;

		return null;
	}
	
	/**
	 * Retorna o id do modulo nomeado pelo parametro passado
	 * 
	 * @param String $nomeModulo
	 * 
	 * @return null|Basico_Model_Modulo
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 09/11/2012
	 */
	public function retornaIdModuloPorNome($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando objeto
		$arrayDadosModulo = $this->_retornaArrayDadosObjetosPorParametros("nome = '{$nomeModulo}'", null, 1, 0, array('id'));

		// verificando resultado da recuperacao
		if (count($arrayDadosModulo))
			return $arrayDadosModulo[0]['id'];

		return null;
	}
	
	/**
	 * Retorna o nome do modulo pelo id passado como parametro
	 * 
	 * @param Int $idModulo
	 * 
	 * @return null|String
	 */
	public function retornaNomeModuloPorId($idModulo)
	{
		// recuperando objeto
		$objModulo = $this->_retornaObjetosPorParametros("id = {$idModulo}", null, 1, 0);

		// verificando resultado da recuperacao
		if (is_object($objModulo))
			return $objModulo->nome;

		return null;
	}
	

	public function retornaIdModuloPorNomeViaSQL($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando informacoes sobre a tabela modulo
		$arrayNomeCampoIdModulo = array('id');
		$condicaoSQL           = "nome = '{$nomeModulo}'";

    	// recuperando login do usuario master
		$arrayModulo = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL('basico.modulo', $arrayNomeCampoIdModulo, $condicaoSQL);
		
		// verificando se a consulta obteve resultados
		if ((isset($arrayModulo)) and (is_array($arrayModulo)) and (count($arrayModulo) > 0)) {
			// retornando o id da categoria
			return (Int) $arrayModulo[0]['id'];
		}

		return null;
	}
}