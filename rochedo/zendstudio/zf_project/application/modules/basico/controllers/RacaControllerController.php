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
	 * @var Basico_RacaController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Raca
	 */
	private $raca;
	
	/**
	 * Carrega a variavel raca com um novo objeto Basico_Model_Raca
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->raca = new Basico_Model_Raca();
	}
	
	/**
	 * Inicializa Controlador Raca.
	 * 
	 * @return Basico_RacaController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_RacaControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva a raca.
	 * 
	 * @param Basico_Model_Raca $novaRaca
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 
	public function salvarRaca($novaRaca, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

    		if ($novaRaca->id != NULL)
    			$categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogUpdateDadosPessoais();
            else
                $categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogNovoDadosPessoais();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoDadosPessoais, $versaoUpdate, $idPessoaPerfilCriador, $categoriaLog, LOG_MSG_NOVO_DADOS_PESSOAIS);
			
			// atualizando o objeto
			$dadosPessoais = $novoDadosPessoais;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	*/
	
    /**
	 * Retorna um array contendo as raças cadastradas no sistema
	 * @return Array
	 */
	public static function retornaArrayRacasOptions()
	{
		// inicializando controladores
		$controladorTradutor = Basico_TradutorControllerController::init();
		
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