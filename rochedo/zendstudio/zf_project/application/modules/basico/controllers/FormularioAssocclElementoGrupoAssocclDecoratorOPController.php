<?php
/**
 * Controlador Decorators dos grupos de elementos de formularios.
 * 
 * Responsavel pelos GrupoFormularioElemento do sistema
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedproject.com)
 * 
 * @uses Basico_Model_GrupoFormularioElemento
 * 
 * @since 01/10/2012
 * 
 */
class Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController
	 * @var Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo GrupoFormularioElemento.
	 * @var Basico_Model_FormularioAssocclElementoGrupo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_formulario_assoccl_elemento.grupo
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_assoccl_elemento_grupo.assoccl_decorator';

	/**
	 * Nome do campo id da tabela basico_form_assoccl_elemento.grupo
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController
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
	 * @since 01/10/2012
	 */
	protected function _initControllers()
	{
		return;
	}
	
	/**
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController.
	 * 
	 * @return Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclElementoGrupoAssocclDecoratorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna os dados dos decorators do grupo pelo o id do grupo
	 * 
	 * @param Int $idGrupo
	 * 
	 * @return null|array
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 01/10/2012
	 */
	public function retornaArrayDadosFormularioAssocclElementoGrupoAssocclDecoratorPorIdGrupo($idGrupo)
	{
		// retornando array com dados do objeto pelo id
		return $this->_retornaArrayDadosObjetosPorParametros("id_grupo = {$idGrupo}", null, null, null, array('idGrupo', 'idDecorator', 'ordem'));
	}
}