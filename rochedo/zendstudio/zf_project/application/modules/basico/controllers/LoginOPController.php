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
		$arrayObjsLogin = $this->retornaObjetosPorParametros($this->_model, "login = '{$login}'");

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
		$tempReturn[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_EXPIRADO]       = self::retornaLoginExpirado($objLogin);

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
	public function retornaMensagensErroLoginNaoPodeLogarHTMLLI($login)
	{
		// inicializando variaveis
		$tempReturn = '';

		// recuperando os problemas de logon
		$arrayProblemasLogon = $this->retornaArrayLoginPodeLogar($login);

		// verificando se existe problema de login nao ativo
		if (!$arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login travado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de senha expirada
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login expirada
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_EXPIRADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_EXPIRADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

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
		return (($arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA]) and (!$arrayLoginPodeLogar[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_EXPIRADO]));
	}

	/**
	 * Retorna se o login pode logar, via SQL
	 * 
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginPodeLogarViaSQL($login)
	{
		// recuperando informacoes sobre a tabela login
		$arrayNomeCampoIdLogin = array('id');
		$condicaoSQL           = "(" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "    (ativo = @false) OR" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "    (travado = @true) OR" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "    (resetado = @true) OR" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "    ((datahora_expiracao_senha IS NOT NULL) AND (datahora_expiracao_senha < @now)) OR" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "    ((pode_expirar = @true) AND (datahora_proxima_expiracao < @now))" . QUEBRA_DE_LINHA;
		$condicaoSQL		  .= ")" . QUEBRA_DE_LINHA;
		$condicaoSQL          .= "AND login = '{$login}'";

		// fazendo substituicoes de tags
		Basico_OPController_DBUtilOPController::substituiTagsSQLScriptDB($condicaoSQL);

		// recuperando um array contendo o id da categoria cujo nome foi passado como parametro
		$arrayLogin = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoIdLogin, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayLogin)) and (is_array($arrayLogin)) and (count($arrayLogin) > 0)) {
			// retornando false
			return false;
		}

		return true;
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
		$dataHoraUltimaTentativaFalhaLogin = Basico_OPController_UtilOPController::retornaZend_Date($objLogin->dataHoraUltimaTentativaFalha);
		$dataHoraUltimaTentativaFalhaLogin->addHour(1);

		// verificando se o login esta travado
		if ($objLogin->travado) {
			// verificando se passou-se uma hora apos a ultima tentativa de logon
			if ($dataHoraUltimaTentativaFalhaLogin->getTimestamp() < Basico_OPController_UtilOPController::retornaTimestamp()) {
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
		return (($objLogin->dataHoraExpiracaoSenha) and (Basico_OPController_UtilOPController::retornaTimestamp($objLogin->dataHoraExpiracaoSenha) <= Basico_OPController_UtilOPController::retornaTimestamp()));
	}

	/**
	 * Retrona se o login esta expirado
	 * 
	 * @param Basico_Model_Login $objLogin
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginExpirado(Basico_Model_Login $objLogin)
	{
		// recuperando se o login pode expirar e esta expirado
		$loginExpirado = (($objLogin->podeExpirar) and ($objLogin->dataHoraProximaExpiracao) and (Basico_OPController_UtilOPController::retornaTimestamp($objLogin->dataHoraProximaExpiracao) <= Basico_OPController_UtilOPController::retornaTimestamp()));

		// verificando se o login esta expirado e se a data-hora da ultima expiracao eh igual a data-hora da proxima expiracao
		if (($loginExpirado) and ($objLogin->dataHoraProximaExpiracao <> $objLogin->dataHoraUltimaExpiracao)) {
			// recuperando a versao do objeto
			$versaoObjeto = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin);
			
			// setando a data-hora da ultima expiracao
			$objLogin->dataHoraUltimaExpiracao = $objLogin->dataHoraProximaExpiracao;

			// salvando o objeto
			Basico_OPController_LoginOPController::getInstance()->salvarObjeto($objLogin, $versaoObjeto);
		}

		// retornando se o login esta expirado
		return $loginExpirado;
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
			
			// verificando a quantidade de tentativas falhas para envio de mensagem de alerta
			if($objLogin->tentativasFalhas >= QUANTIDADE_TENTATIVAS_FALHAS_MINIMA_ENVIO_MENSAGEM_ALERTA){
				// carregando mensagem de problema com login
				$mesagemProblemaLogin = "{$objLogin->tentativasFalhas} ". Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('MENSAGEM_ALERTA_PROBLEMAS_LOGIN_SENHA_INCORRETA');
				// enviando mensagem de alerta de problemas com login
				Basico_OPController_LoginOPController::getInstance()->enviaMensagemAlertaProblemasLogin($login, $mesagemProblemaLogin); 
			}

			// verificando se o limite de tentativas invalidas foi atingido (para travar)
			if ($objLogin->tentativasFalhas >= QUANTIDADE_TENTATIVAS_LOGIN_MAX) {
				// travando o login
				$objLogin->travado = true;
			}

			// verificando se o limite de tentativas invalidas foi atingido (para banir o ip)
			if ($objLogin->tentativasFalhas) {
				// recuperando o IP do usuario
				$userIP = Basico_OPController_UtilOPController::retornaUserIp();

				// recuperando quantidade de tentativas falhas do mesmo IP
				$quantidadeTentativasFalhasPorIP = Basico_OPController_LogOPController::retornaQuantidadeTentativasLoginPorIpViaSQL($login, $userIP , $objLogin->dataHoraUltimoLogon);

				// verificando se a quantidade maxima de tentativas por IP foi atingida
				if ($quantidadeTentativasFalhasPorIP >= QUANTIDADE_TENTATIVAS_LOGIN_IP_BAN_MAX) {
					// banindo o IP por 1 dia
					Basico_OPController_ControleAcessoOPController::adicionaIPHostsBanidosSistema($userIP, MSG_ERRO_TENTATIVAS_FALHAS_LOGIN_IP_BAN, Basico_OPController_UtilOPController::retornaDateTimeAtual()->toString(), Basico_OPController_UtilOPController::retornaDateTimeAtual()->addDate(1)->toString());
				}
			}

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
	 * @return void
	 */
	private function limpaTentativasInvalidasLogon($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin);

			// limpando a quantidade de tentativas falhas
			$objLogin->tentativasFalhas = 0;
			// setando o login como destravado
			$objLogin->travado = false;

			// salvando o objeto
			$this->salvarObjeto($objLogin, $versaoUpdate);
		}

		return null;
	}

	/**
	 * Seta a data-hora do ultimo logon
	 * 
	 * @param String $login
	 * 
	 * @return void
	 */
	private function setaDataHoraLogon($login)
	{
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin);

			// setando a data-hora do ultimo login
			$objLogin->dataHoraUltimoLogon = Basico_OPController_UtilOPController::retornaDateTimeAtual();

			// salvando o objeto
			$this->salvarObjeto($objLogin, $versaoUpdate);
		}
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

			// setando data-hora do login
			$this->setaDataHoraLogon($login);

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
			$objLogin = $this->retornaObjetosPorParametros($this->_model, "id_pessoa = {$idPessoa}", null, 1, 0);
			
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
		if ((is_object($objLogin)) and ($objLogin->id))
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
		$object = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idLogin);

		// verificando se o objeto login foi recuperado
		if ($object->id)
			// retornando o id da pessoa
			return $object->pessoa;

		return null;
	}

	/**
	 * Retorna o id do login atraves de um id pessoa
	 * 
	 * @param Integer $idPessoa
	 * 
	 * @return Integer|null
	 */
	public function retornaIdLoginPorIdPessoa($idPessoa)
	{
		// recuperando o objeto login
		$object = $this->retornaObjetosPorParametros($this->_model, "id_pessoa = {$idPessoa}", null, 1, 0);

		// verificando o resultado da recuperacao do objeto
		if (isset($object[0])) {
			// retornando o id do login
			return $object[0]->id;
		}

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
     * @deprecated
     * 
     * @return String
     */
    public function retornaLoginUsuarioMasterDB() 
    {   	
    	//recuperando o objeto pessoaPerfil do sistema
    	$objetoPessoaPerfilSistema = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaObjetoPessoaPerfilSistema();

    	//recuperando o login do usuario master do sistema
    	$objsLogin = $this->retornaObjetosPorParametros($this->_model, "id_pessoa = {$objetoPessoaPerfilSistema->pessoa}", null, 1, 0);

    	// verificando se o objeto foi recuperado com sucesso
    	if (isset($objsLogin[0]))    	
    		//retornando o login do usuario master do sistema
    		return $objsLogin[0]->login;

    	return null;
    }

    /**
     * Retorna o login do usuario master do sistema cadastrado no banco de dados, via SQL
     * 
     * @return String
     */
    public function retornaLoginUsuarioMasterDBViaSQL()
    {
    	// recuperando o id do usuario master
    	$idPessoaUsuarioMaster = Basico_OPController_PessoaOPController::getInstance()->retornaIdPessoaSistemaViaSQL();

		// recuperando informacoes sobre a tabela login
		$arrayNomeCampoLogin = array('login');
		$condicaoSQL           = "id_pessoa = {$idPessoaUsuarioMaster}";

    	// recuperando login do usuario master
		$arrayLogin = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoLogin, $condicaoSQL);
		
		// verificando se a consulta obteve resultados
		if ((isset($arrayLogin)) and (is_array($arrayLogin)) and (count($arrayLogin) > 0)) {
			// retornando o id da categoria
			return (String) $arrayLogin[0]['login'];
		}

		return null;
    }

	/**
	 * Retorna a versao do objeto login, a partir do id de uma pessoa
	 * 
	 * @param Integer $idPessoa
	 * @param Boolean $forceVersioning
	 * 
	 * @return Integer
	 */
	public function retornaVersaoObjetoLoginPorIdPessoa($idPessoa, $forceVersioning = false)
	{
		// recuperando objeto pessoa
		$arrayObjects = $this->retornaObjetosPorParametros($this->_model, "id_pessoa = {$idPessoa}", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (count($arrayObjects) > 0) {
			// retornando a versao do objeto login
			return Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($arrayObjects[0], $forceVersioning);
		}

		return null;
	}

	/**
	 * Verifica a senha de um usuario
	 * 
	 * @param Integer $idLogin
	 * @param String $senhaEncriptada
	 * 
	 * @return Boolean
	 */
	public function verificaSenhaUsuario($idLogin, $senhaEncriptada)
	{
		// recuperando o objeto login
		$objLogin = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idLogin);

		// verificando se o objeto foi recuperado
		if ($objLogin->id) {
			// retornando o resultado da comparacao entre as senhas
			return ($objLogin->senha === $senhaEncriptada);
		}

		return false;
	}

	/**
	 * Troca a senha do usuario
	 * 
	 * @param Integer $idLogin
	 * @param String $novaSenhaNaoEncriptada
	 * @param Integer $versaoObjetoLoginUsuario
	 * @param Integer $idPessoaPerfilUsuario
	 * 
	 * @return Boolean
	 */
	public function alterarSenhaUsuario($idLogin, $novaSenhaNaoEncriptada, $versaoObjetoLoginUsuario, $idPessoaPerfilUsuario)
	{
		// recuperando o objeto login
		$objLogin = Basico_OPController_PersistenceOPController::bdObjectFind($this->_model, $idLogin);

		// verificando se o objeto foi recuperado
		if (($objLogin->id) and ($versaoObjetoLoginUsuario) and ($idPessoaPerfilUsuario)) {
			// trocando a senha do usuario
			$objLogin->senha = Basico_OPController_UtilOPController::retornaStringEncriptada($novaSenhaNaoEncriptada);

			// retornando o resultado do metodo de salvar o login
			$this->salvarObjeto($objLogin, $versaoObjetoLoginUsuario, $idPessoaPerfilUsuario);

			// retornando sucesso
			return true;
		}

		// retornando falso
		return false;
	}
	
	/**
	 * Retorna o objLogin pelo id da pessoa passado como parametro
	 * 
	 * @param Int $idPessoa
	 */
	public function retornaObjetoLoginPorIdPessoa($idPessoa)
	{
		// verificando o id da pessoa
		if (is_int($idPessoa)) {
			
			//recuperando o objLogin
			$login = $this->_model->fetchList("id_pessoa = {$idPessoa}");
			
			// verificando se retornou um login
			if (count($login) > 0) {
				// retornando o objeto login
				return $login[0];
			} else {
				// retornando falso
				return false;
			}
		}else{
			// lançando erro de nao inteiro
			throw new Exception(MSG_ERRO_TIPO_ERRADO_TIPO_INTEIRO);
		}
	}

	
	/**
     * Retorna um array com 6 sugestoes de login utilizando os parametros como base para montar as sugestoes
     * 
     * @param String $nome
     * @param String $login
     * @param String $dataNascimento
     */
    public static function retornaArraySugestoesLogin($login, $idPessoa, $nome = NULL, $dataNascimento = NULL)
    {
    	// verificando se o nome foi passado
    	if ($nome != NULL && trim($nome != "")) {
    		
	    	// transformando cada nome em um elemento de uma array
	    	$arrayNome = explode(' ', strtolower($nome));
	    	
	    	// retirando elementos com 3 ou menos caracteres
	    	foreach ($arrayNome as $chave => $nome) {
	    	    if (strlen($nome) <= 3)
	    	    	unset($arrayNome[$chave]);
	    	}
    	}
    	
    	// verificando se a dataNascimento foi preenchida
    	if (trim($dataNascimento) != "null") {
	    	// recuperando o ano da data de nascimento passada
	    	$dataNascimento = new Zend_Date($dataNascimento, 'EEE MMM dd YYYY HH:mm:ss');
	    	$ano  = $dataNascimento->toString("YYYY");
    	}else{
    		// se a data nascimento nao foi preenchida utiliza a data atual
    		$dataAtual = new Zend_Date();
    		$ano       = $dataAtual->toString("YYYY");
    	}
    	
    	
    	// inicializando variaveis
    	$objEmailUsuario     = Basico_OPController_EmailOPController::getInstance()->retornaObjetoEmailPrimarioPessoa($idPessoa);
    	$arraySugestoes      = array();
    	$arraySugestoesLogin = array();
    	$arraySugestoesNome  = array();
    	$arraySugestoesEmail = array();
			
    	// loop para montar as sugestoes utilizando o login
    	$i = 1;
    	
    	while (count($arraySugestoesLogin) < NUMERO_SUGESTOES_LOGIN_UTILIZANDO_LOGIN) {
    			
    		$loginAno = $login . $ano;
    		
    		if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $loginAno) && !array_search($loginAno, $arraySugestoesLogin))
    			$arraySugestoesLogin[] = $loginAno;
    				
    		$loginContador = $login . $i;
    				
    		if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $loginContador) && !array_search($loginContador, $arraySugestoesLogin))
    			$arraySugestoesLogin[] = $loginContador;
    				
    		$i++;
    	}
    		
    	foreach ($arraySugestoesLogin as $sugestaoLogin) {
    			
    		if (!array_search($sugestaoLogin, $arraySugestoes))
    			$arraySugestoes[] = $sugestaoLogin;
    			
    	}
    		
    	// verificando se o nome foi passado
    	if (count($arrayNome) > 0) {
	    	// loop para montar as sugestoes utilizando o nome
	    	$i = 1;
	    	while (count($arraySugestoesNome) < NUMERO_SUGESTOES_LOGIN_UTILIZANDO_NOME) {
	    			
	    		$nome = Basico_OPController_UtilOPController::removeAcentosString($arrayNome[0]);
	    			
	    		$nomeAno = $nome . $ano;
	    			
	    		if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $nomeAno) && !array_search($nomeAno, $arraySugestoesNome))
	    			$arraySugestoesNome[] = $nomeAno;
	    				
	    		$nomeContador = $nome . $i;
	    				
	    		if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $nomeContador) && !array_search($nomeContador, $arraySugestoesNome))
	    			$arraySugestoesNome[] = $nomeContador;
	    				
	    		$i++;
	    	}	
	    		
		    // carregando sugestoes utilizando nome no array resultado
		    foreach ($arraySugestoesNome as $sugestaoNome) {
		    	$arraySugestoes[] = $sugestaoNome;
		    }
	    		
    	}
    		
   		// loop para montar as sugestoes utilizando o email
    	$i = 1;
    	$email = substr($objEmailUsuario->email, 0, strpos($objEmailUsuario->email, '@'));
	    	
    	while (count($arraySugestoesEmail) < NUMERO_SUGESTOES_LOGIN_UTILIZANDO_EMAIL) {
	    			
    		if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $email))
    			$arraySugestoesEmail[] = $email;
    			
   			$emailAno = $email . $ano;

    			
   			if (Basico_OPController_DBCheckOPController::checaDisponibilidadeString('login', 'login', $emailAno))
   				$arraySugestoesEmail[] = $emailAno;
    				
   			$i++;
   		}
	    		
	    foreach ($arraySugestoesEmail as $sugestaoEmail) {
	    	$arraySugestoes[] = $sugestaoEmail;
	    }
    	
    	return $arraySugestoes;
    }


	/**
	 * 
	 * metodo responsavel por enviar uma mensagem de alerta de problemas com login 
	 * @param string $login
	 * @param string $mensagemProblemaLogin
	 * 
	 * @return Boolean
	 */
	public function enviaMensagemAlertaProblemasLogin($login, $mensagemProblemaLogin = null)
	{
		try{
			
			// recuperando o id da pessoa(destinatario) a partir do login
			$idPessoaDestinatario = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin($login);
			
			// recuperando nome do destinatario
			$nomePessoaDestinatario = $nomeDestinatario = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaNomePessoaPorIdPessoa($idPessoaDestinatario);
			
			$sexoUsuario = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaSexoPorIdPessoa($idPessoaDestinatario);
			
		    // substituindo a tag de tratamento de acordo com o sexo do usuario
			if ($sexoUsuario === FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO)
			    $tratamentoPessoaDestinatario = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_MASCULINO');
			else
			    $tratamentoPessoaDestinatario = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('MENSAGEM_TEXTO_TAG_TRATAMENTO_FEMININO');

			// verificando se mensagem de problema foi passada 
			if($mensagemProblemaLogin === null){

			   // carregando mensagem de erro de login
			   $mensagemProblemaLogin = Basico_OPController_LoginOPController::getInstance()->retornaMensagensErroLoginNaoPodeLogarHTMLLI($login);
				
			   // substituindo quebra de linha HTML(<br>) pro quebra e linha plain/text(\n)
			   $mensagemProblemaLogin = str_replace("<br>", "\\n", $mensagemProblemaLogin);
			   
			   // retornando mensagem de erro de login sem HTML Tags
			   $mensagemProblemaLogin = Basico_OPController_UtilOPController::retornaTextoSemHTML(Basico_OPController_LoginOPController::getInstance()->retornaMensagensErroLoginNaoPodeLogarHTMLLI($login));
			}	
			
			// carregando array de TAGS
			$arrayTagsMensagemProblemasLogin["@tratamento"]  		= $tratamentoPessoaDestinatario;
			$arrayTagsMensagemProblemasLogin["@nomeUsuario"] 		= $nomePessoaDestinatario;
			$arrayTagsMensagemProblemasLogin["@problemas"]	 		= $mensagemProblemaLogin;
			$arrayTagsMensagemProblemasLogin["@login"]	     		= $login;
			$arrayTagsMensagemProblemasLogin["@assinaturaMensagem"] = Basico_OPController_DadosPessoasPerfisOPController::getInstance()->retornaAssinaturaMensagemEmailSistema();
			
			// recuperando mensagem template de alerta sobre falhas no login
			$modeloMensagemProblemaLogin = Basico_OPController_MensagemOPController::getInstance()->retornaModeloMensagemTemplateViaArrayIdsDestinatarios(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_PROBLEMAS_LOGIN_PLAINTEXT, array($idPessoaDestinatario), null, $arrayTagsMensagemProblemasLogin);
			
			// recuperando o objeto categoria da mensagem
			$objCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(MENSAGEM_EMAIL_ALERTA_PROBLEMAS_LOGIN_PLAINTEXT);

			// setando categoria da mensagem de alerta  
			$modeloMensagemProblemaLogin->categoria = $objCategoriaMensagem->id;
			
			// recuperando o id da pessoa perfil o destinatario
			$idPessoaPerfilUsuarioValidadoDestinatario = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoaDestinatario);
			
			// salvano objeto da mensagem
			Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($modeloMensagemProblemaLogin);
			
			// enviando a mensagem
            Basico_OPController_MensageiroOPController::getInstance()->enviar($modeloMensagemProblemaLogin, Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL(), array($idPessoaPerfilUsuarioValidadoDestinatario));
            
    	} catch (Exception $e) {

    		throw new Exception($e);
    		
    	}
                        
		
	}

	/**
	 * Salva e retorna a mensagem do cadastro de usuario nao validado
	 * 
	 * @param Array $arrayDestinatarios
	 * @param Int $idCategoria
	 * @param String $token
	 */
	public function retornaMensagemCadastroUsuarioNaoValidado($nomeDestinatario, $emailDestinatario, $token)
	{
		// recuperando o link para continuacao do cadastro
		$link = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . LINK_VALIDACAO_USUARIO . $token;
		// recuperando o objeto mensagem já preenchido com os dados da template
        $objNovaMensagem = Basico_OPController_MensagemOPController::getInstance()->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainText($nomeDestinatario, $link);
        // setando destinatario da mensagem          
        $objNovaMensagem->destinatarios       = array($emailDestinatario);
        // setando a datahora da mensagem
        $objNovaMensagem->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
        // recuperando a categoria da mensagem
		$idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
		// setando a categoria da mensagem
        $objNovaMensagem->categoria           = $idCategoriaMensagem;
        // salvando a mensagem
        Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($objNovaMensagem);
        
        // retornando o objeto mensagem
        return $objNovaMensagem;
	}
	
	/**
	 * Salva e retorna a mensagem do cadastro de usuario nao validado Reenvio
	 * 
	 * @param Array $arrayDestinatarios
	 * @param Int $idCategoria
	 * @param String $token
	 */
	public function retornaMensagemCadastroUsuarioNaoValidadoReenvio($idPessoa, $emailDestinatario, $token)
	{
		// recuperando o link para continuacao do cadastro
		$link = Basico_OPController_UtilOPController::retornaServerHost() . Basico_OPController_UtilOPController::retornaBaseUrl() . LINK_VALIDACAO_USUARIO . $token;
		
		// recuperando o objeto mensagem já preenchido com os dados da template
        $objNovaMensagem = Basico_OPController_MensagemOPController::getInstance()->retornaObjetoMensagemTemplateMensagemValidacaoUsuarioPlainTextReenvio($idPessoa, $link);
        
        // setando destinatario da mensagem          
        $objNovaMensagem->destinatarios       = array($emailDestinatario);
        // setando a datahora da mensagem
        $objNovaMensagem->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
        // recuperando a categoria da mensagem
		$idCategoriaMensagem = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
		
		// setando a categoria da mensagem
        $objNovaMensagem->categoria           = $idCategoriaMensagem;
        
        // salvando a mensagem
        Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($objNovaMensagem);
        
        // retornando o objeto mensagem
        return $objNovaMensagem;
	}
	
	/**
	 * Retorna a mensagem de confirmação da conclusão do cadastro de usuario validado
	 * 
	 * @param Int $idPessoa
	 * @param String $emailPrimario
	 */
	public function retornaMensagemConfirmacaoConclusaoCadastroUsuarioValidado($idPessoa, $emailPrimario)
	{
		// recuperando a template da mensagem
		$novaMensagemConfirmacao = Basico_OPController_MensagemOPController::getInstance()->retornaObjetoMensagemTemplateMensagemConfirmacaoCadastroPlainText($idPessoa);
		    	
        // recuperando o nome do destinatario
        $nomeDestinatario = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaObjetoDadosPessoaisPorIdPessoa($idPessoa)->nome;
	    // setando atributos da mensagem                     
        $novaMensagemConfirmacao->destinatarios       = array($emailPrimario);
        $novaMensagemConfirmacao->categoria           = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
        $novaMensagemConfirmacao->dataHoraMensagem    = Basico_OPController_UtilOPController::retornaDateTimeAtual();
        // salvando objeto
        Basico_OPController_MensagemOPController::getInstance()->salvarObjeto($novaMensagemConfirmacao);
	
        return $novaMensagemConfirmacao;
        
	}
	
	/**
     * retorna o formulario de aceite de termos de uso inicializado
     * 
     * @param Int $idPessoa
     */
    public function initFormAceiteTermosUso($idPessoa)
    {
    	// recuperando o objFormulario
    	$form = new Basico_Form_AceiteTermosUso();
			    
    	// adicionando elemento hidden com o id da pessoa
		Basico_OPController_UtilOPController::adicionaElementoForm($form, 'hidden', 'idPessoa', array('value' => $idPessoa));
			    
		// setando atributos de tamanho do formulario e dos displayGroups
		$form->setAttrib('style', 'width: 472px;');
		$form->getDisplayGroup('download')->setAttrib('style', 'width: 455px;');
		$form->getDisplayGroup('aceite')->setAttrib('style', 'width: 455px;');
		
		// setando conteudo do textArea dos termos de uso
		$form->getElement('BasicoAceiteTermosUsoTermosUso')->setValue(Basico_OPController_UtilOPController::retornaConteudoArquivo(PUBLIC_PATH . "/docs/termos/termo.txt"));
		
		// recuperando o baseUrl
		$baseUrl = Basico_OPController_UtilOPController::retornaBaseUrl();
		
		// setando link para download do termo
		$form->getElement('BasicoAceiteTermosUsoHtmlButtonCancelar')->setAttrib('onclick', "location.href='{$baseUrl}'");
		
		// recuperando a url do arquivo para montar link para download
		$urlArquivoTermos = Basico_OPController_TokenOPController::getInstance()->gerarTokenPorUrl("/basico/fs/download/tipo/termos/fileName/termos.txt");
		
		// setando link para download do termo de uso
		$form->getElement('BasicoAceiteTermosUsoLinks')->setValue("<a href='$urlArquivoTermos'><img src='{$baseUrl}/images/icons/pdf.png'></a>");
			    
		// recuperando a string de confirmação do aceite
    	$stringConfirmacao = Basico_OPController_TradutorOPController::getInstance()->retornaTraducaoViaSQL("FORM_ACEITE_TERMOS_USO_STRING_CONFIRMACAO");
			    
    	// substituindo string de confirmacao no label do campo de confirmacao do aceite
		$elementoAceiteLabel = str_replace(FORM_ACEITE_TERMOS_USO_TAG_STRING_CONFIRMACAO, $stringConfirmacao, $form->getElement('BasicoAceiteTermosUsoAceiteTermosUso')->getLabel());
		
		return $form;
    }
	
	/**
	 * Salva o obj login atraves dos dados submetidos pelo formulario Basico_Form_CadastrarUsuarioValidado
	 * 
	 * @param Array $arrayPost
	 */
	public function salvarLoginViaFormCadastrarUsuarioValidado($arrayPost)
	{
		// criando o login do usuario
    	$novoLogin = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_LoginOPController');
    	// setando atributos do login do usuario 
    	$novoLogin->pessoa                 = $arrayPost['idPessoa'];
    	$novoLogin->tentativasFalhas       = 0;
    	$novoLogin->travado                = false;
    	$novoLogin->resetado               = false;
    	$novoLogin->podeExpirar            = true;
    	$novoLogin->login                  = trim($arrayPost['BasicoCadastrarUsuarioValidadoLogin']);
    	$novoLogin->senha                  = Basico_OPController_UtilOPController::retornaStringEncriptada(trim($arrayPost['BasicoCadastrarUsuarioValidadoSenha']));
    	$novoLogin->ativo                  = true;
    	$novoLogin->dataHoraAceiteTermoUso = $arrayPost['dataAceite'];
    	
    	// salvando o objeto login
    	$this->salvarObjeto($novoLogin);
    	
    	return $novoLogin;
	}
	
	/**
	 * Ativa o login da pessoa passada como parametro
	 * @param int $idPessoa
	 */
	public function ativarLoginPessoa($idPessoa)
	{
		// recuperando o obj login da pessoa
		$objLogin = $this->retornaObjetoLoginPorIdPessoa($idPessoa);

		// se o login nao foi encontrado lança uma excessao
		if (!$objLogin)
			throw new Exception(MSG_ERRO_LOGIN_NAO_ENCONTRADO);
			
		// ativando o login
		$objLogin->ativo = true;
		
		// salvando o login
		$this->salvarObjeto($objLogin, Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($objLogin));
	}

    /**
     * Cria o usuario "admin"
     * 
     * @return True
     */
    public function criaLoginAdmin()
    {
    	// verificando se o login "admin" ja foi criado
		if (Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorLogin(ADMIN_LOGIN_NAME_DATABASE_RESET)) {
			// retornando true
			return true;
		}

		// bloco de tentativa de persistencia
		try {
	    	// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();

			// criando uma nova pessoa no banco de dados
			$idPessoaAdmin = Basico_OPController_PessoaOPController::getInstance()->retornaIdNovoObjetoPessoa();
	
			// criando os dados pessoais
			$idDadosPessoaisAdmin = Basico_OPController_DadosPessoaisOPController::getInstance()->retornaIdNovoObjetoDadosPessoais($idPessoaAdmin, ADMIN_LOGIN_NAME_DATABASE_RESET);

			// criando o email
            $idEmailAdmin = Basico_OPController_EmailOPController::getInstance()->retornaIdNovoObjetoEmail(SUPPORT_EMAIL, $idPessoaAdmin, Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(EMAIL_PRIMARIO));

            // recuperando os perfis desejados para o administrador
            $idPerfilUsuarioValidado      = Basico_OPController_PerfilOPController::retornaIdPerfilPorNomeViaSQL(PERFIL_USUARIO_VALIDADO);
            $idPerfilUsuarioAdministrador = Basico_OPController_PerfilOPController::retornaIdPerfilPorNomeViaSQL(PERFIL_USUARIO_ADMINISTRADOR);
            // associando a pessoa "admin" aos perfis necessarios
            $idPessoaPerfilAdminUsuarioValidado      = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdNovoObjetoPessoasPerfis($idPessoaAdmin, $idPerfilUsuarioValidado);
            $idPessoaPerfilAdminUsuarioAdministrador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdNovoObjetoPessoasPerfis($idPessoaAdmin, $idPerfilUsuarioAdministrador);
	    	
	    	// recuperando o modelo de login
	    	$objLoginAdmin = $this->_model;
	
	    	// populando objeto
	    	$objLoginAdmin->pessoa = $idPessoaAdmin;
	    	$objLoginAdmin->tentativasFalhas = 0;
	    	$objLoginAdmin->travado = false;
	    	$objLoginAdmin->resetado = false;
	    	$objLoginAdmin->podeExpirar = true;
	    	$objLoginAdmin->login = ADMIN_LOGIN_NAME_DATABASE_RESET;
	    	$objLoginAdmin->senha = Basico_OPController_UtilOPController::retornaStringEncriptada(ADMIN_LOGIN_NAME_DATABASE_RESET);
	    	$objLoginAdmin->ativo = true;

	    	// salvando o objeto login
    		$this->salvarObjeto($objLoginAdmin);

			// salvando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);
    	
		} catch (Exception $e) {
			// voltando a transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

			// estourando excecao
			throw new Exception(MSG_ERRO_CRIACAO_LOGIN_ADMIN . $e->getMessage());
		}

		// retornando sucesso
		return true;
    }
}