<?php
/**
 * Controlador DadosPessoasPerfisControllerController
 * 
 * @uses Basico_Model_DadosPessoasPerfis
 */
class Basico_DadosPessoasPerfisControllerController
{
    /**
     * 
     * @var Basico_DadosPessoasPerfisController
     */
	static private $singleton;

	/**
	 * @var Basico_Model_DadosPessoasPerfis
	 */
	private $dadosPessoasPerfis;

    /**
	 * Construtor do Controlador DadosPessoasPerfis
	 * 
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	public function __construct()
	{
    	$this->dadosPessoasPerfis = new Basico_Model_DadosPessoasPerfis();
	}

    /**
	 * Retorna o objeto da Classe DadosPessoasPerfisController
	 * 
	 * @return Basico_DadosPessoasPerfisController
	 */
	static public function init() {
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_DadosPessoasPerfisControllerController();
		}
		return self::$singleton;
	}

	/**
	 * Retorna a assinatura da mensagem do e-mail do sistema
	 * 
	 * @return String
	 */
	public function retornaAssinaturaMensagemEmailSistema()
	{
		// recuperando o id pessoa perfil do sistema
		$idPessoaPerfilSistema = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
		
		// recuperando o objeto dados pessoas perfis
	    $objDadosPessoasPerfis = self::$singleton->dadosPessoasPerfis->fetchList("id_pessoa_perfil= {$idPessoaPerfilSistema}", null, 1, 0);
	    
	    // verificando se o objeto foi recuperado
		if (isset($objDadosPessoasPerfis[0]))
			// retornando a assinatura de e-mail do sistema
    	    return $objDadosPessoasPerfis[0]->assinaturaMensagemEmail;
    	    
    	throw new Exception(MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA);
	}
}
