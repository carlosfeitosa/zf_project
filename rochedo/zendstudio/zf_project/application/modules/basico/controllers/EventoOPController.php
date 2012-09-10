<?php
/**
 * Controlador Evento
 * 
 * Responsável pelas mascaras do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Evento
 * 
 * @since 21/03/2011
 */
class Basico_OPController_EventoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_EventoOPController
	 */
	protected static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Evento
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.evento
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.evento';

	/**
	 * Nome do campo id da tabela basico.evento
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Basico_OPController_EventoOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_EventoOPController
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
	 * @since 09/05/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Retorna a instancia do controlador Mascara.
	 * 
	 * @return Basico_OPController_EventoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_EventoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna um array com os eventos defaults e especializacao (exclude e include) do elemento 
	 * atraves do id do elemento e do id da associacao do elemento com o formulario
	 * 
	 * @param int $idElemento - id do elemento do formulario
	 * @param int $idAssocclElemento - id da associacao entre o elemento e o formulario
	 * 
	 * @return Array
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 05/09/2012
	 */
	public function retornaArrayDadosEventosElemento($idElemento, $idAssocclElemento)
	{
		// recuperando eventos default do elemento
    	$arrayDadosEventos['default'] = Basico_OPController_FormularioElementoAssocclEventoOPController::getInstance()->retornaArrayDadosEventosDefaultOrdenadoPorOrdemPorIdElemento($idElemento);
    	
    	// recuperando os eventos da especializacao do elemento no formulario
    	$arrayDadosEventos['especializacao'] = Basico_OPController_FormularioAssocclElementoAssocclEventoOPController::getInstance()->retornaArrayDadosEventosEspecializacaoOrdenadoPorOrdemPorIdAssocclElemento($idAssocclElemento);

    	// retornando array com os eventos do elemento
    	return $arrayDadosEventos;
    	
	}
	
	/**
	 * Retorna a string do evento pelo id passado como parametro
	 * 
	 * @param Int $idEvento - id do evento que tera os attribs retornados
	 * 
	 * @return String|null - evento
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 06/09/2012
	 */
	public function retornaStringEventoPorIdEvento($idEvento)
	{
		// recuperando o id componente do filter
		$arrayDadosEvento = $this->_retornaArrayDadosObjetoPorId($idEvento, array('evento'));
		
		// verificando se o evento foi encontrado
		if (is_array($arrayDadosEvento)) {
			// retornando o evento
			return $arrayDadosEvento['evento'];
		}
		
		return null;
	}

}