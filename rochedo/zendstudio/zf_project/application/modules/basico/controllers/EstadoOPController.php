<?php
/**
 * Controlador dos estados do sistema.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @uses Basico_Model_Estado
 * 
 * @since 26/10/2011
 */
class Basico_OPController_EstadoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Estado.
	 * @var Basico_OPController_EstadoOPController
	 */
	protected static $_singleton;

	/**
	 * Instância do Modelo Estado.
	 * @var Basico_Model_Estado
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_localizacao.estado
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_localizacao.estado';

	/**
	 * Nome do campo id da tabela basico_localizacao.estado
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_EstadoOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_EstadoOPController
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
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_OPController_EstadoOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_EstadoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um novo objeto estado
	 */
	public static function retornaNovoObjEstado()
	{
		// retornando novo obj LocalizacaoEstado
		return new Basico_Model_LocalizacaoAssocEstado();
	}
	
	/**
	 * Retorna um array com os estados pronto para adicionar a um elemento
	 * do tipo Select
	 */
	public static function retornaEstadoOptions()
	{
		// recuperando o objeto estado
		$objEstado= self::retornaNovoObjEstado();
		// recuperando todos os estados
		$objEstado = Basico_OPController_PersistenceOPController::bdObjectFetchAll($objEstado);
		
		// adicionando opção em branco
		$arrayResult = array('' => '');
		
		if (count($objEstado) > 0) {
			foreach ($objEstado as $estado) {
				$arrayResult[$estado->id] = str_replace(TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("SELECT_OPTION_NAO_DESEJO_INFORMAR") ,$estado->nome);				
			}
			
			return $arrayResult;
		}
		   
	}
}