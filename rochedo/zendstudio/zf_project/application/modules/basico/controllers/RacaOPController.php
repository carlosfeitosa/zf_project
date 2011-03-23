<?php

/**
 * Controlador Raca
 * 
 * @uses Basico_Model_Raca
 */
class Basico_OPController_RacaOPController
{
	/**
	 * 
	 * @var Basico_OPController_RacaOPController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Raca
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Basico_OPController_RacaOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador Basico_OPController_RacaOPController
		$this->init();
	}
	
	/**
	 * Inicializa Controlador Raca.
	 * 
	 * @return Basico_OPController_RacaOPController
	 */
	protected function init()
	{
		return;
	}
	
     /**
	 * Retorna instância do controlador Basico_OPController_RacaOPController
	 * 
	 * @return Basico_OPController_RacaOPController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_RacaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo raca vazio
	 * 
	 * @return Basico_Model_Raca
	 */
	public function retornaNovoObjetoRaca()
	{
		// retornando um modelo vazio
		return new Basico_Model_Raca();
	}

	/**
	 * Salva o objeto raca no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Raca $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Raca', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateRaca();
	    		$mensagemLog    = LOG_MSG_UPDATE_RACA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovaRaca();
	    		$mensagemLog    = LOG_MSG_NOVA_RACA;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}

	/**
	 * Apaga o objeto raca do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Raca $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Raca', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteRaca();
	    	$mensagemLog    = LOG_MSG_DELETE_RACA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
    /**
	 * Retorna um array contendo as raças cadastradas no sistema
	 * @return Array
	 */
	public static function retornaArrayRacasOptions()
	{
		// inicializando controladores
		$controladorTradutor = Basico_OPController_TradutorOPController::getInstance();
		
		$objRaca = new Basico_Model_Raca();
		
		$racas = $objRaca->fetchAll();
		
		$arrayResultado[] = "";
		if (count($racas) > 0) {
			
			foreach ($racas as $raca) {
				$arrayResultado[$raca->id] =  $controladorTradutor->retornaTraducao($raca->constanteTextual);
			}
			
		}
		
		   return $arrayResultado;
	}
}