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
	 * Recupera a instancia do controlador Basico_OPController_ControleAcessoOPController
	 * 
	 * @return Basico_OPController_AcaoAplicacaoOPController
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
		$objsAcaoAplicacao = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaTodosObjetosAcaoAplicacao();

		// verificando se as acoes foram carregadas
		if (count($objsAcaoAplicacao) > 0) {
			// loop para carregar os "resources" do Zend_Acl
			foreach ($objsAcaoAplicacao as $objAcaoAplicacao) {
				// verificando se a acao esta ativa
				if ($objAcaoAplicacao->ativo)
					// carregando os resources
					$acl->addResource(new Zend_Acl_Resource($this->retornaNomeAcaoAplicacaoCompleta($objAcaoAplicacao->getModuloObject()->nome, $objAcaoAplicacao->controller, $objAcaoAplicacao->action)));
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
	 * Verifica se um request esta associado ao perfil USUARIO_PUBLICO
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * @return Boolean
	 */
	public function verificaRequestPublico(Zend_Controller_Request_Abstract $request)
	{
		// codificando o nome do acao completa
		$nomeAcaoAplicacaoCompleta = $this->retornaNomeAcaoAplicacaoCompleta($request->getModuleName(), $request->getControllerName(), $request->getActionName());
		$nomePerfilPublico = Basico_OPController_PerfilOPController::getInstance()->retornaNomePerfilUsuarioPublico();

		// retornando o resultado da verificacao
		return $this->verificaAssociacaoAcaoAplicacaoPerfil($nomePerfilPublico, $nomeAcaoAplicacaoCompleta);
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