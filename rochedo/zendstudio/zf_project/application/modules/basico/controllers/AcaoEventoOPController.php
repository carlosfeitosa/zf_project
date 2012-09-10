<?php
/**
 * Controlador AcaoEvento
 * 
 * Responsável pelas acoes eventos do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_AcaoEvento
 * 
 * @since 06/09/2012
 */
class Basico_OPController_AcaoEventoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_AcaoEventoOPController
	 */
	protected static $_singleton;

	/**
	 * 
	 * @var Basico_Model_AcaoEvento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.acao_evento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.acao_evento';

	/**
	 * Nome do campo id da tabela basico.acao_evento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_AcaoEventoOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_AcaoEventoOPController
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
	 * Retorna a instancia do controlador Mascara.
	 * 
	 * @return Basico_OPController_AcaoEventoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoEventoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna a string do AcaoEvento pelo id passado como parametro
	 * 
	 * @param Int $idAcaoEvento - id da AcaoEvento que tera a acao retornada
	 * 
	 * @return String|null - AcaoEvento
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 06/09/2012
	 */
	public function retornaStringAcaoEventoPorIdAcaoEvento($idAcaoEvento)
	{
		// recuperando a acao
		$arrayDadosAcaoEvento = $this->_retornaArrayDadosObjetoPorId($idAcaoEvento, array('acao'));
		
		// verificando se o AcaoEvento foi encontrado
		if (is_array($arrayDadosAcaoEvento)) {
			// retornando a acao
			return $arrayDadosAcaoEvento['acao'];
		}
		
		return null;
	}

}