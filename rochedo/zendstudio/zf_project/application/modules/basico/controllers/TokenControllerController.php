<?php
require_once('CategoriaControllerController.php');
require_once('CategoriaChaveEstrangeiraControllerController.php');
require_once('SessionControllerController.php');
require_once(APPLICATION_PATH . "/modules/basico/models/Token.php");

/**
 * Basico_TokenController
 * @author joao
 *
 */
class Basico_TokenControllerController
{
	/**
	 * 
	 * @var Basico_TokenControllerController
	 */
	static private $singleton;
    
	/**
	 * @var Basico_Model_Token
	 */
	private $token;
	
	/**
	 * @var array
	 */
	static private $arrayTokensUrls;
	
	/**
	 * Construtor do Controlador Token
	 * 
	 * @return void
	 */
	private function __construct()
	{
        if ($this->token == NULL)
		    $this->token = new Basico_Model_Token();
	}
		
	/**
	 * Inicializa o controlador Basico_TokenControllerController
	 * @return Basico_TokenControllerController
	 */
	static public function init()
	{
		if (self::$singleton == NULL){
			self::$singleton = new Basico_TokenControllerController();
		}
		return self::$singleton;
	}
	
    /**
     * Gera um Token para uma URL, armazenando o endereço original na sessão
     * @param String $url
     * @return String
     */
	static public function gerarTokenUrl($url)
	{	    
        $session = Basico_SessionControllerController::registraSessaoToken();
        
		if (isset($session->arrayTokensUrls))
		    self::$arrayTokensUrls = $session->arrayTokensUrls;
		else
            self::$arrayTokensUrls = array();
	    
	    $gerador = new Basico_Model_Gerador();
	    	    
	    $token = array_search($url, self::$arrayTokensUrls);
	    
	    if ($token === false){
	        $token = $gerador->gerarToken(array_keys(self::$arrayTokensUrls));
	        self::$arrayTokensUrls[$token] = $url;
	        $session->arrayTokensUrls = self::$arrayTokensUrls;
	    }
	    //echo Zend_Controller_Front::getInstance()->getBaseUrl();exit;
	    
	    $baseUrl = str_replace("/index2.php", '',Zend_Controller_Front::getInstance()->getBaseUrl());
        return $baseUrl . LINK_CONTROLADOR_TOKENS . $token;
	}
	
    /**
     * Transforma um Token em uma URL, utlizando o endereço original armazenado na sessão
     * @param String $token
     * @return String
     */
	public function decodeTokenUrl($token)
	{
	    $session = Basico_SessionControllerController::registraSessaoToken();
	    
	    if (isset($session->arrayTokensUrls))
		    self::$arrayTokensUrls = $session->arrayTokensUrls;
		else
            self::$arrayTokensUrls = array();
            
        if (array_key_exists($token, self::$arrayTokensUrls))
            $url = self::$arrayTokensUrls[$token];
        else
            throw new Exception(MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO);
            
        
        
        $baseUrl = str_replace("/index2.php", "", Zend_Controller_Front::getInstance()->getBaseUrl());
        $url     = str_replace($baseUrl, '', $url);
        
        return $url;
	}
	
    /**
     * Gera um Token para qualquer modelo passado como parametro
     * @param Object $modelo
     * @param String $nomeDoCampoBancoDeDados
     * @return String
     */
	public function gerarToken($modelo, $nomeDoCampoBancoDeDados)
	{
		$gerador = new Basico_Model_Gerador();
		$tokenString = $gerador->getGeradorUniqueIdObject()->gerar($modelo, $nomeDoCampoBancoDeDados);
		return $tokenString;
	}

    public function salvarToken($novoToken, $idPessoaPerfilCriador = null)
	{
		//CONSULTANDO TABELA DE CHAVE ESTRANGEIRA
		$categoriaChaveEstrangeira = new Basico_Model_CategoriaChaveEstrangeira();
		$tabela = $categoriaChaveEstrangeira->fetchList("id_categoria = {$novoToken->categoria}", null, 1, 0);
		
		if (!isset($tabela[0])){
			throw new Exception(MSG_ERRO_TOKEN_CHECK_CONSTRAINT);
		}
		
		$nomeTabela  = $tabela[0]->tabelaEstrangeira;
		$campoTabela = $tabela[0]->campoEstrangeiro;
		
		$auxDb = Zend_Registry::get('db');
		
		$checkConstraint = $auxDb->fetchAll("SELECT {$campoTabela} FROM {$nomeTabela} WHERE {$campoTabela} = ?", array($novoToken->idGenerico));
		
		if ((isset($checkConstraint)) and ($checkConstraint != false))  {
	    	
			try{
	    		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
		    	if (!isset($idPessoaPerfilCriador))
		    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
		    		
	    		$this->token = $novoToken;
				$this->token->save();
				
				// INICIALIZACAO DOS CONTROLLERS
				$controladorCategoria = Basico_CategoriaControllerController::init();
				$controladorLog       = Basico_LogControllerController::init();
				
	            // CATEGORIA DO LOG VALIDACAO USUARIO
	            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoToken();
	
	            $novoLog = new Basico_Model_Log();
	            $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
	            $novoLog->categoria      = $categoriaLog->id;
	            $novoLog->dataHoraEvento = Zend_Date::now();
	            $novoLog->descricao      = LOG_MSG_NOVO_TOKEN;
	            $controladorLog->salvarLog($novoLog);
				
	    	} catch (Exception $e) {
	    		throw new Exception($e);
	    	}
		}else{
			throw new Exception(MSG_ERRO_TOKEN_CHECK_CONSTRAINT);
		}	
	}
	
	/**
	 * Retorna o id generico do token
	 * @return Integer
	 */
	public function retornaTokenEmail($token)
	{
		// INICIALIZACAO DOS CONTROLLERS
	    $controladorCategoria = Basico_CategoriaControllerController::init();
	    
		$categoriaTokenEmail = $controladorCategoria->retornaCategoriaAtiva(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
		$tokenObj = self::$singleton->token->fetchList("id_categoria = {$categoriaTokenEmail->id} and token = '{$token}'", null, 1, 0);
		if (isset($tokenObj[0]))
    	    return $tokenObj[0];
    	return NULL;
	}
}