<?php
/**
 * Controlador Acao Aplicacao
 * 
 * Controlador responsavel pelas acoes da aplicacao
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 21/03/2011
 */

class Basico_OPController_ControleAcessoOPController
{
	/**
	 * @var Basico_OPController_ControleAcessoOPController
	 */
	private static $_singleton;

	/**
	 * @var Zend_Acl
	 */
	private $_acl;

	/**
	 * Construtor do Controlador Controle Acesso
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o ZEND_ACL
		$this->_acl = new Zend_Acl();

		// inicializando o controlador Basico_OPController_ControleAcessoOPController
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_ControleAcessoOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		// carregando ACL
		$this->carregaACL($this->_acl);
	}

	/**
	 * Metodo para reinicializar a classe de controle de acesso
	 * 
	 * @return void
	 */
	public function reinicializar()
	{
		// chamando o contrutor
		$this->__construct();
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ControleAcessoOPController
	 * 
	 * @return Basico_OPController_ControleAcessoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ControleAcessoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Carrega um Zend_Acl com os metodos e perfis do sistema
	 *
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACL(Zend_Acl &$acl)
	{
		// carregando perfis
		$this->carregaACLRolesViaSQL($acl);

		// carregando resources
		$this->carregaACLResourcesViaSQL($acl);

		// carregando associacoes entre perfis e resources
		$this->carregaACLAssociacoesViaSQL($acl);

		// carregando os resources desativados e suas respectivas associacoes com PERFIL_ACAO_DESATIVADA
		$this->carregaACLAssociacoesAcoesAplicacaoDesativadasComPerfilAcaoDesativada($acl);
	}

	/**
	 * Carrega as associacoes entre o perfil PERFIL_ACAO_DESATIVADA e os resources de um Zend_Acl cuja acao aplicacao esta desativada
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACLAssociacoesAcoesAplicacaoDesativadasComPerfilAcaoDesativada(Zend_Acl &$acl)
	{
		// recuperando todas as acoes aplicacoes desativadas
		$objsAcoesAplicacaoDesativados = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaTodosObjetosAcaoAplicacaoDesativados();

		// verificando se existem acoes desativadas
		if (count($objsAcoesAplicacaoDesativados) > 0) {
			// loop para carregar as associacoes com PERFIL_ACAO_DESATIVADA
			foreach ($objsAcoesAplicacaoDesativados as $objAcaoAplicacaoDesativada) {
				// carregando o nome completo do resource
				$nomeCompletoAcaoAplicacao = $this->retornaNomeAcaoAplicacaoCompleta($objAcaoAplicacaoDesativada->getModuloObject()->nome, $objAcaoAplicacaoDesativada->controller, $objAcaoAplicacaoDesativada->action);

				// adicionando a acaoa aplicacao desativada
				$acl->addResource(new Zend_Acl_Resource($nomeCompletoAcaoAplicacao));

				// associando o perfil PERFIL_ACAO_DESATIVADA a acao desativada
				$acl->allow(PERFIL_ACAO_DESATIVADA, $nomeCompletoAcaoAplicacao);
			}
		}
	}

	/**
	 * Carrega as associacoes entre os perfis e resources de um Zend_Acl
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACLAssociacoes(Zend_Acl &$acl)
	{
		// recuperando as vinculacoes entre acoes da aplicacao e perfis
		$objsAcoesAplicacaoPerfis = Basico_OPController_AcoesAplicacaoPerfisOPController::getInstance()->retornaTodosObjetosAcoesAplicacaoPerfis();

		// verificando se as vinculacoes entre acao aplicacao e perfis foram carregadas
		if (count($objsAcoesAplicacaoPerfis) > 0) {
			// loop para carregar as associacoes
			foreach ($objsAcoesAplicacaoPerfis as $objAcaoAplicacaoPerfil) {
				// recuperando os objetos
				$objAcaoAplicacao = $objAcaoAplicacaoPerfil->getAcaoAplicacaoObject();
				$objPerfil        = $objAcaoAplicacaoPerfil->getPerfilObject();

				// verificando se a acao esta ativa
				if ($objAcaoAplicacao->ativo)
					// associando o perfil ao resource
					$acl->allow($objPerfil->NOME, $this->retornaNomeAcaoAplicacaoCompleta($objAcaoAplicacao->getModuloObject()->nome, $objAcaoAplicacao->controller, $objAcaoAplicacao->action));
			}
		}
	}

	/**
	 * Carrega as associacoes entre os perfis e resources de um Zend_Acl, via SQL
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACLAssociacoesViaSQL(Zend_Acl &$acl)
	{
		// recuperando as vinculacoes entre acoes da aplicacao e perfis
		$arrayAcoesAplicacaoPerfis = Basico_OPController_AcaoAplicacaoAssocclPerfilOPController::retornaArrayNomePerfilNomeModuloNomeControllerNomeActionTodasAcoesAplicacaoPerfisViaSQL();

		// loop para carregar as associacoes
		foreach ($arrayAcoesAplicacaoPerfis as $arrayAcaoAplicacaoPerfil) {
			// verificando se a acao esta ativa
			if ($arrayAcaoAplicacaoPerfil['ativo']) {
				// associado o perfil ao resource
				$acl->allow($arrayAcaoAplicacaoPerfil['perfil'], $this->retornaNomeAcaoAplicacaoCompleta($arrayAcaoAplicacaoPerfil['module'], $arrayAcaoAplicacaoPerfil['controller'], $arrayAcaoAplicacaoPerfil['action']) );
			}
		}
	}

	/**
	 * Carrega os resources de um Zend_Acl
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACLResources(Zend_Acl &$acl)
	{
		// recuperando acoes da aplicacao
		$objsAcaoAplicacaoAtivos = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaTodosObjetosAcaoAplicacaoAtivos();

		// verificando se as acoes foram carregadas
		if (count($objsAcaoAplicacaoAtivos) > 0) {
			// loop para carregar os "resources" do Zend_Acl
			foreach ($objsAcaoAplicacaoAtivos as $objAcaoAplicacaoAtivo) {
				// carregando os resources
				$acl->addResource(new Zend_Acl_Resource($this->retornaNomeAcaoAplicacaoCompleta($objAcaoAplicacaoAtivo->getModuloObject()->nome, $objAcaoAplicacaoAtivo->controller, $objAcaoAplicacaoAtivo->action)));
			}
		}
	}

	/**
	 * Carrega os resources de um Zend_Acl, via SQL
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @return void
	 */
	private function carregaACLResourcesViaSQL(Zend_Acl &$acl)
	{
		// recuperando array de acoes da aplicacao
		$arrayAcoesAplicacoesAtivos = Basico_OPController_AcaoAplicacaoOPController::retornaArrayNomeModuloNomeControllerNomeAcaoAcaoAplicacaoAtivosViaSQL();

		// verificando se as acoes foram carregadas
		if (count($arrayAcoesAplicacoesAtivos) > 0) {
			// loop para carregar os "resources" do Zend_Acl
			foreach ($arrayAcoesAplicacoesAtivos as $arrayAcaoAplicacaoAtiva) {
				// carregando os resources
				$acl->addResource(new Zend_Acl_Resource($this->retornaNomeAcaoAplicacaoCompleta($arrayAcaoAplicacaoAtiva['module'], $arrayAcaoAplicacaoAtiva['controller'], $arrayAcaoAplicacaoAtiva['action'])));
			}
		}
	}

	/**
	 * Carrega os perfis de um Zend_Acl
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @throws Exception
	 * 
	 * @return void
	 */
	private function carregaACLRoles(Zend_Acl &$acl)
	{
		// recuperando perfis
		$objsPerfisUsuario = Basico_OPController_PerfilOPController::getInstance()->retornaObjetosPerfisUsuario();

		// verificando se os perfis foram carregados
		if (count($objsPerfisUsuario) > 0) {
			// loop para popular os "roles" do Zend_Acl
			foreach ($objsPerfisUsuario as $objPerfilUsuario) {
				// carregando o perfil
				$acl->addRole(new Zend_Acl_Role($objPerfilUsuario->NOME));
			}
			// adicionando o perfil PERFIL_ACAO_DESATIVADA
			$acl->addRole(new Zend_Acl_Role(PERFIL_ACAO_DESATIVADA));
		} else
			throw new Exception(MSG_ERROR_NENHUM_PERFIL_ENCONTRADO);
	}

	/**
	 * Carrega os perfis de um Zend_Acl
	 * 
	 * @param Zend_Acl $acl
	 * 
	 * @throws Exception
	 * 
	 * @return void
	 */
	private function carregaACLRolesViaSQL(Zend_Acl &$acl)
	{
		// recuperando perfis
		$arrayPerfisUsuario = Basico_OPController_PerfilOPController::retornaArrayNomesPerfisUsuarioViaSQL();

		// verificando se os perfis foram carregados
		if (count($arrayPerfisUsuario) > 0) {
			// loop para popular os "roles" do Zend_Acl
			foreach ($arrayPerfisUsuario as $arrayPerfilUsuario) {
				// carregando o perfil
				$acl->addRole(new Zend_Acl_Role($arrayPerfilUsuario['nome']));
			}
			// adicionando o perfil PERFIL_ACAO_DESATIVADA
			$acl->addRole(new Zend_Acl_Role(PERFIL_ACAO_DESATIVADA));
		} else
			throw new Exception(MSG_ERROR_NENHUM_PERFIL_ENCONTRADO);
	}

	/**
	 * Monta uma string condificando o nome do modulo, nome do controlador e nome da acao
	 * 
	 * @param String $nomeModulo
	 * @param String $nomeController
	 * @param String $nomeAcao
	 * 
	 * @return String
	 */
	private function retornaNomeAcaoAplicacaoCompleta($nomeModulo, $nomeController, $nomeAcao)
	{
		// retornando o nome completo da acao aplicacao
		return strtoupper($nomeModulo) . CARACTER_CODIFICACAO_ACAO_COMPLETA . $nomeController . CARACTER_CODIFICACAO_ACAO_COMPLETA . $nomeAcao;
	}

	/**
	 * Verifica se o ip do usuario eh o mesmo ip que foi registrado na sessao no momento do logon
	 * 
	 * @return Boolean
	 */
	public function verificaIpUsuarioIpUsuarioAutenticadoSessao()
	{
		// recupernado o id do usuario
		$idUsuario = Basico_OPController_UtilOPController::retornaUserIp();

		// retornando o resultado da comparacao entre o ip do usuario e o ip que foi registrado na sessao no momento do logon
		return (Basico_OPController_SessionOPController::verificaIpSessaoUsuario($idUsuario));
	}

	/**
	 * Verifica se um request pode ser acessado pelo usuario logado
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaPermissaoAcessoRequestPerfilPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// recuperando o nome completo da acao
		$nomeAcaoAplicacaoCompleta = $this->retornaNomeAcaoAplicacaoCompleta($request->getModuleName(), $request->getControllerName(), $request->getActionName());

		// recuperando o id da pessoa atraves do id do login
		$idPessoa = Basico_OPController_PessoaLoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_PessoaLoginOPController::retornaIdLoginUsuarioSessao());

		// recuperando perfil vinculado ao usuario que possui maior nivel de acesso para acessar a acao
		$nomeMaiorPerfilPessoaRequest = $this->retornaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, $request);

		// retornando resultado da verificacao do perfil contra acao aplicacao
		return $this->verificaAssociacaoAcaoAplicacaoPerfil($nomeMaiorPerfilPessoaRequest, $nomeAcaoAplicacaoCompleta);
	}

	/**
	 * Verifica o metodo de validacao da acao, por request e perfil
	 * Se nao for passado um perfil, o sistema tentara localizar o metodo de validacao generico para a acao
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * @param Integer $idPerfil
	 * 
	 * @return Boolean
	 */
	public function verificaMetodoValidacaoAcaoPorRequestIdPerfilUsuarioLogado(Zend_Controller_Request_Abstract $request, $idPerfil = null)
	{
		// recuperando informacoes do request
		$nomeModuloRequest     = strtoupper($request->getModuleName());
		$nomeControllerRequest = $request->getControllerName();
		$nomeAcaoRequest       = $request->getActionName();

		// verificando o id do perfil
		if (!isset($idPerfil))
			$idPerfil = 'NULL';

		// montando a query que vai retornar o metodo de validacao
		$querySQLRetornaMetodoValidacao = "SELECT mv.metodo
										   FROM basico.metodo_validacao mv
										   LEFT JOIN basico_acao_aplicacao.assoccl_metodo_validacao apmv ON (mv.id = apmv.id_metodo_validacao)
										   LEFT JOIN basico.acao_aplicacao ap ON (apmv.id_acao_aplicacao = ap.id)
										   LEFT JOIN basico.modulo m ON (ap.id_modulo = m.id)
										   WHERE m.nome = '{$nomeModuloRequest}'
										   AND ap.controller = '{$nomeControllerRequest}'
										   AND ap.action = '{$nomeAcaoRequest}'
										   AND (({$idPerfil} is null) OR (apmv.id_perfil = {$idPerfil}) OR (apmv.id_perfil IS NULL))";

		// recuperando array com os resultados
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaMetodoValidacao);

		// verificando o resultado da recuperacao dos resultados
		if (count($arrayResultados) > 0) {
			// loop para rodas todos os metodos de validacao
			foreach ($arrayResultados as $metodoValidacao){
				// rodando o metodo de validacao
				if (Basico_OPController_UtilOPController::secureEval($metodoValidacao['metodo']) === false){
					// retornando false pois o metodo de validacao falhou
					return false;
				}
			}
		}

		return true;
	}

	/**
	 * Verifica se um request esta cadastrado no banco de dados
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * @param Boolean $forceCreation
	 * 
	 * @return Boolean
	 */
	public function verificaRequestCadastrado(Zend_Controller_Request_Abstract $request, $forceCreation = false)
	{
		// recuperando informacoes do request
		$nomeModuloRequest     = strtoupper($request->getModuleName());
		$nomeControllerRequest = $request->getControllerName();
		$nomeAcaoRequest       = $request->getActionName();

		// montando a query que vai retornar se a acao esta cadastrada
		$querySQLRetornaIdAcao = "SELECT a.id
								  from basico.acao_aplicacao a
								  LEFT JOIN modulo m ON (a.id_modulo = m.id)
								  WHERE m.nome = '{$nomeModuloRequest}'
								  AND a.controller = '{$nomeControllerRequest}'
								  AND a.action = '{$nomeAcaoRequest}'";

		// recuperando array com o resultado da query
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaIdAcao);

		// verificando o resultado da recuperacao e se eh preciso criar a relacao
		if (count($arrayResultados) > 0)
			return true;
		// verificando se deve-se criar uma relacao com o perfil de desenvolvedor
		else if ($forceCreation) {
			// iniciando transacao
			Basico_OPController_PersistenceOPController::bdControlaTransacao();

			try {
				// instanciando controladores
				$acaoAplicacaoOpController        = Basico_OPController_AcaoAplicacaoOPController::getInstance();
				$acoesAplicacaoPerfisOpController = Basico_OPController_AcoesAplicacaoPerfisOPController::getInstance();
	
				// recuperando o id do modulo
				$idModulo = Basico_OPController_ModuloOPController::getInstance()->retornaObjetoModuloPorNome($nomeModuloRequest)->id;
	
				// recuperando um novo modelo de acao aplicacao
				$modeloAcaoAplicacao = $acaoAplicacaoOpController->retornaNovoObjetoModeloPorNomeOPController($acaoAplicacaoOpController->retornaNomeClassePorObjeto($acaoAplicacaoOpController));
	
				// setando informacoes sobre a acao
				$modeloAcaoAplicacao->modulo = $idModulo;
				$modeloAcaoAplicacao->controller = $nomeControllerRequest;
				$modeloAcaoAplicacao->action = $nomeAcaoRequest;
				$modeloAcaoAplicacao->ativo = true;
	
				// salvando o acao aplicacao
				$acaoAplicacaoOpController->salvarObjeto($modeloAcaoAplicacao);
	
				// recuperando o id do perfil de desenvolvedor
				$idPerfilUsuarioDesenvolvedor = Basico_OPController_PerfilOPController::getInstance()->retornaIdPerfilUsuarioDesenvolvedor();
	
				// recuperando um novo modelo acoes aplicacao perfis
				$modeloAcoesAplicacaoPerfis = $acoesAplicacaoPerfisOpController->retornaNovoObjetoModeloPorNomeOPController($acoesAplicacaoPerfisOpController->retornaNomeClassePorObjeto($acoesAplicacaoPerfisOpController));
	
				// setando informacoes sobre a vinculacao da nova acao com o perfil de desenvolvedor
				$modeloAcoesAplicacaoPerfis->perfil = $idPerfilUsuarioDesenvolvedor;
				$modeloAcoesAplicacaoPerfis->acaoAplicacao = $modeloAcaoAplicacao->id;
	
				// salvando a vinculacao entre a nova acao e o perfil de desenvolvedor
				$acoesAplicacaoPerfisOpController->salvarObjeto($modeloAcoesAplicacaoPerfis);

				// salvando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_COMMIT_TRANSACTION);

				// reinicializando o controle de acesso
				$this->reinicializar();
	
				return true;
				
			} catch (Exception $e) {
				// voltando a transacao
				Basico_OPController_PersistenceOPController::bdControlaTransacao(DB_ROLLBACK_TRANSACTION);

				throw new Exception($e);
			}
		}

		return false;
	}

	/**
	 * Retorna o maior perfil vinculado a uma pessoa, atraves do id desta pessoa, o nome completo da acao que esta sendo requisitada e a propria requisicao
	 * 
	 * @param Integer $idPessoa
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return String|null
	 */
	public function retornaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, Zend_Controller_Request_Abstract $request)
	{
		if (isset($idPessoa)) {
			// recuperando informacoes do request
			$nomeModuloRequest     = strtoupper($request->getModuleName());
			$nomeControllerRequest = $request->getControllerName();
			$nomeAcaoRequest       = $request->getActionName();
			$booleanTrueDB         = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);
	
			// montando a query que vai retornar o maior perfil do usuario vinculado ao request
			$querySQLRetornaMaiorPerfilAcaoAplicacao = "SELECT p.nome
														FROM basico.perfil p
														INNER JOIN basico_pessoa.assoccl_perfil pp ON (p.id = pp.id_perfil)
														INNER JOIN basico_acao_aplicacao.assoccl_perfil aap ON (p.id = aap.id_perfil)
														INNER JOIN basico.acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
														INNER JOIN basico.modulo m ON (aa.id_modulo = m.id)
														WHERE pp.id_pessoa = {$idPessoa}
														AND m.nome = '{$nomeModuloRequest}'
														AND aa.controller = '{$nomeControllerRequest}'
														AND aa.action = '{$nomeAcaoRequest}'
														AND p.ativo = {$booleanTrueDB}
														ORDER BY p.prioridade DESC";
	
			// recuperando array com o resultado da query
			$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaMaiorPerfilAcaoAplicacao);
	
			// verificando o resultado da recuperacao
			if (count($arrayResultados) > 0)
				// retornando o primeiro elemento do array
				return $arrayResultados[0]['nome'];
		}
		return null;
	}

	/**
	 * Retorna o id de pessoa x o maior perfil vinculado a uma pessoa, atraves do id desta pessoa, o nome completo da acao que esta sendo requisitada e a propria requisicao
	 * 
	 * @param Integer $idPessoa
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdPessoaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, Zend_Controller_Request_Abstract $request)
	{
		if ($idPessoa) {
			// recuperando informacoes do request
			$nomeModuloRequest     = strtoupper($request->getModuleName());
			$nomeControllerRequest = $request->getControllerName();
			$nomeAcaoRequest       = $request->getActionName();
			$booleanTrueDB         = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);
	
			// montando a query que vai retornar o id de pessoa perfil do usuario vinculado ao request
			$querySQLRetornaIdMaiorPerfilAcaoAplicacao = "SELECT pp.id
														  FROM basico.perfil p
														  INNER JOIN basico_pessoa.assoccl_perfil pp ON (p.id = pp.id_perfil)
														  INNER JOIN basico_acao_aplicacao.assoccl_perfil aap ON (p.id = aap.id_perfil)
														  INNER JOIN basico.acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
														  INNER JOIN basico.modulo m ON (aa.id_modulo = m.id)
														  WHERE pp.id_pessoa = {$idPessoa}
														  AND m.nome = '{$nomeModuloRequest}'
														  AND aa.controller = '{$nomeControllerRequest}'
														  AND aa.action = '{$nomeAcaoRequest}'
														  AND p.ativo = {$booleanTrueDB}
														  ORDER BY p.prioridade DESC";
	
			// recuperando array com o resultado da query
			$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaIdMaiorPerfilAcaoAplicacao);
	
			// verificando o resultado da recuperacao
			if (count($arrayResultados) > 0)
				// retornando o primeiro elemento do array
				return $arrayResultados[0]['id'];
		}
		
		return null;
	}
	
	/**
	 * Verifica se um request esta associado ao perfil USUARIO_PUBLICO
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaRequestPublicoPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// codificando o nome do acao completa
		$nomeAcaoAplicacaoCompleta = $this->retornaNomeAcaoAplicacaoCompleta($request->getModuleName(), $request->getControllerName(), $request->getActionName());
		$nomePerfilPublico = Basico_OPController_PerfilOPController::getInstance()->retornaNomePerfilUsuarioPublicoViaSQL();

		// retornando o resultado da verificacao
		return $this->verificaAssociacaoAcaoAplicacaoPerfil($nomePerfilPublico, $nomeAcaoAplicacaoCompleta);
	}

	/**
	 * Verifica se o request esta associado a uma acao aplicacao ativa
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaRequestAtivoPorRequest(Zend_Controller_Request_Abstract $request)
	{
		// codificando o nome do acao completa
		$nomeAcaoAplicacaoCompleta = $this->retornaNomeAcaoAplicacaoCompleta($request->getModuleName(), $request->getControllerName(), $request->getActionName());

		// retornando o resultado da verificacao
		return (!$this->verificaAssociacaoAcaoAplicacaoPerfil(PERFIL_ACAO_DESATIVADA, $nomeAcaoAplicacaoCompleta));
	}

	/**
	 * Verifica a associacao de um perfil a uma acao da aplicacao
	 * 
	 * @param String $nomePerfil
	 * @param String $nomeAcaoAplicacaoCompleta
	 * 
	 * @return Boolean
	 */
	private function verificaAssociacaoAcaoAplicacaoPerfil($nomePerfil, $nomeAcaoAplicacaoCompleta)
	{
		// retornando o resultado da verificacao
		return ($this->_acl->has($nomeAcaoAplicacaoCompleta)) and ($this->_acl->isAllowed($nomePerfil, $nomeAcaoAplicacaoCompleta));
	}

	/**
	 * Verifica se um determinado IP pode ou nao utilizar o sistema (banimento)
	 * 
	 * @param String $ip
	 * 
	 * @return Boolean
	 */
	public static function verificaPermissaoIP($ip)
	{
		// verificando se o IP pode utilizar o sistema
		if (self::verificaPermissaoIPHostsBanidosSistema($ip)) {
			// retornando true
			return true;
		}

		// retornando false o IP nao possui permissao
		return false;
	}

	/**
	 * Verifica se um determinado IP encontra-se no arquivo do sistema que contem os IP banidos
	 * 
	 * @param String $ip
	 * 
	 * @return boolean
	 */
	private static function verificaPermissaoIPHostsBanidosSistema($ip)
	{
		// carregando arquivo de configuracao de hosts banidos
		$arrayINI = Basico_OPController_UtilOPController::retornaArrayViaArquivoINI(HOSTS_DENNY);

		// verificando se o IP foi encontrado no arquivo de configuracao de hosts banidos
		if ((array_key_exists($ip, $arrayINI)) and ($arrayINI[$ip]['ativo'] == true)) {
			// verificando se o banimento foi por tempo determinado
			if ($arrayINI[$ip]['termino']) {
				// recuperando data-hora do termino do banimento
				$dataTerminoBanimento = strtotime($arrayINI[$ip]['termino']);

				// verificando se ja foi ultrapassado o tempo do banimento
				if ($dataTerminoBanimento < strtotime(Basico_OPController_UtilOPController::retornaDateTimeAtual()->toString())) {
					// retornando o resultado do desativando do banimento e parando a execucao
					return self::removeIPHostsBanidosSistema($ip);
				}
			}

			// retornando false
			return false;
		}

		// retornando true
		return true;
	}

	/**
	 * Adiciona um IP a lista de IPs banidos pelo sistema
	 * 
	 * @param String $ip
	 * @param String $motivo
	 * @param String $dataHoraInicioBanimento
	 * @param String $dataHoraTerminoBanimento
	 * 
	 * @return Boolean
	 */
	public static function adicionaIPHostsBanidosSistema($ip, $motivo, $dataHoraInicioBanimento, $dataHoraTerminoBanimento = null)
	{
		// carregando arquivo de configuracao de hosts banidos
		$arrayINI = Basico_OPController_UtilOPController::retornaArrayViaArquivoINI(HOSTS_DENNY);

		// verificando se o IP foi encontrado no arquivo de configuracao de hosts banidos
		if (array_key_exists($ip, $arrayINI)) {
			// verificando se o IP encontrado na lista de IPs banidos pelo sistema encontra-se ativado
			if ($arrayINI[$ip]['ativo'] == true) {
				// retornando true (e parando a execucao) pois o banimento do IP esta ativo
				return true;
			} else {
				// ativando o banimento do IP e parando a execucao retornando o resultado do metodo de ativacao
				return self::ativaIPHostsBanidosSistema($ip);
			}			
		}

		// adicionando o IP banido no array recuperado com as informacoes contidas no arquivo de configuracao de hosts banidos
		$arrayINI[$ip] = array('motivo' => $motivo, 'inicio' => $dataHoraInicioBanimento, 'termino' => $dataHoraTerminoBanimento, 'ativo' => true);

		// recuperando informacoes para log
    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ADICIONA_IP_HOSTS_DENY, true);
    	$mensagemLog = LOG_MSG_ADICIONA_IP_HOSTS_DENY . $ip . ")";
		
		// salvando log de operacoes
		Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

		// retornando o resultado do metodo de salvar o arquivo de configuracoes de hosts banidos
		return Basico_OPController_UtilOPController::escreveArquivoINIViaArray(HOSTS_DENNY, $arrayINI);
	}

	/**
	 * Remove um IP da lista de IPs banidos pelo sistema
	 * 
	 * @param String $ip
	 * 
	 * @return Boolean
	 */
	public static function removeIPHostsBanidosSistema($ip)
	{
		// carregando arquivo de configuracao de hosts banidos
		$arrayINI = Basico_OPController_UtilOPController::retornaArrayViaArquivoINI(HOSTS_DENNY);

		// verificando se o IP foi encontrado no arquivo de configuracao de hosts banidos
		if (array_key_exists($ip, $arrayINI)) {
			// removendo o no do array
			unset($arrayINI[$ip]);

			// recuperando informacoes para log
	    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_REMOVE_IP_HOSTS_DENY, true);
	    	$mensagemLog = LOG_MSG_REMOVE_IP_HOSTS_DENY . $ip . ")";
			
			// salvando log de operacoes
			Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// retornando o resultado do metodo de salvar o arquivo de configuracoes de hosts banidos
			return Basico_OPController_UtilOPController::escreveArquivoINIViaArray(HOSTS_DENNY, $arrayINI);
		}

		return true;
	}

	/**
	 * Desativa o banimento de um IP da lista de IPs banidos pelo sistema
	 * 
	 * @param String $ip
	 * 
	 * @return Boolean
	 */
	public static function desativaIPHostsBanidosSistema($ip) 
	{
		// carregando arquivo de configuracao de hosts banidos
		$arrayINI = Basico_OPController_UtilOPController::retornaArrayViaArquivoINI(HOSTS_DENNY);

		// verificando se o IP foi encontrado no arquivo de configuracoes de hosts banidos
		if (array_key_exists($ip, $arrayINI)) {
			// verificando se o banimento esta ativado
			if ($arrayINI[$ip]['ativo'] == true) {
				// setando o ativamento para falso
				$arrayINI[$ip]['ativo'] = false;
			}

			// recuperando informacoes para log
	    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DESATIVA_IP_HOSTS_DENY, true);
	    	$mensagemLog = LOG_MSG_DESATIVA_IP_HOSTS_DENY . $ip . ")";
			
			// salvando log de operacoes
			Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// retornando o resultado do metodo de salvar o arquivo de configuracoes de hosts banidos
			return Basico_OPController_UtilOPController::escreveArquivoINIViaArray(HOSTS_DENNY, $arrayINI);
		}

		return true;
	}

	/**
	 * Ativa o banimento de um IP da lista de IPs banidos pelo sistema
	 * 
	 * @param String $ip
	 * 
	 * @return Boolean
	 */
	public static function ativaIPHostsBanidosSistema($ip)
	{
		// carregando arquivo de configuracao de hosts banidos
		$arrayINI = Basico_OPController_UtilOPController::retornaArrayViaArquivoINI(HOSTS_DENNY);

		// verificando se o IP foi encontrado no arquivo de configuracoes de hosts banidos
		if (array_key_exists($ip, $arrayINI)) {
			// verificando se o banimento esta desativado
			if ($arrayINI[$ip]['ativo'] == false) {
				// setando o ativamento para falso
				$arrayINI[$ip]['ativo'] = true;
			}

			// recuperando informacoes para log
	    	$idPessoaPerfil = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_ATIVA_IP_HOSTS_DENY, true);
	    	$mensagemLog = LOG_MSG_ATIVA_IP_HOSTS_DENY . $ip . ")";
			
			// salvando log de operacoes
			Basico_OPController_LogOPController::salvarLogViaSQL($idPessoaPerfil, $idCategoriaLog, $mensagemLog);

			// retornando o resultado do metodo de salvar o arquivo de configuracoes de hosts banidos
			return Basico_OPController_UtilOPController::escreveArquivoINIViaArray(HOSTS_DENNY, $arrayINI);
		}

		return false;
	}
}