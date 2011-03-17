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
	private $_raca;
	
	/**
	 * Carrega a variavel raca com um novo objeto Basico_Model_Raca
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->_raca = new Basico_Model_Raca();
	}
	
	/**
	 * Inicializa Controlador Raca.
	 * 
	 * @return Basico_OPController_RacaOPController
	 */
	static public function init()
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
	 * Salva o objeto Raca no banco de dados.
	 * 
	 * @param Basico_Model_Raca $novaRaca
	 * 
	 * @return void
	 */
	public function salvarRaca(Basico_Model_Raca $objRaca, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por uma pessoa ou pelo sistema
			if (!isset($idPessoaPerfilCriador))
				$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objRaca->id != NULL) {
				// recuperando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateRaca();
				$mensagemLog    = LOG_MSG_UPDATE_RACA;
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovaRaca();
				$mensagemLog    = LOG_MSG_NOVA_RACA;
			}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objRaca, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
	    	$this->_raca = $objRaca;

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