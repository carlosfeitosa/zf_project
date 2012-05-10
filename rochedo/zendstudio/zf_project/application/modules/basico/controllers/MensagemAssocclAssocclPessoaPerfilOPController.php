<?php
/**
 * Controlador PessoasPerfisMensagensCategorias
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_PessoasPerfisMensagensCategorias
 * 
 * @since 22/03/2011
 * 
 */
class Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador MensagemAssocclAssocclPessoaPerfil.
	 * @var Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Basico_Model_MensagemAssocclAssocclPessoaPerfil.
	 * 
	 * @var Basico_Model_MensagemAssocclAssocclPessoaPerfil
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_mensagem.assoccl_assoccl_pessoa_perfil
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_mensagem.assoccl_assoccl_pessoa_perfil';
	/**
	 * Nome do campo id da tabela basico_mensagem.assoccl_assoccl_pessoa_perfil
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do controlador Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 * 
	 * @return Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 04/05/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Retorna instância do controlador Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 * 
	 * @return Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
}