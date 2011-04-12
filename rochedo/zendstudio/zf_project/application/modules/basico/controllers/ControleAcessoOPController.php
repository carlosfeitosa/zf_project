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
		$this->carregaACLRoles($acl);

		// carregando resources
		$this->carregaACLResources($acl);

		// carregando associacoes entre perfis e resources
		$this->carregaACLAssociacoes($acl);

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
		$idPessoa = Basico_OPController_LoginOPController::getInstance()->retornaIdPessoaPorIdLogin(Basico_OPController_LoginOPController::retornaIdLoginUsuarioSessao());

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
										   FROM metodo_validacao mv
										   LEFT JOIN acoes_aplicacao_metodos_validacao apmv ON (mv.id = apmv.id_metodo_validacao)
										   LEFT JOIN acao_aplicacao ap ON (apmv.id_acao_aplicacao = ap.id)
										   LEFT JOIN modulo m ON (ap.id_modulo = m.id)
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
								  FROM acao_aplicacao a
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
				// setando rowinfo
				$acaoAplicacaoOpController->prepareSetRowinfoXML($modeloAcaoAplicacao, true);
	
				// salvando o acao aplicacao
				$acaoAplicacaoOpController->salvarObjeto($modeloAcaoAplicacao);
	
				// recuperando o id do perfil de desenvolvedor
				$idPerfilUsuarioDesenvolvedor = Basico_OPController_PerfilOPController::getInstance()->retornaIdPerfilUsuarioDesenvolvedor();
	
				// recuperando um novo modelo acoes aplicacao perfis
				$modeloAcoesAplicacaoPerfis = $acoesAplicacaoPerfisOpController->retornaNovoObjetoModeloPorNomeOPController($acoesAplicacaoPerfisOpController->retornaNomeClassePorObjeto($acoesAplicacaoPerfisOpController));
	
				// setando informacoes sobre a vinculacao da nova acao com o perfil de desenvolvedor
				$modeloAcoesAplicacaoPerfis->perfil = $idPerfilUsuarioDesenvolvedor;
				$modeloAcoesAplicacaoPerfis->acaoAplicacao = $modeloAcaoAplicacao->id;
				// setando rowinfo
				$acoesAplicacaoPerfisOpController->prepareSetRowinfoXML($modeloAcoesAplicacaoPerfis, true);
	
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
		// recuperando informacoes do request
		$nomeModuloRequest     = strtoupper($request->getModuleName());
		$nomeControllerRequest = $request->getControllerName();
		$nomeAcaoRequest       = $request->getActionName();
		$booleanTrueDB         = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// montando a query que vai retornar o maior perfil do usuario vinculado ao request
		$querySQLRetornaMaiorPerfilAcaoAplicacao = "SELECT p.nome
													FROM perfil p
													INNER JOIN pessoas_perfis pp ON (p.id = pp.id_perfil)
													INNER JOIN acoes_aplicacao_perfis aap ON (p.id = aap.id_perfil)
													INNER JOIN acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
													INNER JOIN modulo m ON (aa.id_modulo = m.id)
													WHERE pp.id_pessoa = {$idPessoa}
													AND m.nome = '{$nomeModuloRequest}'
													AND aa.controller = '{$nomeControllerRequest}'
													AND aa.action = '{$nomeAcaoRequest}'
													AND p.ativo = {$booleanTrueDB}
													ORDER BY p.nivel DESC";

		// recuperando array com o resultado da query
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaMaiorPerfilAcaoAplicacao);

		// verificando o resultado da recuperacao
		if (count($arrayResultados) > 0)
			// retornando o primeiro elemento do array
			return $arrayResultados[0]['nome'];

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
	public function retornaIdPessoaMaiorPerfilRequestPorIdPessoaRequest($idPessoa, Zend_Controller_Request_Abstract $request)
	{
		// recuperando informacoes do request
		$nomeModuloRequest     = strtoupper($request->getModuleName());
		$nomeControllerRequest = $request->getControllerName();
		$nomeAcaoRequest       = $request->getActionName();
		$booleanTrueDB         = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// montando a query que vai retornar o id de pessoa perfil do usuario vinculado ao request
		$querySQLRetornaIdMaiorPerfilAcaoAplicacao = "SELECT pp.id
													  FROM perfil p
													  INNER JOIN pessoas_perfis pp ON (p.id = pp.id_perfil)
													  INNER JOIN acoes_aplicacao_perfis aap ON (p.id = aap.id_perfil)
													  INNER JOIN acao_aplicacao aa ON (aap.id_acao_aplicacao = aa.id)
													  INNER JOIN modulo m ON (aa.id_modulo = m.id)
													  WHERE pp.id_pessoa = {$idPessoa}
													  AND m.nome = '{$nomeModuloRequest}'
													  AND aa.controller = '{$nomeControllerRequest}'
													  AND aa.action = '{$nomeAcaoRequest}'
													  AND p.ativo = {$booleanTrueDB}
													  ORDER BY p.nivel DESC";

		// recuperando array com o resultado da query
		$arrayResultados = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($querySQLRetornaIdMaiorPerfilAcaoAplicacao);

		// verificando o resultado da recuperacao
		if (count($arrayResultados) > 0)
			// retornando o primeiro elemento do array
			return $arrayResultados[0]['id'];

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
		$nomePerfilPublico = Basico_OPController_PerfilOPController::getInstance()->retornaNomePerfilUsuarioPublico();

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
}