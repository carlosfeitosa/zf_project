<?php
/**
 * Controlador Ajuda
 * 
 * Controlador responsavel pelas ajudas do sistema
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 12/07/2012
 */

class Basico_OPController_AjudaOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AjudaOPController
	 */
	protected static $_singleton;

	/**
	 * @var Basico_Model_Ajuda object
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.ajuda
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.ajuda';
	
	/**
	 * Nome do campo id da tabela basico.ajuda
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Ajuda
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AjudaOPController
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
	 * @since 03/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_AjudaOPController
	 * 
	 * @return Basico_OPController_AjudaOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AjudaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna a constanteTextualAjuda pelo id da ajuda passado como parametro
	 * 
	 * @param Int $idAjuda
	 * 
	 * @return String
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 12/07/2012
	 */
	public function retornaConstanteTextualAjudaPorIdAjuda($idAjuda)
	{
		// recuperando constanteTextualAjuda
		$arrayDadosAjuda = $this->_retornaArrayDadosObjetoPorId($idAjuda, array('constanteTextualAjuda'));
		
		// verificando se a ajuda foi encontrada
		if (is_array($arrayDadosAjuda)) {
			return $arrayDadosAjuda['constanteTextualAjuda'];
		}
		
		return null;
	}
}