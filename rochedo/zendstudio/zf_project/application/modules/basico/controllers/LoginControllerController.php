<?php

// includes
require_once('TradutorControllerController.php');

class Basico_LoginControllerController {
/**
	 * 
	 * @var Basico_LoginControllerController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Login
	 */
	private $login;
	
	/**
	 * Carrega a variavel login com um novo objeto Basico_Model_Login
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->login = new Basico_Model_Login();
	}
	
	/**
	 * Inicializa Controlador Login.
	 * 
	 * @return Basico_LoginController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_LoginControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva o login.
	 * 
	 * @param Basico_Model_Login $objLogin
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * @param String|null $logMessage
	 * 
	 * @return void
	 */
	public function salvarLogin(Basico_Model_Login $objLogin, $versaoUpdate = null, $idPessoaPerfilCriador = null, $logMessage = LOG_MSG_NOVO_DADOS_PESSOAIS)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objLogin, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoLogin(), LOG_MSG_NOVO_DADOS_PESSOAIS);
						
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
	public static function registraIdLoginUsuarioSessao($login)
	{
		// recuperando o objeto login
		$objLogin = Basico_LoginControllerController::retornaObjetoLoginLogin($login);
		
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
	public static function retornaObjetoLoginLogin($login)
	{
		// instanciando o modelo de login
		$modeloLogin = new Basico_Model_Login();

		// recuperando o array com o objeto login
		$arrayObjsLogin = $modeloLogin->fetchList("login = '{$login}'");

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
	public static function retornaArrayLoginPodeLogar($login)
	{
		// inicializando variaveis
		$tempReturn = array();
		
		// recuperando o objeto login
		$objLogin = self::retornaObjetoLoginLogin($login);

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
	public static function retornaMensagensErroLoginNaoPodeLigarHTMLLI($login)
	{
		// inicializando variaveis
		$tempReturn = '';

		// instanciando tradutor
		$tradutorController = Basico_TradutorControllerController::init();

		// recuperando os problemas de logon
		$arrayProblemasLogon = self::retornaArrayLoginPodeLogar($login);

		// verificando se existe problema de login nao ativo
		if (!$arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_ATIVO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_NAO_ATIVO_MSG') . "</li>";

		// verificando se existe problema de login travado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_TRAVADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_TRAVADO_MSG') . "</li>";

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_RESETADO])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_LOGIN_RESETADO_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		// verificando se existe problema de login resetado
		if ($arrayProblemasLogon[ARRAY_KEY_LOGIN_PODE_LOGAR_LOGIN_SENHA_EXPIRADA])
			$tempReturn .= TAG_ABRE_ITEM_LISTA_NAO_ORDENADA . $tradutorController->retornaTraducao('VIEW_AUTENTICAR_USUARIO_PROBLEMAS_LOGIN_SENHA_EXPIRADA_MSG') . TAG_FECHA_ITEM_LISTA_NAO_ORDENADA;

		return $tempReturn;
	}

	/**
	 * Retorna se o login pode logar
	 *
	 * @param String $login
	 * 
	 * @return Boolean
	 */
	public static function retornaLoginPodeLogar($login)
	{
		// recuperando array de verificacoes sobre o login
		$arrayLoginPodeLogar = self::retornaArrayLoginPodeLogar($login);

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
	public static function checaTentativaInvalidaLogon($login)
	{
		// recuperando o objeto login
		$objLogin = self::retornaObjetoLoginLogin($login);

		// verificando se o objeto foi carregado
		if ($objLogin->id) {
			// recuperando a ultima versao do objeto
			$versaoUpdate = Basico_CVCControllerController::retornaUltimaVersao($objLogin);

			// incrementa a quantidade de tentativas falhas
			$objLogin->tentativasFalhas++;

			// verificando se o limite de tentativas invalidas foi atingido
			if ($objLogin->tentativasFalhas >= QUANTIDADE_TENTATIVAS_LOGIN_MAX)
				// travando o login
				$objLogin->travado = true;

			// setando o rowinfo
			$controladorRowInfo = Basico_RowInfoControllerController::init();
			$controladorRowInfo->prepareXml($objLogin, true);
			$objLogin->rowinfo  = $controladorRowInfo->getXml();

			// salvando o objeto
			self::salvarLogin($objLogin, $versaoUpdate);
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
	public static function efetuaLogon($login)
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
	public static function efetuaLogoff()
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
	 * Retorna um array no formato Json possuindo as mensagens relacionadas
	 * ao componente passwordStrengthChecker.
	 * @return Json
	 */
	public function retornaJsonMensagensPasswordStrengthChecker()
	{
		// inicializando controladores
		$tradutorController = Basico_TradutorControllerController::init();
		
		// carregando array com as mensagens utilizadas
		$arrayMensagens = array('muito_fraca' => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FRACA'),
		                        'fraca'       => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FRACA'),
		                        'boa'         => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_BOA'),
		                        'forte'       => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_FORTE'),
		                        'muito_forte' => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_MUITO_FORTE'),
		                        'digite_senha'=> $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_DIGITE_A_SENHA'),
		                        'abaixo'      => $tradutorController->retornaTraducao('PASSWORD_STRENGTH_CHECKER_MESSAGE_ABAIXO')
	                           );
	                           
	    // codificando o array e retornando-o.
	    return str_replace('"', "'", Zend_Json::encode($arrayMensagens));
	}
	
	/**
	 * Retorna o login da pessoa passada
	 * @param Int $idPessoa
	 * @return String
	 */
	public function retornaLoginPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objLogin = self::$singleton->login->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objLogin[0]))
				// retorna o o objeto dados pessoais
	    	    return $objLogin[0]->login;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
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
	public static function retornaIdPessoaLogin($login)
	{
		// recuperando o objeto login
		$objLogin = self::retornaObjetoLoginLogin($login);

		// verificando se o login existe
		if ($objLogin->id)
			// retornando o id da pessoa
			return $objLogin->pessoa;

		return null;
	}
}