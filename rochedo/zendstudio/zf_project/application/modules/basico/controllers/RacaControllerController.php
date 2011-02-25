<?php
// incluindoo controladores
require_once('TradutorControllerController.php');

/**
 * Controlador Raca
 * 
 * @uses Basico_Model_Raca
 */
class Basico_RacaControllerController
{
	/**
	 * 
	 * @var Basico_RacaControllerController
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
	 * @return Basico_RacaControllerController
	 */
	static public function init()
	{
		return;
	}
	
     /**
	 * Retorna instância do controlador Basico_RacaControllerController
	 * 
	 * @return Basico_RacaControllerController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_RacaControllerController();
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
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

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
			Basico_PersistenceControllerController::bdSave($objRaca, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

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
		$controladorTradutor = Basico_TradutorControllerController::getInstance();
		
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