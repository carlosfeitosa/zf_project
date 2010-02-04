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
	 * @return Basico_Model_DadosPessoasPerfis
	 */
	public function __construct()
	{
    	$this->dadosPessoasPerfis = new Basico_Model_DadosPessoasPerfis();
	}
	
    /**
	 * Retorna o objeto da Classe DadosPessoasPerfisController
	 * @return Basico_DadosPessoasPerfisController
	 */
	static public function init() {
		if(self::$singleton == NULL){
			self::$singleton = new Basico_DadosPessoasPerfisControllerController();
		}
		return self::$singleton;
	}
	
	public function retornaAssinaturaMensagemEmailSistema()
	{
		$idPessoaPerfilSistema = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    $dadosPessoasPerfis    = self::$singleton->dadosPessoasPerfis->fetchList("id_pessoa_perfil= {$idPessoaPerfilSistema}", null, 1, 0);
		if (isset($dadosPessoasPerfis[0]))
    	    return $dadosPessoasPerfis[0]->assinaturaMensagemEmail;
    	throw new Exception(MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA);
	}

}
