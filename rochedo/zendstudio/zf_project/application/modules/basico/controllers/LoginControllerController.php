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
	
	/**
	 * Retorna o login da pessoa passada
	 * @param Int $idPessoa
	 * @return String
	 */
	public function retornaLoginPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objLogin = self::$singleton->login->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objLogin[0]))
				// retorna o o objeto dados pessoais
	    	    return $objLogin[0]->login;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}	
	}
}