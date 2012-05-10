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
	 * @var Basico_OPController_MensagemOPController
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
	 * Retorna o objeto da Classe MensagemController
	 * 
	 * @return Basico_OPController_MensagemOPController
	 */
	public static function getInstance() {
		// checando o singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MensagemTemplateOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o id da template buscando pelo nome passado
	 * 
	 * @param String $nomeTemplate
	 */
	public function retornaIdMensagemTemplatePorNomeTemplateIdCategoria($nomeTemplate, $idCategoria)
	{
		// recuperando a template
		$template = $this->retornaObjetosPorParametros("nome = '{$nomeTemplate}' AND id_categoria = {$idCategoria}");
		
		if ($template[0]) {
			return $template[0]->id;
		}
		
		return null;
	}
}
