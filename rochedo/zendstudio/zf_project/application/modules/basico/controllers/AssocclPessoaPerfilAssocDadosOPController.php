<?php
/**
 * Controlador Dados Pessoas Perfis
 * 
 * Controlador responsavel pelos dados biometricos do usuario
 * 
 * @package Basico_Model_DadosPessoasPerfis
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_AssocclPessoaPerfilAssocDadosOPController extends Basico_AbstractController_RochedoPersistentOPController
{
    /**
     * 
     * @var Basico_OPController_AssocclPessoaPerfilAssocDadosOPController
     */
	private static $_singleton;

	/**
	 * @var Basico_Model_AssocclPessoaPerfilAssocDados
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_assoccl_pessoa_perfil.assoc_dados
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_assoccl_pessoa_perfil.assoc_dados';
	
	/**
	 * Nome do campo id da tabela basico_assoccl_pessoa_perfil.assoc_dados
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

    /**
	 * Construtor do Controlador Basico_OPController_AssocclPessoaPerfilAssocDadosOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AssocclPessoaPerfilAssocDadosOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	} 
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}
	
    /**
	 * Retorna a instancia do objeto Basico_OPController_AssocclPessoaPerfilAssocDadosOPController
	 * 
	 * @return Basico_OPController_AssocclPessoaPerfilAssocDadosOPController
	 */
	static public function getInstance() {
		// checando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AssocclPessoaPerfilAssocDadosOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna a assinatura da mensagem do e-mail do sistema
	 * 
	 * @return String
	 */
	public function retornaAssinaturaMensagemEmailSistema()
	{
		// recuperando o id pessoa perfil do sistema
		$idPessoaPerfilSistema = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();
		
		// recuperando o objeto dados pessoas perfis
	    $objDadosPessoasPerfis = $this->_retornaObjetosPorParametros("id_assoccl_pessoa_perfil= {$idPessoaPerfilSistema}", null, 1, 0);
	    
	    // verificando se o objeto foi recuperado
		if (is_object($objDadosPessoasPerfis))
			// retornando a assinatura de e-mail do sistema
    	    return $objDadosPessoasPerfis->assinaturaMensagemEmail;
    	    
    	throw new Exception(MSG_ERRO_ASSINATURA_MENSAGEM_EMAIL_SISTEMA);
	}
}