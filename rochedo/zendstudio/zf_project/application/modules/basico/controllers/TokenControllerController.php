<?php

/**
 * Controlador Token
 *
 */

// includes
require_once('CategoriaControllerController.php');
require_once('CategoriaChaveEstrangeiraControllerController.php');
require_once('SessionControllerController.php');
require_once('GeradorControllerController.php');
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
	 * 
	 * @return Basico_TokenControllerController
	 */
	static public function init()
	{
		// checando singleton
		if (self::$singleton == NULL){
			self::$singleton = new Basico_TokenControllerController();
		}
		
		return self::$singleton;
	}
	
    /**
     * Gera um Token para uma URL, armazenando o endereço original na sessão
     * 
     * @param String $url
     * 
     * @return String
     */
	static public function gerarTokenUrl($url)
	{
		// registrando/recuperando o namespace do token na sessao
        $session = Basico_SessionControllerController::registraSessaoToken();

        // recuperando array de tokens-url encontrados na sessao
		if (isset($session->arrayTokensUrls))
		    self::$arrayTokensUrls = $session->arrayTokensUrls;
		else
            self::$arrayTokensUrls = array();

		// verificando se o token ja existe na sessao
	    $token = array_search($url, self::$arrayTokensUrls);

	    // verificando o resultado da busca pelo token na sessao
	    if ($token === false) {
	    	// gerando token
	        $token = Basico_GeradorControllerController::geradorTokenGerarToken(array_keys(self::$arrayTokensUrls));
	        // colocando gerado token no array de tokens do controlador
	        self::$arrayTokensUrls[$token] = $url;
	        // registrando array de tokens do controlador na sessao
	        $session->arrayTokensUrls = self::$arrayTokensUrls;
	    }

	    // montando url
	    $baseUrl = str_replace("/index2.php", '', Zend_Controller_Front::getInstance()->getBaseUrl());
	    
	    // retornando url codificada
        return $baseUrl . LINK_CONTROLADOR_TOKENS . $token;
	}
	
    /**
     * Transforma um Token em uma URL, utlizando o endereço original armazenado na sessão
     * 
     * @param String $token
     * 
     * @return String
     */
	public function decodeTokenUrl($token)
	{
		// registrando/recuperando o namespace do token na sessao
	    $session = Basico_SessionControllerController::registraSessaoToken();

	    // recuperando array de tokens-url encontrados na sessao
	    if (isset($session->arrayTokensUrls))
		    self::$arrayTokensUrls = $session->arrayTokensUrls;
		else
            self::$arrayTokensUrls = array();

		// verificando se o token existe na sessao
        if (array_key_exists($token, self::$arrayTokensUrls))
        	// recuperando a url
            $url = self::$arrayTokensUrls[$token];
        else
            throw new Exception(MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO);

		// montando URL
        $baseUrl = str_replace("/index2.php", "", Zend_Controller_Front::getInstance()->getBaseUrl());
        $url     = str_replace($baseUrl, '', $url);

        // retornando url decodificada
        return $url;
	}
	
    /**
     * Gera um Token para qualquer modelo passado como parametro
     * 
     * @param Object $modelo
     * @param String $nomeDoCampoBancoDeDados
     * 
     * @return String
     */
	public function gerarToken($modelo, $nomeDoCampoBancoDeDados)
	{
		// gerando uniqueId
		$tokenString = Basico_GeradorControllerController::geradorUniqueIdGerarId($modelo, $nomeDoCampoBancoDeDados);
		
		// retornando uniqueId
		return $tokenString;
	}

	/**
	 * Salva o Token no banco de dados
	 * 
	 * @param Basico_Model_Token $novoToken
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
    public function salvarToken(Basico_Model_Token $novoToken, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se existe a relacao de categoria
		if (!Basico_PersistenceControllerController::bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($novoToken->categoria))
			throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_TOKEN_SEM_RELACAO);

		// verificando se existe o token existe na tabela de relacao
		if (!Basico_PersistenceControllerController::bdChecaExistenciaValorCategoriaChaveEstrangeira($novoToken->categoria, $novoToken->idGenerico, Basico_PersistenceControllerController::bdRetornaTableNameObjeto($novoToken), Basico_PersistenceControllerController::bdRetornaNomeCampoIdGenericoObjeto($novoToken), true))
			throw new Exception(MSG_ERRO_TOKEN_CHECK_CONSTRAINT);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoToken, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoToken(), LOG_MSG_NOVO_TOKEN);
			
			// atualizando o objeto
			$this->token = $novoToken;
						
		} catch (Exception $e) {
			
			throw new Exception($e);
		}				
	}
	
	/**
	 * Retorna o id generico do token
	 * 
	 * @param String $token
	 * 
	 * @return Integer|null
	 */
	public function retornaObjetoTokenEmail($token)
	{
		// instanciando controlador de categoria
	    $controladorCategoria = Basico_CategoriaControllerController::init();
	    
	    // recuperando objeto categoria do token-email
		$idCategoriaTokenEmail = $controladorCategoria->retornaIdCategoriaEmailValidacaoPlainText();
		// recuperando objeto token
		$tokenObj = self::$singleton->token->fetchList("id_categoria = {$idCategoriaTokenEmail} and token = '{$token}'", null, 1, 0);

		// verificando se o objeto do token existe
		if (isset($tokenObj[0]))
			// retornando objeto
    	    return $tokenObj[0];

    	return null;
	}
}