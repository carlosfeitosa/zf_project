<?php

/**
 * Controlador Token
 *
 */

// includes
require_once(APPLICATION_PATH . "/modules/basico/models/Token.php");

/**
 * Basico_OPController_TokenOPController
 * @author joao
 *
 */
class Basico_OPController_TokenOPController
{
	/**
	 * 
	 * @var Basico_OPController_TokenOPController
	 */
	private static $_singleton;
    
	/**
	 * @var Basico_Model_Token
	 */
	private $_token;
	
	/**
	 * @var array
	 */
	private static $_arrayTokensUrls;
	
	/**
	 * Construtor do Controlador Token
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_token = $this->retornaNovoObjetoToken();
		
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_TokenOPController
	 * 
	 * @return void;
	 */
	private function init()
	{
		// inicializando os atributos
		self::$_arrayTokensUrls = array();
		
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_TokenOPController
	 * 
	 * @return Basico_OPController_TokenOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_TokenOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto token vazio
	 * 
	 * @return Basico_Model_Token
	 */
	public function retornaNovoObjetoToken()
	{
		// retornando um modelo vazio
		return new Basico_Model_Token();
	}
	
    /**
     * Gera um Token para uma URL, armazenando o endereço original na sessão
     * 
     * @param String $url
     * 
     * @return String
     */
	public function gerarTokenPorUrl($url)
	{
		// registrando/recuperando o namespace do token na sessao
        $session = Basico_OPController_SessionOPController::registraSessaoToken();

        // verificando se existem urls-token na sessao
		if (isset($session->arrayTokensUrls))
			// recuperando array de tokens-url encontrados na sessao
		    self::$_arrayTokensUrls = $session->arrayTokensUrls;

		// verificando se o token ja existe na sessao
	    $token = array_search($url, self::$_arrayTokensUrls);

	    // verificando o resultado da busca pelo token na sessao
	    if ($token === false) {
	    	// gerando token
	        $token = Basico_OPController_GeradorOPController::geradorTokenGerarToken(array_keys(self::$_arrayTokensUrls));
	        // colocando gerado token no array de tokens do controlador
	        self::$_arrayTokensUrls[$token] = $url;
	        // registrando array de tokens do controlador na sessao
	        $session->arrayTokensUrls = self::$_arrayTokensUrls;
	    }

	    // montando url
	    $baseUrl = Basico_OPController_UtilOPController::retornaBaseUrl();
	    
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
	public function decodeTokenUrlPorToken($token)
	{
		// registrando/recuperando o namespace do token na sessao
	    $session = Basico_OPController_SessionOPController::registraSessaoToken();

	    // verificando se existem urls-token na sessao
	    if (isset($session->arrayTokensUrls))
	    	// recuperando array de tokens-url encontrados na sessao
		    self::$_arrayTokensUrls = $session->arrayTokensUrls;

		// verificando se o token existe na sessao
        if (array_key_exists($token, self::$_arrayTokensUrls))
        	// recuperando a url
            $url = self::$_arrayTokensUrls[$token];
        else
            throw new Exception(MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO);

		// montando URL
        $baseUrl = Basico_OPController_UtilOPController::retornaBaseUrl();
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
	public function gerarTokenPorModelo($modelo, $nomeDoCampoBancoDeDados)
	{
		// gerando uniqueId
		$tokenString = Basico_OPController_GeradorOPController::geradorUniqueIdGerarId($modelo, $nomeDoCampoBancoDeDados);

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
    public function salvarToken(Basico_Model_Token $objToken, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se existe a relacao de categoria
		if (!Basico_OPController_PersistenceOPController::bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($objToken->categoria))
			throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_TOKEN_SEM_RELACAO);

		// verificando se existe o token existe na tabela de relacao
		if (!Basico_OPController_PersistenceOPController::bdChecaExistenciaValorCategoriaChaveEstrangeira($objToken->categoria, $objToken->idGenerico, Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($objToken), Basico_OPController_PersistenceOPController::bdRetornaNomeCampoIdGenericoObjeto($objToken), true))
			throw new Exception(MSG_ERRO_TOKEN_CHECK_CONSTRAINT);

		try {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilOPController = Basico_OPController_PessoasPerfisOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		// setando o id do perfil criador para o sistema
    			$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objToken->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogPorNomeCategoria(LOG_UPDATE_TOKEN, true);
				$mensagemLog    = LOG_MSG_UPDATE_TOKEN;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogPorNomeCategoria(LOG_NOVO_TOKEN, true);
				$mensagemLog    = LOG_MSG_NOVO_TOKEN;
			}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objToken, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);
			
			// atualizando o objeto
			$this->_token = $objToken;
						
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
	public function retornaObjetoTokenEmailPorToken($token)
	{
		// instanciando controlador de categoria
	    $categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
	    
	    // recuperando objeto categoria do token-email
		$idCategoriaTokenEmail = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
		// recuperando objeto token
		$objToken = $this->_token->fetchList("id_categoria = {$idCategoriaTokenEmail} and token = '{$token}'", null, 1, 0);

		// verificando se o objeto do token existe
		if (isset($objToken[0]))
			// retornando objeto
    	    return $objToken[0];

    	return null;
	}
}