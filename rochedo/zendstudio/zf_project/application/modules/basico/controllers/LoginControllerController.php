<?php

// includes
require_once('TradutorControllerController.php');

class Basico_LoginControllerController {
	/**
	 * @var Basico_LoginControllerController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Login
	 */
	private $_login;
	
	/**
	 * Contrutor do controlador Basico_LoginControllerController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// inicializando o modelo
		$this->_login = $this->retornaNovoObjetoLogin();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_LoginControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}
	
	/**
	 * Inicializa Controlador Login.
	 * 
	 * @return Basico_LoginControllerController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_LoginControllerController();
		}
		// retornando a instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto login vazio
	 * 
	 * @return Basico_Model_Login
	 */
	public function retornaNovoObjetoLogin()
	{
		// retornando um modelo vazio
		return new Basico_Model_Login();
	}

	/**
	 * Salva o login.
	 * 
	 * @param Basico_Model_Login $objLogin
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarLogin(Basico_Model_Login $objLogin, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao de registro
			if ($objLogin->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateLogin();
				$mensagemLog    = LOG_MSG_UPDATE_LOGIN;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoLogin();
				$mensagemLog    = LOG_MSG_NOVO_LOGIN;
			}

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objLogin, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto dentro do controlador
			$this->_login = $objLogin;

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
		// recuperando o objeto login
		$objLogin = $this->retornaObjetoLoginPorLogin($login);
		
		// verificando o resultado da recuperacao
		if ($objLogin->id) {
			// registrando o id do login do usuario na sessao
			Basico_UtilControllerController::registraValorSessao(AUTH_ID_LOGIN_SESSION_KEY, $objLogin->id);

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
		// removendo o id do login do usuario da sessao
		return Basico_UtilControllerController::removeValorSessao(AUTH_ID_LOGIN_SESSION_KEY);
	}

	/**
	 * Retorna o id do login do usuario registrado na sessao
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdLoginUsuarioSessao()
	{
		// verificando se a autenticacao foi realizada
		if (Zend_Auth::getInstance()->hasIdentity())
			// retornando o id do login do usuario na sessao
			return (Int) Basico_UtilControllerController::retornaValorSessao(AUTH_ID_LOGIN_SESSION_KEY);
		return null;
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
		$arrayObjsLogin = $this->_login->fetchList("login = '{$login}'");

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

		// instanciando controladores
		$tradutorControllerController = Basico_TradutorControllerController::getInstance();

		// recuperando os problemas de logon
		$arrayProblemasLogon = $this->retornaArrayLoginPodeLogar($login);

		// verificando se existe problema de login nao ativo
		if (!$arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorControllerController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG') . "</li>";

		// verificando se existe problema de login travado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorControllerController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG') . "</li>";

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorControllerController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorControllerController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

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
		// retornando se o login esta travado
		return (Boolean) $objLogin->travado;
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
		return (($objLogin->dataHoraExpiracaoSenha) and (Basico_UtilControllerController::retornaTimestamp($objLogin->dataHoraExpiracaoSenha) <= Basico_UtilControllerController::retornaDateTimeAtual()->getTimestamp()));
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
			$rowinfoControllerController = Basico_RowInfoControllerController::getInstance();

			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_CVCControllerController::getInstance()->retornaUltimaVersao($objLogin);

			// incrementa a quantidade de tentativas falhas
			$objLogin->tentativasFalhas++;

			// verificando se o limite de tentativas invalidas foi atingido
			if ($objLogin->tentativasFalhas >= QUANTIDADE_TENTATIVAS_LOGIN_MAX)
				// travando o login
				$objLogin->travado = true;

			// preparando XML rowinfo
			$rowinfoControllerController->prepareXml($objLogin, true);
			$objLogin->rowinfo  = $rowinfoControllerController->getXml();

			// salvando o objeto
			$this->salvarLogin($objLogin, $versaoUpdate);
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
		
	}

	/**
	 * Efetua o logoff do usuario
	 * 
	 * @return Boolean
	 */
	public function efetuaLogoff()
	{
		
	}

	/**
	 * Realiza as operacoes de destruicao de logon
	 * 
	 * @return Boolean
	 */
	private function destroiLogon()
	{
		
	}
	
	/**
	 * Retorna um array no formato Json possuindo as mensagens relacionadas ao componente passwordStrengthChecker.
	 * 
	 * @return Json
	 */
	public function retornaJsonMensagensPasswordStrengthChecker()
	{
		// inicializando controladores
		$tradutorControllerController = Basico_TradutorControllerController::getInstance();
		
		// carregando array com as mensagens utilizadas
		$arrayMensagens = array('muito_fraca' => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA'),
		                        'fraca'       => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA'),
		                        'boa'         => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA'),
		                        'forte'       => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE'),
		                        'muito_forte' => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE'),
		                        'digite_senha'=> $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA'),
		                        'abaixo'      => $tradutorControllerController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO')
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
			$objLogin = $this->_login->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
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
		$this->_login->find($idLogin);

		// verificando se o objeto login foi recuperado
		if ($this->_login->id)
			// retornando o id da pessoa
			return $this->_login->pessoa;

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
    	$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();
    	
    	//recuperando o objeto pessoaPerfil do sistema
    	$objetoPessoaPerfilSistema = $pessoaPerfilControllerController->retornaObjetoPessoaPerfilSistema();
    	  	
    	//recuperando resource do banco de dados
    	$auxDb = Basico_PersistenceControllerController::bdRecuperaBDSessao();
    	
    	//recuperando o login do usuario master do sistema
    	$objsLogin = $this->_login->fetchList("id_pessoa = {$objetoPessoaPerfilSistema->pessoa}", null, 1, 0);

    	// verificando se o objeto foi recuperado com sucesso
    	if (isset($objsLogin[0]))    	
    		//retornando o login do usuario master do sistema
    		return $objsLogin[0]->login;

    	return null;
    }
}