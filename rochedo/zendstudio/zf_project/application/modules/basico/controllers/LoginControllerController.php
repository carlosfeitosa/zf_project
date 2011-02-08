<?php
// inserindo controllersControllers
require_once("TradutorControllerController.php");

class Basico_LoginControllerController {
/**
	 * 
	 * @var Basico_LoginControllerController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Login
	 */
	private $login;
	
	/**
	 * Carrega a variavel login com um novo objeto Basico_Model_Login
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->login = new Basico_Model_Login();
	}
	
	/**
	 * Inicializa Controlador Login.
	 * 
	 * @return Basico_LoginController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_LoginControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva o login.
	 * 
	 * @param Basico_Model_Login $novoLogin
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarLogin($novoLogin, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoLogin, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoLogin(), LOG_MSG_NOVO_DADOS_PESSOAIS);
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna um array no formato Json possuindo as mensagens relacionadas
	 * ao componente passwordStrengthChecker.
	 * @return Json
	 */
	public function retornaJsonMensagensPasswordStrengthChecker()
	{
		// inicializando controladores
		$tradutorController = Basico_TradutorControllerController::init();
		
		// carregando array com as mensagens utilizadas
		$arrayMensagens = array('muito_fraca' => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA'),
		                        'fraca'       => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA'),
		                        'boa'         => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA'),
		                        'forte'       => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE'),
		                        'muito_forte' => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE'),
		                        'digite_senha'=> $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA'),
		                        'abaixo'      => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO')
	                           );
	                           
	    // codificando o array e retornando-o.
	    return str_replace('"', "'", Zend_Json::encode($arrayMensagens));
	}
}