<?php
/**
 * Controlador Basico_OPController_DadosPessoasPerfisOPController
 * 
 * @uses Basico_Model_DadosPessoasPerfis
 */
class Basico_OPController_DadosPessoasPerfisOPController
{
    /**
     * 
     * @var Basico_OPController_DadosPessoasPerfisOPController
     */
	private static $_singleton;

	/**
	 * @var Basico_Model_DadosPessoasPerfis
	 */
	private $_dadosPessoasPerfis;

    /**
	 * Construtor do Controlador DadosPessoasPerfis
	 * 
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	private function __construct()
	{
    	$this->_dadosPessoasPerfis = $this->retornaNovoObjetoDadosPessoasPerfis();

    	// inicializando o controlador
    	$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DadosPessoasPerfisOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	} 
	
    /**
	 * Retorna a instancia do objeto Basico_OPController_DadosPessoasPerfisOPController
	 * 
	 * @return Basico_OPController_DadosPessoasPerfisOPController
	 */
	static public function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DadosPessoasPerfisOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto dados pessoas perfis vazio
	 * 
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	public function retornaNovoObjetoDadosPessoasPerfis()
	{
		// retornando um modelo vazio
		return new Basico_Model_DadosPessoasPerfis();
	}

	/**
	 * Retorna a assinatura da mensagem do e-mail do sistema
	 * 
	 * @return String
	 */
	public function retornaAssinaturaMensagemEmailSistema()
	{
		// recuperando o id pessoa perfil do sistema
		$idPessoaPerfilSistema = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();
		
		// recuperando o objeto dados pessoas perfis
	    $objDadosPessoasPerfis = $this->_dadosPessoasPerfis->fetchList("id_pessoa_perfil= {$idPessoaPerfilSistema}", null, 1, 0);
	    
	    // verificando se o objeto foi recuperado
		if (isset($objDadosPessoasPerfis[0]))
			// retornando a assinatura de e-mail do sistema
    	    return $objDadosPessoasPerfis[0]->assinaturaMensagemEmail;
    	    
    	throw new Exception(MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA);
	}
}