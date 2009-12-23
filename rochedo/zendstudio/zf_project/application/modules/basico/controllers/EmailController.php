<?php
require_once("CategoriaController.php");
/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailController 
{
	/**
	 * 
	 * @var Basico_EmailController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Email
	 */
	private $email;
	
	/**
	 * Construtor do Controlador Email
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->email = new Basico_Model_Email();
	}
	
	/**
	 * Inicializa o controlador Email.
	 * 
	 * @return Basico_EmailController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_EmailController();
		}
		return self::$singleton;
	}
	
	/**
	 * Retorna um novo UniqueId
	 * @return String
	 */
	private function gerarUniqueIdEmail()
	{
		$uniqueId = new Basico_Model_Gerador();
		$unique = $uniqueId->getGeradorUniqueIdObject()->gerar($this->email, 'unique_id');
		return $unique;
	}
	
	/**
	 * Retorna um novo UniqueId
	 * @return String 
	 */
	public function retornaNovoUniqueIdEmail()
	{
		return $this->gerarUniqueIdEmail();
	}
	
	/**
	 * Retorna o UniqueId do email passado como parametro. 
	 * @param String $email
	 * @return NULL|Basico_Model_Email
	 */
	public function retornaUniqueIdEmail($email) 
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0];
    	else
    	    return NULL;
	}
	
	/**
	 * Retorna email
	 * @param String $email
	 * @return NULL|Basico_Model_Email
	 */
	private function retornaEmail($email)
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0];
    	else
    	    return NULL;
	}
	
	/**
	 * 
	 * @param String $email
	 * @return NULL|Basico_Model_Email
	 */
	public function retornaIdPessoaEmail($email)
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0];
    	else
    	    return NULL;
	}
	
	/**
	 * Verifica se o email existe, se existir retorna o atributo 'validado' do email.
	 * @param String $email
	 * @return NULL|Boolean
	 */
	public function verificaEmailExistente($email)
	{
		$auxEmail = $this->retornaEmail($email);
		if(isset($auxEmail))
			return $auxEmail->validado;
		else
		    return NULL;
	}
	
	/**
	 * Salva novo email no banco
	 * @param String $novoEmail
	 * @param Int|NULL $idPessoaPerfilCriador
	 * @return void
	 */
	public function salvarEmail($novoEmail, $idPessoaPerfilCriador = null)
	{
    	try{
    		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
    		$this->email = $novoEmail;
			$this->email->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaController::init();
			$controladorLog       = Basico_LogController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoEmail();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVO_EMAIL;
            $controladorLog->salvarLog($novoLog);
			
    	} catch (Exception $e) {
    		throw new Exception($e);
    	}
	}
	
	
	/**
	 * Retorna o email do Sistema
	 * @return Basico_Model_Email
	 */
	public function retornaEmailSistema()
    {
    	//INICIALIZANDO CONTROLADOR CATEGORIA
		$controladorCategoria = Basico_CategoriaController::init();
		
		//BUSCANDO EMAIL DO SISTEMA
		$categoriaEmailSistema = $controladorCategoria->retornaCategoriaEmailSistema();
		$emailSistema = self::$singleton->email->fetchList("id_categoria = {$categoriaEmailSistema->id}", null, 1, 0);
		
		//RETORNADO EMAIL DO SISTEMA
		if (isset($emailSistema[0]))
    	    return $emailSistema[0];
    	else
    	    return NULL;
	}
}