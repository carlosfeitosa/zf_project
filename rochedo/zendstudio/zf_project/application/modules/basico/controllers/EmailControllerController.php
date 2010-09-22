<?php
require_once("CategoriaControllerController.php");
/**
 * Controlador Email
 * 
 * @uses Basico_Model_Email
 */
class Basico_EmailControllerController
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
		if (self::$singleton == NULL){
			self::$singleton = new Basico_EmailControllerController();
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
    	    return $auxEmail[0]->uniqueId;
    	else
    	    return NULL;
	}
	
	/**
	 * Retorna o objeto email carregado ou null se o email passado não existir no banco. 
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
	 * Retorna o id do email ou null se o email passado não existir no banco. 
	 * @param String $email
	 * @return NULL|Basico_Model_Email
	 */
	public function retornaIdEmail($email)
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0]->id;
    	else
    	    return NULL;
	}
	
    /**
	 * Retorna o email pelo id passado ou null se o id passado não existir no banco. 
	 * @param Integer $id
	 * @return NULL|Basico_Model_Email
	 */
	public function retornaEmailId($id)
	{
		$auxEmail = self::$singleton->email->fetchList("id = '{$id}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0];
    	else
    	    return NULL;
	}
	
	/**
	 * Retorna o id da pessoa pelo email passado como parâmetro.
	 * @param String $email
	 * @return NULL|Basico_Model_Email
	 */
	public function retornaIdPessoaEmail($email)
	{
		$auxEmail = self::$singleton->email->fetchList("email = '{$email}'", null, 1, 0);
		if (isset($auxEmail[0]))
    	    return $auxEmail[0]->pessoa;
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
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();

			// salvando o objeto através do controlador Save
	    	Basico_SaveControllerController::save($novoEmail, null, Basico_Model_Util::retornaIdPessoaPerfilSistema(), Basico_CategoriaControllerController::retornaIdCategoriaLogNovoEmail(), LOG_MSG_NOVO_EMAIL);

	    	// atualizando o objeto
    		$this->email = $novoEmail;

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
		$controladorCategoria = Basico_CategoriaControllerController::init();
		
		//BUSCANDO EMAIL DO SISTEMA
		$categoriaEmailSistema = $controladorCategoria->retornaCategoriaEmailSistema();
		$emailSistema = self::$singleton->email->fetchList("id_categoria = {$categoriaEmailSistema->id}", null, 1, 0);
		
		//RETORNADO EMAIL DO SISTEMA
		if (isset($emailSistema[0]))
    	    return $emailSistema[0]->email;
    	else
    	    return NULL;
	}
}