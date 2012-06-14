<?php
/**
 * Controlador Sessio
 * 
 * Controlador responsavel pela Session
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_SessionOPController
{
	/**
	 * Constantes para utilização da sessão
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	const ATRIBUTO_POOL_SQL = "poolSql";

    /**
	 * @var Basico_OPController_SessionOPController
	 */
	private static $_singleton;

	/**
	 * Construtor do controlador Basico_OPController_SessionOPController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_SessionOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa o controlador Basico_TokenController
	 * 
	 * @return Basico_OPController_SessionOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_SessionOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Registra/abre uma sessao para tokens
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoToken()
	{
		// registrando o namespace "token"
	    $session = new Zend_Session_Namespace('token');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	/**
	 * Registra/abre uma sessao para banco de dados
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoBD()
	{
		// registrando o namespace "token"
	    $session = new Zend_Session_Namespace('database');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	/**
	 * Registra/abre uma sessao do usuario
	 * 
	 * @return Zend_Session
	 */
	public static function registraSessaoUsuario()
	{
		// registrando o namespace "user_session"
	    $session = new Zend_Session_Namespace('user_session');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}

	public static function registraSessaoPoolElementosOcultos()
	{
		// registrando o namespace "pool_hidden_post"
	    $session = new Zend_Session_Namespace('pool_hidden_post');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}
	
	/**
	 * Registra um namespace na sessao para os rascunhos
	 * 
	 */
	public static function registraSessaoRascunho()
	{
		// registrando o namespace "rascunho"
	    $session = new Zend_Session_Namespace('rascunho');

	    // verificando se a sessao foi inicializada
	    if (!isset($session->initialized)) {
	    	// regerando o id da sessao
            Zend_Session::regenerateId();
            // marca a sessao como inicializada
            $session->initialized = true;
	    }

	    // retorna a sessao
	    return $session;
	}
	
	/**
	 * Registra o id de um rascunho pai na sessao
	 * 
	 * @param Int $idRascunhoPai
	 */
	public function registraRascunhoPaiSessao($idRascunhoPai)
	{
		$sessaoRascunho = self::registraSessaoRascunho();
		$filaSessaoRascunhoPai = SESSION_FILA_RASCUNHO_PAI;
		
		// verificando se o array de pais ja existe na sessao
		if (!is_array($sessaoRascunho->$filaSessaoRascunhoPai) || !isset($sessaoRascunho->$filaSessaoRascunhoPai)) {
			// se nao existe cria
			$sessaoRascunho->$filaSessaoRascunhoPai = array($idRascunhoPai);
			return true;
			
		}else {
			// se existe, recupera e manipula
			$arraySessaoRascunho = $sessaoRascunho->$filaSessaoRascunhoPai;

			// verificando se o pai ja esta registrado
			if (array_search($idRascunhoPai, $arraySessaoRascunho) === false) {
				$arraySessaoRascunho[] = $idRascunhoPai;
				$sessaoRascunho->$filaSessaoRascunhoPai = $arraySessaoRascunho;
				return true;
			}
		}
		
		return false;
	}
	
	/**
	 * Remove o id de um rascunho pai na sessao
	 * 
	 * @param Int $idRascunhoPai
	 */
	public function removeRascunhoPaiSessao($idRascunhoPai)
	{
		if ($idRascunhoPai > 0) {
			
			$sessaoRascunho = self::registraSessaoRascunho();
			$filaSessaoRascunhoPai	 = SESSION_FILA_RASCUNHO_PAI;
			
			// se existe, recupera e manipula
			$arraySessaoRascunho = $sessaoRascunho->$filaSessaoRascunhoPai;
	
			if (is_array($arraySessaoRascunho)) {
				// verificando se o pai ja esta registrado
				$chaveRascunhoPai = array_search($idRascunhoPai, $arraySessaoRascunho);
				
				if ($chaveRascunhoPai !== false) {
					unset($arraySessaoRascunho[$chaveRascunhoPai]);
					$sessaoRascunho->$filaSessaoRascunhoPai = $arraySessaoRascunho;
					return true;
				}
			}
		}
			
		return false;
	}

	
	/**
	 * retorna o id do ultimo rascunho pai da fila na sessao
	 * 
	 * @return int
	 */
	public function retornaUltimoRascunhoPaiSessao()
	{
		$sessaoRascunho = self::registraSessaoRascunho();
		$filaSessaoRascunhoPai = SESSION_FILA_RASCUNHO_PAI;
		
		// se existe, recupera e manipula
		$arraySessaoRascunho = $sessaoRascunho->$filaSessaoRascunhoPai;

		if (is_array($arraySessaoRascunho)) {
			// recuperando o ultimo elemento da fila de rascunhos pai
			$ultimoRascunhoPai = end($arraySessaoRascunho);
			// retornando o ultimo rascunho pai da fila
			return $ultimoRascunhoPai;
		}
	
		return false;
	}
	/**
	 * Registra um post, no pool de elementos ocultos, associado a uma chave passada por parametro
	 * 
	 * @param String $chave
	 * @param Array $arrayPost
	 * 
	 * @return void
	 */
	public static function registraPostPoolElementosOcultos($chave, array $arrayPostElementosOcultos)
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePost = $chave;

		// recuperando o pool de posts ocultos
		$arrayPoolElementosOcultos = $sessaoPoolPosts->$sessionChavePost;

		// loop para adicionar/atualizar elementos
		foreach ($arrayPostElementosOcultos as $chavePost => $valorPost) {
			// verificando se o valor do post eh um array
			if (is_array($valorPost)) {
				// loop para adicionar/atualizar elementos
				foreach ($valorPost as $chavePostValorPost => $valorPostValorPost) {
					// verificando se o valor esta setado
					if ($valorPostValorPost) {
						// atualizando  o valor do array de elementos ocultos
						$arrayPoolElementosOcultos[$chavePostValorPost] = $valorPostValorPost;
					} else {
						// verificando se o elemento existe no array de elementos ocultos
						if ((is_array($arrayPoolElementosOcultos)) and (key_exists($chavePostValorPost, $arrayPoolElementosOcultos))) {
							// removendo o elemento
							unset($arrayPoolElementosOcultos[$chavePostValorPost]);
						}
					}
				}
			} else {
				// verificando se o valor esta setado
				if ($valorPost) {
					// atualizando  o valor do array de elementos ocultos
					$arrayPoolElementosOcultos[$chavePost] = $valorPost;
				} else {
					// verificando se o elemento existe no array de elementos ocultos
					if ((is_array($arrayPoolElementosOcultos)) and (key_exists($chavePost, $arrayPoolElementosOcultos))) {
						// removendo o elemento
						unset($arrayPoolElementosOcultos[$chavePost]);
					}
				}
			}
		}
		
		// setando de volta na sessao os elementos ocultos
		$sessaoPoolPosts->$sessionChavePost = $arrayPoolElementosOcultos;

		return;
	}

	/**
	 * Verifica se a chave de elementos ocultos existe na sessao
	 * 
	 * @param String $chave
	 * 
	 * @return Boolean
	 */
	public static function existePostPoolElementosOcultos($chave)
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePost = $chave;

		return isset($sessaoPoolPosts->$sessionChavePost);
	}

	/**
	 * Limpa uma chave no pool de elementos ocultos
	 * 
	 * @param String $chave
	 * 
	 * @return void
	 */
	public static function limpaPoolElementosOcultos($chave)
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePost = $chave;

		// recuperando o pool de posts ocultos
		$arrayPoolElementosOcultos = $sessaoPoolPosts->$sessionChavePost;

		// verificando se o elemento existe no array de pool de elementos ocultos
		if ($arrayPoolElementosOcultos) {
			// removendo elemento do array de pool de elementos ocultos
			unset($sessaoPoolPosts->$sessionChavePost);
		}

		return;
	}

	/**
	 * Limpa todas as chaves do pool de elementos ocultos
	 * 
	 * @param Array $arrayChavesExclude
	 * 
	 * @return void
	 */
	public static function limpaTodasChavesPoolElementosOcultos(array $arrayChavesExclude = array())
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando iterator
		$sessaoPoolPostsIterator = $sessaoPoolPosts->getIterator();

		// loop para limpar todas as chaves
		foreach ($sessaoPoolPostsIterator as $chave => $valor) {
			// verificando se o valor eh um array
			if ((array_search($chave, $arrayChavesExclude) === false) and (is_array($valor))) {
				// limpando chave
				unset($sessaoPoolPosts->$chave);
			}
		}

		return;
	}

	/**
	 * Retorna os elementos do pool de elementos ocultos associados a uma chave
	 * 
	 * @param String $chave
	 * 
	 * @return Array|null
	 */
	public static function recuperaElementosPoolElementosOcultos($chave)
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePost = $chave;

		// retornando o pool de posts ocultos
		return $sessaoPoolPosts->$sessionChavePost;
	}

	/**
	 * Retorna todos os elementos do pool de elementos ocultos
	 * 
	 * @return Array
	 */
	public static function recuperaTodosElementosPoolElementosOcultos()
	{
		// inicializando variaveis
		$arrayRetorno = array();

		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando iterator
		$sessaoPoolPostsIterator = $sessaoPoolPosts->getIterator();

		// loop para recuperar todas as chaves
		foreach ($sessaoPoolPostsIterator as $chave => $valor) {
			// verificando se o valor eh um array
			if (is_array($valor)) {
				// recuperando chave
				$arrayRetorno[$chave] = $sessaoPoolPosts->$chave;
			}
		}

		// retornando array contendo todos os elementos contidos no pool de elementos ocultos
		return $arrayRetorno;
	}

	/**
	 * Retorna todos os elementos do pool de elementos ocultos e depois apaga da sessao
	 * 
	 * @param String $chave
	 * 
	 * @return Array|null
	 */
	public static function descarregaPoolElementosOcultos($chave)
	{
		// recuperando elementos
		$arrayRetorno = self::recuperaElementosPoolElementosOcultos($chave);

		// verificando se a requisicao é para o controlador rascunho
		if (Zend_Controller_Front::getInstance()->getRequest()->getControllerName() !== 'rascunho') {
			// se não for pro controlador rascunho ele limpa elementos ocultos
			self::limpaPoolElementosOcultos($chave);
		}
		
		// retornando array de elementos
		return $arrayRetorno;
	}

	/**
	 * Retorna todos os elementos do pool de elementos ocultos e depois apaga da sessao
	 * 
	 * @return Array
	 */
	public static function descarregaTodoPoolElementosOcultos()
	{
		// recuperando todos os elementos
		$arrayRetorno = self::recuperaTodosElementosPoolElementosOcultos();

		// limpando os elementos
		self::limpaTodasChavesPoolElementosOcultos();
		
		// retornando array de elementos
		return $arrayRetorno;
	}

	/**
	 * Registra a chave de um post do ultimo request
	 * 
	 * @param String $chavePost
	 * 
	 * @return void
	 */
	public static function registraChavePostUltimoRequest($chavePost)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePostUltimoRequest = SESSION_CHAVE_POST_ULTIMO_REQUEST;

		// registrando a chave do post do ultimo request
		$sessaoUsuario->$sessionChavePostUltimoRequest = $chavePost;

		return;
	}

	/**
	 * Retorna a chave do post do ultimo request
	 * 
	 * @return String
	 */
	public static function retornaChavePostUltimoRequest()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChavePostUltimoRequest = SESSION_CHAVE_POST_ULTIMO_REQUEST;

		// verificando se existe a chave, dentro da sessao
		if (isset($sessaoUsuario->$sessionChavePostUltimoRequest)) {
			// retornando a chave do post do ultimo request
			return $sessaoUsuario->$sessionChavePostUltimoRequest;
		}

		return;
	}

	/**
	 * Registra o post do ultimo request
	 * 
	 * @param array $postUltimoRequest
	 * 
	 * @return void
	 */
	public static function registraPostUltimoRequest(array $postUltimoRequest)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPostUltimoRequest = SESSION_POST_ULTIMO_REQUEST;

		// registrando a chave do post do ultimo request
		$sessaoUsuario->$sessionPostUltimoRequest = $postUltimoRequest;

		return;
	}

	/**
	 * Retorna o post do ultimo request
	 * 
	 * @return array
	 */
	public static function retornaPostUltimoRequest()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionChaveUltimoRequest = SESSION_POST_ULTIMO_REQUEST;

		// verificando se existe a chave, dentro da sessao
		if (isset($sessaoUsuario->$sessionChaveUltimoRequest)) {
			// retornando a chave do post do ultimo request
			return $sessaoUsuario->$sessionChaveUltimoRequest;
		}

		return array();
	}

	/**
	 * Registra um sql no pool de sqls
	 * 
	 * @param String $sql
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	public static function registraSqlPoolSql($sql)
	{
		// adicionado ponto-e-vírgula (';') ao script
		$sql.= ';';

		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que será utilizado para guardar a informação
		$chavePoolSql = self::ATRIBUTO_POOL_SQL;

		// verificando se não existe a chave, dentro da sessão
		if (!isset($sessaoUsuario->$chavePoolSql)) {
			// adicionando elemento na sessão
			$sessaoUsuario->$chavePoolSql = array($sql);
		} else {
			// recuperando array
			$arrayPoolSql = $sessaoUsuario->$chavePoolSql;

			// adicionando sql ao elemento da sessão
			$arrayPoolSql[] = $sql;

			// colocando o array na sessão
			$sessaoUsuario->$chavePoolSql = $arrayPoolSql;
		}

		return;
	}

	/**
	 * Limpa o pool de sqls
	 * 
	 * @return void
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/05/2012
	 */
	public static function limpaSqlPool()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que será utilizado para guardar a informação
		$chavePoolSql = self::ATRIBUTO_POOL_SQL;

		// verificando se existe a chave, dentro da sessão
		if (isset($sessaoUsuario->$chavePoolSql)) {
			// limpando elemento da sessão
			unset($sessaoUsuario->$chavePoolSql);
		}
	}

	/**
	 * Recupera um array com os sqls do pool de sqls
	 * 
	 * @param Boolean $limpaPool
	 * 
	 * @return Array
	 */
	public static function recuperaPoolSql($limpaPool = false)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que será utilizado para guardar a informação
		$chavePoolSql = self::ATRIBUTO_POOL_SQL;

		// verificando se existe a chave, dentro da sessão
		if (isset($sessaoUsuario->$chavePoolSql)) {
			// recupernado array
			$arrayResultado = $sessaoUsuario->$chavePoolSql;

			// verificando se é necessário limpar o pool
			if ($limpaPool) {
				// limpando o pool
				self::limpaSqlPool();
			}

			// retornando array de sqls
			return $arrayResultado;
		}

		// retornando array vazio
		return array();
	}

	/**
	 * Registra uma url no pool de 2 elementos de requests
	 * 
	 * @param String $url
	 * 
	 * @return void
	 */
	public static function registraUrlPoolRequests($url)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolRequestsArray = SESSION_POOL_REQUESTS_ARRAY;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionPoolRequestsArray)) {
			// registrando array contendo a url passado por parametro
			$sessaoUsuario->$sessionPoolRequestsArray = array($url);
		} else {
			// recuperando array pool requests
			$arrayPoolRequests = $sessaoUsuario->$sessionPoolRequestsArray;
			
			// verificando se atingiu o limite do pool
			if (count($arrayPoolRequests) >= SESSION_POOL_REQUESTS_ARRAY_LIMIT) {
				array_pop($arrayPoolRequests);
			}
			
			// adicionando url no inicio do array
			array_unshift($arrayPoolRequests, $url);
			
			// salvando array na sessao
			$sessaoUsuario->$sessionPoolRequestsArray = $arrayPoolRequests;
		}

		return;
	}
	
	/**
	 * Retorna a ultima (anterior a atual) url utilizada no request do usuario, do pool de requests
	 * 
	 * @return String|null
	 */
	public static function retornaUltimaUrlPoolRequests()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolRequestsArray = SESSION_POOL_REQUESTS_ARRAY;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionPoolRequestsArray)) {
			// retornando "ainda nao registrado"
			return "ainda não registrado";
		}

		// recupeerando o array do pool de requests
		$arrayPoolRequests = $sessaoUsuario->$sessionPoolRequestsArray;

		if (count($arrayPoolRequests) > 1)
			// retornando a ultima (anterior) url chamada
			return $arrayPoolRequests[1];
		else
			// retornando a ultima (anterior) url chamada
			return $arrayPoolRequests[0];
	}	
	
	/**
	 * Retorna a url atual utilizada no request do usuario, do pool de requests
	 * 
	 * @return String|null
	 */
	public static function retornaUrlAtualPoolRequests()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolRequestsArray = SESSION_POOL_REQUESTS_ARRAY;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionPoolRequestsArray)) {
			// retornando "ainda nao registrado"
			return "ainda não registrado";
		}

		// recupeerando o array do pool de requests
		$arrayPoolRequests = $sessaoUsuario->$sessionPoolRequestsArray;

		// retornando a ultima (anterior) url chamada
		return $arrayPoolRequests[0];
	}
	
	/**
	 * Registra um array de parametros da url em um pool de 2 elementos
	 * 
	 * @param String $url
	 * 
	 * @return void
	 */
	public static function registraArrayParametrosUrlPoolRequests(Zend_Controller_Request_Abstract $request)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolParametrosUrlArray = SESSION_POOL_PARAMETROS_URL_ARRAY;

		// verificando se o controlador e diferente do controlador de rascunho
		if ($request->getControllerName() != 'rascunho') {
			
			// montando array de parametros da url
			$arrayParametrosUrl = array('modulo'      => $request->getModuleName(),
										'controlador' => $request->getControllerName(),
										'acao'        => $request->getActionName(),
										'parametros'  => $request->getParams()
										);
										
			// verificando se o array ja existe na sessao
			if (!isset($sessaoUsuario->$sessionPoolParametrosUrlArray)) {
				// registrando array contendo a url passado por parametro
				$sessaoUsuario->$sessionPoolParametrosUrlArray = array($arrayParametrosUrl);
			} else {
				// recuperando array pool requests
				$arrayPoolRequests = $sessaoUsuario->$sessionPoolParametrosUrlArray;
	
				// verificando se existe apenas um elemento no array
				if (count($arrayPoolRequests) === 1) {
					// incluindo mais um elemento no array que soh possui 1 elemento
					$arrayPoolRequests[1] = $arrayParametrosUrl;
				} else {
					// impurrando a pilha do array para incluir o novo elemento
					$arrayPoolRequests[0] = $arrayPoolRequests[1];
					$arrayPoolRequests[1] = $arrayParametrosUrl;
				}
	
				// salvando array na sessao
				$sessaoUsuario->$sessionPoolParametrosUrlArray = $arrayPoolRequests;
			}
		}
		
		return;
	}
	
	/**
	 * Retorna o ultimo (anterior ao atual) array de parametros da url utilizada no request do usuario, do pool de requests
	 * 
	 * @return String|null
	 */
	public static function retornaUltimoArrayParametrosUrlPoolRequests()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolParametrosUrlArray = SESSION_POOL_PARAMETROS_URL_ARRAY;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionPoolParametrosUrlArray)) {
			// retornando "ainda nao registrado"
			return "ainda não registrado";
		}

		// recupeerando o array do pool de requests
		$arrayPoolRequests = $sessaoUsuario->$sessionPoolParametrosUrlArray;

		// retornando array com dados da ultima (anterior) url chamada
		return $arrayPoolRequests[0];
	}
	
	/**
	 * Retorna o array de parametros da url atual utilizada no request do usuario, do pool de requests
	 * 
	 * @return String|null
	 */
	public static function retornaArrayParametrosUrlAtualPoolRequests()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionPoolParametrosUrlArray = SESSION_POOL_PARAMETROS_URL_ARRAY;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionPoolParametrosUrlArray)) {
			// retornando "ainda nao registrado"
			return "ainda não registrado";
		}

		// recupeerando o array do pool de requests
		$arrayPoolRequests = $sessaoUsuario->$sessionPoolParametrosUrlArray;
		
		// verificando se tem mais de um elemento no pool
		if (count($arrayPoolRequests) > 1)
			// retornando a ultima (anterior) url chamada
			return $arrayPoolRequests[1];
		else
			// retornando url atual
			return $arrayPoolRequests[0];
	}

	/**
	 * Registra o ip do usuario autenticado na sessao do usuario
	 * 
	 * @param String $ipUsuarioAutenticado
	 * 
	 * @return void
	 */
	public static function registraIpUsuarioAutenticadoSessaoUsuario($ipUsuarioAutenticado)
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionAuthenticatedUserIp = SESSION_AUTHENTICATED_USER_IP;

		// verificando se o valor ja se encontra na sessao
		if (!isset($sessaoUsuario->$sessionAuthenticatedUserIp)) {
			// registrando o ip do usuario autenticado na sessao
			$sessaoUsuario->$sessionAuthenticatedUserIp = $ipUsuarioAutenticado;
		}

		return;
	}

	public static function retornaIpUsuarioAutenticadoSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionAuthenticatedUserIp = SESSION_AUTHENTICATED_USER_IP;

		// verificando se o valor ja se encontra na sessao
		if (isset($sessaoUsuario->$sessionAuthenticatedUserIp)) {
			// retornando o ip do usuario autenticado na sessao
			return $sessaoUsuario->$sessionAuthenticatedUserIp;
		}

		return;
	}

	/**
	 * Remove o ip do usuario logado da sessao
	 * 
	 * @return void
	 */
	public static function removeIpUsuarioAutenticadoSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionAuthenticatedUserIp = SESSION_AUTHENTICATED_USER_IP;

		// verificando se o valor ja se encontra na sessao
		if (isset($sessaoUsuario->$sessionAuthenticatedUserIp)) {
			// removendo o ip do usuario autenticado na sessao
			unset($sessaoUsuario->$sessionAuthenticatedUserIp);
		}

		return;
	}

	/**
	 * Verifica se o ip do usuario eh o mesmo ip que foi regisrado no momento do login
	 * 
	 * @param String $ipUsuarioAutenticado
	 * 
	 * @return Boolean
	 */
	public static function verificaIpSessaoUsuario($ipUsuario)
	{
		// retornando o resultado da comparacao do ip passado por parametro com o ip registrado na sessao
		return ($ipUsuario === self::retornaIpUsuarioAutenticadoSessaoUsuario()); 
	}

	/**
	 * Registra o inicio do processamento PHP na sessao do usuario
	 * 
	 * @return void
	 */
	public static function registraInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// verificando se o valor ja se encontra na sessao
		if (!isset($sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP)) {
			// registrando a data-hora atual do inicio do processamento php
			$sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP = Basico_OPController_UtilOPController::retornaMicrosegundosDateTimeAtual();
		}

		return;
	}

	/**
	 * Retorna a datahora, em microsegundos, do inicio do processamento do PHP
	 * 
	 * @return Integer
	 */
	public static function retornaInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// retornando a datahora, em microsegundos, registrado na sessao, do inicio do processamento do PHP
		return $sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP;
	}

	/**
	 * Limpa o registro, na sessao, do inicio do processamento do PHP
	 * 
	 * @return void
	 */
	public static function limpaRegistroInicioProcessamentoMicrosegundosPHPSessaoUsuario()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionInicioProcessesamentoMicrosegundosPHP = SESSION_INICIO_PROCESSESSAMENTO_MICROSEGUNDOS_PHP;

		// limpando o valor da sessao
		unset($sessaoUsuario->$sessionInicioProcessesamentoMicrosegundosPHP);

		return;
	}

	/**
	 * Destroi a sessao
	 * 
	 * @return void
	 */
	public static function destroiTodasAsSessoes()
	{
		// destruindo a sessao
		Zend_Session::destroy();

		return;
	}
	
	/**
	 * Registra um array com o id e a url da ultima visao chamada
	 * 
	 * @return void
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/06/2012
	 */
	public static function registraArrayUltimaVisao()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionArrayUltimaVisao = SESSION_ARRAY_ULTIMA_VISAO;
		
		// recuperando array de parametros da ultima url
   	 	$arrayParametrosUltimoRequest = self::retornaArrayParametrosUrlAtualPoolRequests();
    	 	
   	 	// recuperando id da acao_aplicacao responsavel por exibir o formulario
   	 	$idAcaoAplicacaoOrigem = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaObjetoAcaoAplicacaoPorNomeModuloNomeControladorNomeAcao($arrayParametrosUltimoRequest['modulo'], $arrayParametrosUltimoRequest['controlador'], $arrayParametrosUltimoRequest['acao'])->id;

   	 	// recuperando a assoc visao
   	 	$objAcaoAplicacaoAssocVisao = Basico_OPController_AcaoAplicacaoAssocVisaoOPController::getInstance()->retornaObjetoAcaoAplicacaoAssocVisaoPorIdAcaoAplicacao($idAcaoAplicacaoOrigem);

   	 	// verificando se existe uma visao vinculada a acao
   	 	if ($objAcaoAplicacaoAssocVisao) {

   	 		// verificando se a visao é diferente da que ja foi guardada
   	 		if (!isset($sessaoUsuario->$sessionArrayUltimaVisao['id']) || ($objAcaoAplicacaoAssocVisao->id != $sessaoUsuario->$sessionArrayUltimaVisao['id'])) {
		   	 	// montando array para guardar na sessao
		   	 	$arrayUltimaVisao = array('id'  => $objAcaoAplicacaoAssocVisao->id,
		   	 							  'url' => "{$arrayParametrosUltimoRequest['modulo']}/{$arrayParametrosUltimoRequest['controlador']}/{$arrayParametrosUltimoRequest['acao']}");
		   	 	
				// registrando a chave do post do ultimo request
				$sessaoUsuario->$sessionArrayUltimaVisao = $arrayUltimaVisao;
   	 		}
   	 	}
		return;
	}
	
	/**
	 * Retorna um array com o id e a url da ultima visao acessada
	 * 
	 * @return Array|null
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 11/06/2012
	 */
	public static function retornaArrayUltimaVisao()
	{
		// recuperando a sessao do usuario
		$sessaoUsuario = self::registraSessaoUsuario();

		// recuperando o nome do atributo que sera utilizado para guardar a informacao
		$sessionArrayUltimaVisao = SESSION_ARRAY_ULTIMA_VISAO;

		// verificando se o array ja existe na sessao
		if (!isset($sessaoUsuario->$sessionArrayUltimaVisao)) {
			// retornando "ainda nao registrado"
			return "ainda não registrado";
		}

		// retornando a ultima (anterior) url chamada
		return $sessaoUsuario->$sessionArrayUltimaVisao;
	}
}