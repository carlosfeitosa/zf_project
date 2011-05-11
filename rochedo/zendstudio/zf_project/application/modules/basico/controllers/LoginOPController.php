<?php
/**
 * Controlador dos logins.
 * 
 * @author João Henrique M.Bione (joao.henrique.bione@rochedoproject.com)
 * 
 * @uses Basico_Model_Login
 * 
 * @since 23/03/2011
 */
class Basico_OPController_LoginOPController extends Basico_Abstract_RochedoPersistentOPController 
{
	/**
	 * Nome da tabela login
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'login';

	/**
	 * Nome do campo id da tabela login
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * @var Basico_OPController_LoginOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Login
	 */
	private $_model;
	
	/**
	 * Contrutor do controlador Basico_OPController_LoginOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
		
		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_LoginOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}
	
	/**
	 * Inicializa Controlador Login.
	 * 
	 * @return Basico_OPController_LoginOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_LoginOPController();
		}
		// retornando a instancia
		return self::$_singleton;
	}

	/**
	 * Salva o objeto login no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Login $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Login', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

			// verificando se trata-se de uma nova tupla ou atualizacao de registro
			if ($objeto->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_LOGIN, true);
				$mensagemLog    = LOG_MSG_UPDATE_LOGIN;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_LOGIN, true);
				$mensagemLog    = LOG_MSG_NOVO_LOGIN;
			}
	    		
			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto login de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Login $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = true, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Login', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_LOGIN, true);
	    	$mensagemLog    = LOG_MSG_DELETE_PESSOA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna se conseguiu salvar o id do login na sessao
	 * 
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	public function registraIdLoginUsuarioSessao($login)
	{
		// inicializando variaveis
		$sessionLoginIdAttribute = AUTH_ID_LOGIN_SESSION_KEY;

		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando o resultado da recuperacao
		if ($objLogin->id) {
			// registrando/recuperando o namespace do token na sessao
	        $session = Basico_OPController_SessionOPController::registraSessaoUsuario();
	
			// verificando se o id do usuario sessao
			if (!isset($session->$sessionLoginIdAttribute))
	        	// setando o id do usuario na sessao
	        	$session->$sessionLoginIdAttribute = $objLogin->id;

	        return true;
		}

		return false;
	}

	/**
	 * Remove o id do login do usuario da sessao
	 * 
	 * @return Boolean
	 */
	public static function removeRegistroIdLoginUsuarioSessao()
	{
		// inicializando variaveis
		$sessionLoginIdAttribute = AUTH_ID_LOGIN_SESSION_KEY;

		// registrando/recuperando o namespace do token na sessao
	    $session = Basico_OPController_SessionOPController::registraSessaoUsuario();

		// verificando se o id do usuario sessao
		if (isset($session->$sessionLoginIdAttribute))
			// removendo o id do usuario logado da sessao
			return $session->__unset($sessionLoginIdAttribute);

		return null;
	}

	/**
	 * Retorna o id do login do usuario registrado na sessao
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdLoginUsuarioSessao()
	{
		// inicializando variaveis
		$sessionLoginIdAttribute = AUTH_ID_LOGIN_SESSION_KEY;

		// registrando/recuperando o namespace do token na sessao
	    $session = Basico_OPController_SessionOPController::registraSessaoUsuario();

		// verificando se o id do usuario sessao
		if (isset($session->$sessionLoginIdAttribute))
			// retornando o id do usuario logado na sessao
			return $session->$sessionLoginIdAttribute;

		return null;
	}

	/**
	 * Retorna o login do usuario registrado na sessao
	 * 
	 * @return String
	 */
	public static function retornaLoginUsuarioSessao()
	{
		// verificando se existe usuario na sessao
		if (Zend_Auth::getInstance()->hasIdentity())
			// retornando o login
			return Zend_Auth::getInstance()->getIdentity();

		return null;
	}

	/**
	 * Limpa a autenticacao do usuario
	 * 
	 * @return void
	 */
	public static function limpaLoginUsuarioSessaoAuth()
	{
		// limpando identity do zend auth
		Zend_Auth::getInstance()->clearIdentity();
	}

	/**
	 * Retorna se existe usuario logado na sessao
	 * 
	 * @return Boolean
	 */
	public static function existeUsuarioLogado()
	{
		// retornando o id do usuario logado na sessao
		return (self::retornaIdLoginUsuarioSessao());
	}

	/**
	 * Retorna o objeto login de um login passado por parametro
	 *
	 * @param String $login
	 * 
	 * @return Basico_Model_Login|null
	 */
	public function retornaObjetoLoginPorLogin($login)
	{
		// recuperando o array com o objeto login
		$arrayObjsLogin = $this->_model->fetchList("login = '{$login}'");

		// verificando o resultado da recuperacao
		if ($arrayObjsLogin)
			// retornando o objeto login
			return $arrayObjsLogin[0];

		return null;
	}

	/**
	 * Retorna se o login pode se autenticar no sistema
	 * 
	 * @param String $login
	 * 
	 * @return Array
	 */
	public function retornaArrayLoginPodeLogar($login)
	{
		// inicializando variaveis
		$tempReturn = array();
		
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o login tem condicoes de logar
		$tempReturn[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO]          = self::retornaLoginAtivo($objLogin);
		$tempReturn[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO]        = self::retornaLoginTravado($objLogin);
		$tempReturn[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO]       = self::retornaLoginResetado($objLogin);
		$tempReturn[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA] = self::retornaLoginSenhaExpirada($objLogin);

		// retornando array de resultados
		return $tempReturn;
	}

	/**
	 * Retorna uma string contendo as mensagens de problemas com o login
	 * 
	 * @param String $login
	 * 
	 * @return String
	 */
	public function retornaMensagensErroLoginNaoPodeLigarHTMLLI($login)
	{
		// inicializando variaveis
		$tempReturn = '';

		// recuperando os problemas de logon
		$arrayProblemasLogon = $this->retornaArrayLoginPodeLogar($login);

		// verificando se existe problema de login nao ativo
		if (!$arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG') . "</li>";

		// verificando se existe problema de login travado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG') . "</li>";

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		return $tempReturn;
	}

	/**
	 * Retorna se o login pode logar
	 *
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	public function retornaLoginPodeLogar($login)
	{
		// recuperando array de verificacoes sobre o login
		$arrayLoginPodeLogar = $this->retornaArrayLoginPodeLogar($login);

		// retornando se o login pode logar
		return (($arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA]));
	}

	/**
	 * Retorna se o login esta ativo
	 * 
	 * @param Basico_Model_Login $objLogin
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginAtivo(Basico_Model_Login $objLogin) 
	{
		// retornando se o login esta ativo
		return (Boolean) $objLogin->ativo;
	}

	/**
	 * Retorna se o login esta travado
	 * 
	 * @param Basico_Model_Login $objLogin
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginTravado(Basico_Model_Login $objLogin)
	{
		// carregando a data hora da ultima tentativa de login, acrescida de uma hora
		$dataHoraUltimaTentativaFalhaLogin = new Zend_Date($objLogin->dataHoraUltimaTentativaFalha);
		$dataHoraUltimaTentativaFalhaLogin->addHour(1);

		// verificando se o login esta travado
		if ($objLogin->travado) {
			// verificando se passou-se uma hora apos a ultima tentativa de logon
			if ($dataHoraUltimaTentativaFalhaLogin->getTimestamp() < Basico_OPController_UtilOPController::retornaDateTimeAtual()->getTimestamp()) {
				// instanciando controladores
				$loginOPController = Basico_OPController_LoginOPController::getInstance();

				// limpando as tentativas falhas
				$loginOPController->limpaTentativasInvalidasLogon($objLogin->login);

				// o login agora esta destravado
				return false;
			} else
				// o login continua travado
				return true;
		}
	}

	/**
	 * Retorna se o login esta restado
	 * 
	 * @param Basico_Model_Login $objLogin
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginResetado(Basico_Model_Login $objLogin)
	{
		// retornando se o login esta resetado
		return (Boolean) $objLogin->resetado;
	}

	/**
	 * Retorna se o login esta com a senha expirada
	 * 
	 * @param Basico_Model_Login $objLogin
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginSenhaExpirada(Basico_Model_Login $objLogin)
	{
		// retornando se a senha esta expirada
		return (($objLogin->dataHoraExpiracaoSenha) and (Basico_OPController_UtilOPController::retornaTimestamp($objLogin->dataHoraExpiracaoSenha) <= Basico_OPController_UtilOPController::retornaDateTimeAtual()->getTimestamp()));
	}

	/**
	 * Verifica se o login informado existe no banco de dados e incrementa as tentativas de logon invalidos
	 * 
	 * @param String $login
	 * 
	 * @return null
	 */
	public function checaTentativaInvalidaLogon($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// instanciando controladores
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin);

			// incrementa a quantidade e data/hora da tentativa falha
			$objLogin->tentativasFalhas++;
			$objLogin->dataHoraUltimaTentativaFalha = Basico_OPController_UtilOPController::retornaDateTimeAtual();

			// verificando se o limite de tentativas invalidas foi atingido
			if ($objLogin->tentativasFalhas >= QUANTIDADE_TENTATIVAS_LOGIN_MAX)
				// travando o login
				$objLogin->travado = true;

			// preparando XML rowinfo
			$rowinfoOPController->prepareXml($objLogin, true);
			$objLogin->rowinfo  = $rowinfoOPController->getXml();

			// salvando o objeto
			$this->salvarObjeto($objLogin, $versaoUpdate);
		}

		return null;
	}

	/**
	 * Verifica se o login informado existe no banco de dados e limpa as tentativas de logon invalidas
	 * 
	 * @param String $login
	 * 
	 * @return null
	 * 
	 * @todo implementar uso do rowinfo utilizando o metodo publico da classe abstrata que esta classe vai estender
	 */
	private function limpaTentativasInvalidasLogon($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// instanciando controladores
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin);

			// limpando a quantidade de tentativas falhas
			$objLogin->tentativasFalhas = 0;
			// setando o login como destravado
			$objLogin->travado = false;

			// preparando XML rowinfo
			$rowinfoOPController->prepareXml($objLogin, true);
			$objLogin->rowinfo  = $rowinfoOPController->getXml();

			// salvando o objeto
			$this->salvarObjeto($objLogin, $versaoUpdate);
		}

		return null;
	}

	/**
	 * Efetua o logon do usuario atraves do login
	 * 
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	public function efetuaLogon($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// verificando se eh preciso fazer limpeza de atributos
			if ($objLogin->tentativasFalhas > 0) {
				// limpa as tentativas falhas
				$this->limpaTentativasInvalidasLogon($login);
			}

			// rodando metodo de logon
			$this->inicializaLogon($login);
		}
		
		return null;
	}

	/**
	 * Realiza as operacoes de inicializacao do logon
	 * 
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	private function inicializaLogon($login)
	{
		// recuperando informacoes sobre o usuario
		$idPessoaLogin                      = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin($login);
		$idPessoaPerfilUsuarioValidadoLogin = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoaLogin)->id;
		$idPerfilPadraoUsuarioLogin         = Basico_OPController_PessoaOPController::getInstance()->retornaIdPerfilPadraoPorIdPessoa($idPessoaLogin);
		
		// recuperando informacoes de log
		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_SUCESSO_AUTENTICACAO_USUARIO, true);
		$mensagemLog    = LOG_MSG_SUCESSO_AUTENTICACAO_USUARIO;
		
		// efetua log
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfilUsuarioValidadoLogin, $idCategoriaLog, $mensagemLog);

		// registrando o usuario na sessao
		$this->registraIdLoginUsuarioSessao($login);

		// registrando o IP do usuario
		Basico_OPController_SessionOPController::registraIpUsuarioAutenticadoSessaoUsuario(Basico_OPController_UtilOPController::retornaUserIp());

		// registrando o perfil padrao do usuario na sessao
		Basico_OPController_PessoaOPController::registraIdPerfilPadraoUsuarioSessao($idPerfilPadraoUsuarioLogin);
	}

	/**
	 * Efetua o logoff do usuario
	 * 
	 * @return Boolean
	 */
	public function efetuaLogoff()
	{
		// destroi o login
		$this->destroiLogon();
	}

	/**
	 * Realiza as operacoes de destruicao de logon
	 * 
	 * @return Boolean
	 */
	private function destroiLogon()
	{
		// removendo o id do usuario logado na sessao
		self::removeRegistroIdLoginUsuarioSessao();

		// removendo o ip do usuario logado na sessao
		Basico_OPController_SessionOPController::removeIpUsuarioAutenticadoSessaoUsuario();

		// limpando a autenticacao existente
		Zend_Auth::getInstance()->clearIdentity();

		// limpando o cookie
		Zend_Session::forgetMe();

		// destruindo a sessao
		Basico_OPController_SessionOPController::destroiTodasAsSessoes();
	}
	
	/**
	 * Retorna um array no formato Json possuindo as mensagens relacionadas ao componente passwordStrengthChecker.
	 * 
	 * @return Json
	 */
	public function retornaJsonMensagensPasswordStrengthChecker()
	{
		// carregando array com as mensagens utilizadas
		$arrayMensagens = array('muito_fraca' => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA'),
		                        'fraca'       => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA'),
		                        'boa'         => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA'),
		                        'forte'       => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE'),
		                        'muito_forte' => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE'),
		                        'digite_senha'=> Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA'),
		                        'abaixo'      => Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO')
	                           );
	                           
	    // codificando o array e retornando-o.
	    return str_replace('"', "'", Zend_Json::encode($arrayMensagens));
	}
	
	/**
	 * Retorna o login da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return String
	 */
	public function retornaLoginPorIdPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objLogin = $this->_model->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objLogin[0]))
				// retorna o o objeto dados pessoais
	    	    return $objLogin[0]->login;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		} else {
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}	
	}

	/**
	 * Retorna o id da pessoa relacionada ao login passado por parametro
	 * 
	 * @param String $login
	 * 
	 * @return Integer|null
	 */
	public function retornaIdPessoaPorLogin($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o login existe
		if ($objLogin->id)
			// retornando o id da pessoa
			return $objLogin->pessoa;

		return null;
	}

	/**
	 * Retorna o id da pessoa pelo id do login
	 *
	 * @param Integer $idLogin
	 * 
	 * @return Integer
	 */
	public function retornaIdPessoaPorIdLogin($idLogin)
	{
		// recuperando objeto login
		$object = $this->_model->find($idLogin);

		// verificando se o objeto login foi recuperado
		if ($object->id)
			// retornando o id da pessoa
			return $object->pessoa;

		return null;
	}

	/**
	 * Retorna o id da pessoa pelo id do login, via SQL
	 *
	 * @param Integer $idLogin
	 * 
	 * @return Integer
	 */
	public static function retornaIdPessoaPorIdLoginViaSQL($idLogin)
	{
		// recuperando informacoes sobre a tabela login
		$nomeCampoIdLogin      = self::nomeCampoIdModelo;
		$arrayNomeCampoIdLogin = array('id_pessoa');
		$condicaoSQL           = "{$nomeCampoIdLogin} = {$idLogin}";

		// recuperando um array contendo o id da categoria cujo nome foi passado como parametro
		$arrayLogin = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoIdLogin, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayLogin)) and (is_array($arrayLogin)) and (count($arrayLogin) > 0)) {
			// retornando o id da categoria
			return (Int) $arrayLogin[0]['id_pessoa'];
		}

		return null;
	}

    /**
     * Retorna o login do usuario master do sistema cadastrado no banco de dados
     * 
     * @return String
     */
    public function retornaLoginUsuarioMasterDB() 
    {
    	// instanciando controladores
    	$pessoaPerfilOPController = Basico_OPController_PessoasPerfisOPController::getInstance();
    	
    	//recuperando o objeto pessoaPerfil do sistema
    	$objetoPessoaPerfilSistema = $pessoaPerfilOPController->retornaObjetoPessoaPerfilSistema();
    	  	
    	//recuperando resource do banco de dados
    	$auxDb = Basico_OPController_PersistenceOPController::bdRecuperaBDSessao();
    	
    	//recuperando o login do usuario master do sistema
    	$objsLogin = $this->_model->fetchList("id_pessoa = {$objetoPessoaPerfilSistema->pessoa}", null, 1, 0);

    	// verificando se o objeto foi recuperado com sucesso
    	if (isset($objsLogin[0]))    	
    		//retornando o login do usuario master do sistema
    		return $objsLogin[0]->login;

    	return null;
    }
}