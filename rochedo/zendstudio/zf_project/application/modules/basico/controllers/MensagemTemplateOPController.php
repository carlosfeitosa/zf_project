<?php
/**
 * Controlador MensagemTemplate
 * 
 * Controlador responsavel pelas mensagems do sistema.
 * 
 * @author João Vasconcelos
 * 
 * @uses Basico_Model_MensagemTemplate
 * 
 * @since 21/03/2011
 */
class Basico_OPController_MensagemTemplateOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_MensagemTempĺateOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_Mensagem
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_mensagem.template
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_mensagem.template';
	/**
	 * Nome do campo id da tabela basico_mensagem.template
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Mensagem
	 * 
	 * @return Basico_Model_Mensagem
	 */
	public function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_Model_Mensagem
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
	 * Retorna o objeto da Classe MensagemTemplateController
	 * 
	 * @return Basico_OPController_MensagemTemplateOPController
	 */
	public static function getInstance() {
		// checando o singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemTemplateOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o id da template buscando pelo nome e categoria passados
	 * 
	 * @param String $nomeTemplate
	 */
	public function retornaIdMensagemTemplatePorNomeTemplateIdCategoria($nomeTemplate, $idCategoria)
	{
		// recuperando a template
		$template = $this->_retornaObjetosPorParametros("nome = '{$nomeTemplate}' AND id_categoria = {$idCategoria}");
		
		if (is_object($template)) {
			return $template->id;
		}
		
		return null;
	}
	
	/**
	 * Retorna um array contendo as constantes textuais da template do id passado
	 * 
	 * @param Int $idMensagemTemplate
	 * 
	 * @return Array|null
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * 
	 * @since 10/05/2012
	 */
	public function retornaArrayConstantesTextuaisMensagemTemplatePorId($idMensagemTemplate)
	{
		// recuperando a template
		$template = $this->_retornaObjetosPorParametros("id = '{$idMensagemTemplate}'");
		
		// se o objeto for retornado
		if (is_object($template)) {
			// carregando constantes textuais no array resultado
			$arrayResultado['constanteTextualAssunto']  = $template->constanteTextualAssunto;
			$arrayResultado['constanteTextualMensagem'] = $template->constanteTextualMensagem;
			
			return $arrayResultado;
		}
		
		return null;
	}
}
