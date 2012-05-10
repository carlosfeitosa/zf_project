<?php
/**
 * Controlador dos países do sistema.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @uses Basico_Model_Pais
 * 
 * @since 19/04/2011
 */
class Basico_OPController_PaisOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Pais.
	 * @var Basico_OPController_PaisOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Pais.
	 * @var Basico_Model_Pais
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_localizacao.assoc_pais
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_localizacao.assoc_pais';
	/**
	 * Nome do campo id da tabela basico_localizacao.assoc_pais
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_PaisOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PaisOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_OPController_PaisOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PaisOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um novo objeto pais
	 */
	public static function retornaNovoObjPais()
	{
		// retornando novo obj tipo sanguinio
		return new Basico_Model_LocalizacaoPais();
	}
	
	/**
	 * Retorna um array com os paises pronto para adicionar a um elemento
	 * do tipo Select
	 */
	public static function retornaPaisOptions()
	{
		// recuperando todos os países
		$objPais = self::retornaNovoObjPais();
		// recuperando todos os tipos sanguineos
		$objPais = Basico_OPController_PersistenceOPController::bdObjectFetchAll($objPais);
		
		// adicionando opção em branco
		$arrayResult = array('' => '');
		
		if (count($objPais) > 0) {
			foreach ($objPais as $pais) {
				$arrayResult[$pais->id] = str_replace(TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("SELECT_OPTION_NAO_DESEJO_INFORMAR") ,Basico_OPController_DicionarioExpressaoOPController::getInstance()->retornaTraducao($pais->constanteTextual));				
			}
			
			return $arrayResult;
		}
		   
	}
}
