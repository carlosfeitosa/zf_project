<?php
/**
 * Controlador dos municipios do sistema.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @uses Basico_Model_Pais
 * 
 * @since 26/10/2011
 */
class Basico_OPController_MunicipioOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Municipio.
	 * @var Basico_OPController_MunicipioOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Municipio.
	 * @var Basico_Model_Municipio
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_localizacao.assoc_municipio
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_localizacao.assoc_municipio';
	/**
	 * Nome do campo id da tabela basico_localizacao.assoc_municipio
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_MunicipioOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_MunicipioOPController
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
	 * @return Basico_OPController_MunicipioOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MunicipioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um novo objeto municipio
	 */
	public static function retornaNovoObjMunicipio()
	{
		// retornando novo obj tipo sanguinio
		return new Basico_Model_LocalizacaoAssocMunicipio();
	}
	
	/**
	 * Retorna um array com os municipios pronto para adicionar a um elemento
	 * do tipo Select
	 */
	public static function retornaMunicipioOptions($idEstado = null)
	{
		// recuperando todos os municipios
		$objMunicipio = self::retornaNovoObjMunicipio();
		// recuperando todos os municipios
		$objMunicipio = Basico_OPController_PersistenceOPController::bdObjectFetchList($objMunicipio, 'id_estado=17');
		
		// adicionando opção em branco
		$arrayResult = array('' => '');
		
		if (count($objMunicipio) > 0) {
			foreach ($objMunicipio as $municipio) {
				$arrayResult[$municipio->id] = str_replace(TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR, Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL("SELECT_OPTION_NAO_DESEJO_INFORMAR") ,$municipio->nome);				
			}
			return $arrayResult;
		}
	}
	
	/**
	 * Retorna id_estado do municipio
	 */
	public static function retornaEstadoMunicipio($idMunicipio)
	{
		// recuperando todos os países
		$objMunicipio = self::retornaNovoObjMunicipio();
		// recuperando todos os tipos sanguineos
		$objMunicipio = Basico_OPController_PersistenceOPController::bdObjectFetchList($objMunicipio, "id={$idMunicipio}");
		
		return $objMunicipio->id_estado;
	}
}