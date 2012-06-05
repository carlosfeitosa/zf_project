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
class Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController extends Basico_AbstractOPController_RochedoPersistentOPController
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
	 * 
	 * @since 04/05/2012
	 */
	protected function _initControllers()
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
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemAssocclAssocclPessoaPerfilOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Insere a associacao de pessoa perfil com a mensagem (relaciona os envolvidos com o mensagem)
	 * 
	 * @param Int $idMensagem - id da mensagem a ser relacionada
	 * @param Int $idCategoria - id da categoria do envolvido (ex: remetente, destinatario)
	 * @param Int $idAssocclPerfil - id do assoccl_perfil da pessoa envolvida
	 * 
	 * @return Boolean
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 10/05/2012
	 */
	public function insereAssociacaoMensagemPessoaPerfil($idMensagem, $idCategoria, $idAssocclPerfil)
	{
		// recuperando um novo modelo de mensagem assoccl assoccl pessoa perfil
		$novoModelo = $this->_retornaNovoObjetoModelo();
		
		// setando atributos no modelo para remetente
		$novoModelo->idMensagem      = $idMensagem;
		$novoModelo->idCategoria     = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
		$novoModelo->idAssocclPerfil = $idAssocclPerfil;

		// salvando objeto
		parent::_salvarObjeto($novoModelo, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL(LOG_NOVA_PESSOAS_PERFIS_MENSAGENS_CATEGORIAS), LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA, null, $idAssocclPerfil);
		
		return true;
	}
}