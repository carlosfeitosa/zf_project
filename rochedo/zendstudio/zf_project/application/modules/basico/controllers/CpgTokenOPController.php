<?php

/**
 * Controlador Token
 *
 */

// includes
require_once APPLICATION_PATH . "/modules/basico/models/CpgToken.php";

/**
 * Basico_OPController_TokenOPController
 * @author joao
 *
 */
class Basico_OPController_CpgTokenOPController
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
		$this->_token = $this->retornaNovoObjetoCpgToken();
		
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
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CpgTokenOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto token vazio
	 * 
	 * @return Basico_Model_Token
	 */
	public function retornaNovoObjetoCpgToken()
	{
		// retornando um modelo vazio
		return new Basico_Model_CpgToken();
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
	        // colocando token gerado no array de tokens do controlador
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
	    if (isset($session->arrayTokensUrls)) {
	    	// recuperando array de tokens-url encontrados na sessao
		    self::$_arrayTokensUrls = $session->arrayTokensUrls;
	    }

		// verificando se o token existe na sessao
        if (array_key_exists($token, self::$_arrayTokensUrls)) {
        	// recuperando a url
            $url = self::$_arrayTokensUrls[$token];
        } else if (APPLICATION_INVALID_REQUEST_TOKEN_REDIRECT_TO_INDEX) {
        	// setando a url para vazio (index da aplicacao)
        	$url = "";
        } else {
            throw new Exception(MSG_ERRO_TOKEN_SESSAO_NAO_ENCONTRADO);
        }

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
    public function salvarToken(Basico_Model_CpgToken $objToken, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se existe a relacao de categoria
		if (!Basico_OPController_PersistenceOPController::bdChecaExistenciaRelacaoCategoriaChaveEstrangeira($objToken->idCategoria))
			throw new Exception(MSG_ERRO_CATEGORIA_CHAVE_ESTRANGEIRA_TOKEN_SEM_RELACAO);

		// verificando se existe o token existe na tabela de relacao
		if (!Basico_OPController_PersistenceOPController::bdChecaExistenciaValorCategoriaChaveEstrangeira($objToken->idCategoria, $objToken->idGenericoProprietario, Basico_OPController_PersistenceOPController::bdRetornaTableNameObjeto($objToken), Basico_OPController_PersistenceOPController::bdRetornaNomeCampoIdGenericoObjeto($objToken), true))
			throw new Exception(MSG_ERRO_TOKEN_CHECK_CONSTRAINT);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		// setando o id do perfil criador para o sistema
    			$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objToken->id != null) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_TOKEN, true);
				$mensagemLog    = LOG_MSG_UPDATE_TOKEN;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_TOKEN, true);
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
		$idCategoriaTokenEmail = $categoriaOPController->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
		// recuperando objeto token
		$objToken = Basico_OPController_PersistenceOPController::bdObjectFetchList($this->_token, "id_categoria = {$idCategoriaTokenEmail} and token = '{$token}'", null, 1, 0);

		// verificando se o objeto do token existe
		if (isset($objToken[0]))
			// retornando objeto
    	    return $objToken[0];

    	return null;
	}
	
	/**
	 * Retorna o token pelo o id passado
	 * 
	 * @param Int $id
	 * 
	 * @return String|null
	 */
	public function retornaTokenEmailPorId($id)
	{
		// recuperando objeto token
		$objToken = Basico_OPController_PersistenceOPController::bdObjectFetchList($this->_token, "id = '{$id}'", null, 1, 0);

		// verificando se o objeto do token existe
		if (isset($objToken[0]))
			// retornando objeto
    	    return $objToken[0]->token;

    	return null;
	}
	
	public function retornaIdNovoObjetoToken($idGenerico, $idCategoriaToken)
	{
		// criando o novo objeto token
		$novoToken = $this->retornaNovoObjetoCpgToken();
		// gerando e setando o token
        $novoToken->token = $this->gerarTokenPorModelo($novoToken, 'token');
        // setando o id generico
        $novoToken->idGenericoProprietario = $idGenerico;
        // setando a categoria do token
        $novoToken->idCategoria = $idCategoriaToken;
		// setando data-hora da expiracao
		$dataHoraExpiracao = Zend_Date::now(DEFAULT_SYSTEM_DATETIME_LOCALE);
		$dataHoraExpiracao->addHour(36);
		$novoToken->datahoraExpiracao = $dataHoraExpiracao->toString(DEFAULT_DATABASE_DATETIME_FORMAT);
        // salvando o novo objeto token
        $this->salvarToken($novoToken);
        
        // retornando o id
        return $novoToken->id;
	}
}