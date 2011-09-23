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
		if (self::$_singleton == NULL){
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
		
		// verificando se o array de pais ja existe na sessao
		if (!is_array($sessaoRascunho->arrayRascunhoPai) || !isset($sessaoRascunho->arrayRascunhoPai)) {
			// se nao existe cria
			$sessaoRascunho->arrayRascunhosPai = array($idRascunhoPai);
			return true;
			
		}else {
			// se existe, recupera e manipula
			$arraySessaoRascunho = $session->arrayRascunhoPai;

			// verificando se o pai ja esta registrado
			if (array_search($idRascunhoPai, $arraySessaoRascunho) === false) {
				$arraySessaoRascunho[] = $idRascunhoPai;
				$sessaoRascunho->arrayRascunhosPai = $arraySessaoRascunho;
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
		$sessaoRascunho = self::registraSessaoRascunho();
		
		// se existe, recupera e manipula
		$arraySessaoRascunho = $session->arrayRascunhoPai;

		// verificando se o pai ja esta registrado
		$chaveRascunhoPai = array_search($idRascunhoPai, $arraySessaoRascunho);
		
		if ($chaveRascunhoPai !== false) {
			unset($arraySessaoRascunho[$chaveRascunhoPai]);
			$sessaoRascunho->arrayRascunhosPai = $arraySessaoRascunho;
			return true;
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
						if (key_exists($chavePostValorPost, $arrayPoolElementosOcultos)) {
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
					if (key_exists($chavePost, $arrayPoolElementosOcultos)) {
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
	 * @return void
	 */
	public static function limpaTodasChavesPoolElementosOcultos()
	{
		// recuperando a sessao do pool de posts ocultos
		$sessaoPoolPosts = self::registraSessaoPoolElementosOcultos();

		// recuperando iterator
		$sessaoPoolPostsIterator = $sessaoPoolPosts->getIterator();

		// loop para limpar todas as chaves
		foreach ($sessaoPoolPostsIterator as $chave => $valor) {
			// verificando se o valor eh um array
			if (is_array($valor)) {
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

		// limpando elementos
		self::limpaPoolElementosOcultos($chave);

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

			// verificando se existe apenas um elemento no array
			if (count($arrayPoolRequests) === 1) {
				// incluindo mais um elemento no array que soh possui 1 elemento
				$arrayPoolRequests[1] = $url;
			} else {
				// impurrando a pilha do array para incluir o novo elemento
				$arrayPoolRequests[0] = $arrayPoolRequests[1];
				$arrayPoolRequests[1] = $url;
			}

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

		// retornando a ultima (anterior) url chamada
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
}