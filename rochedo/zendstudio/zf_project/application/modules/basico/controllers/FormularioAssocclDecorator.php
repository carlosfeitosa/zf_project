<?php
/**
 * Controlador FormularioAssocclDecorator.
 * 
 * Responsavel pela associação entre formulario e formularioDecorator
 *
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * 
 * @uses Basico_Model_FormularioAsssocclDecorator
 * 
 * @since 05/07/2012
 * 
 */
class Basico_OPController_FormularioAssocclDecorator extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioAssocclDecorator
	 * @var Basico_OPController_FormularioAssocclDecorator
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo formulario associado com formulario decorator.
	 * @var Basico_Model_FormularioAsssocclDecorator
	 */
	protected $_model;
	
	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_formulario.assoccl_decorator';

	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Controlador de associações entre grupos de decorators, decorators e grupos
	 * 
	 * @var Basico_OPController_FormularioDecoratorGrupoAssocagGrupo object
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected $_formularioDecoratorGrupoAssocagGrupoOPController;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioAssocclDecorator.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioAssocclDecorator
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
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	protected function _initControllers()
	{
		// inicializando controladores
		$this->_formularioDecoratorGrupoAssocagGrupoOPController  = Basico_OPController_FormularioDecoratorGrupoAssocagGrupo::getInstance();

		return;
	}
	
	/**
	 * Retorna instância do Controlador Basico_OPController_FormularioAssocclDecorator.
	 * 
	 * @return Basico_OPController_FormularioAssocclDecorator
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioAssocclDecorator();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um array contendo os ids dos decorators associados a um formulário
	 * 
	 * @param Array $arrayIdsFormularios - array contendo os ids dos formulários que deseja recuperar os decorators
	 * 
	 * @return Array|false - array contendo os ids dos decorators associados ao id do formulario ou false se não encontrar associações
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	public function retornaArrayIdsDecoratorsPorArrayIdsFormularios(array $arrayIdsFormularios)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o id do formulário
		if (!count($arrayIdsFormularios)) {
			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsFormularios = implode(',', $arrayIdsFormularios);

		// recuperando os ids dos decorators associados ao formulário
		$arrayIdsAssociados = $this->_retornaArrayDadosObjetosPorParametros("id_formulario in ({$stringIdsFormularios})", 'ordem', null, null, array('idDecorator', 'idDecoratorGrupo'));

		// limpando memória
		unset($stringIdsFormularios);

		// verificando o resultado da recuperação
		if (!count($arrayIdsAssociados)) {
			// retornando falso
			return false;
		}

		// loop para montar o array de resposta
		foreach ($arrayIdsAssociados as $arrayValores) {
			// verificando se trata-se de um decorator ou grupo de decorator
			if (null !== $arrayValores['idDecorator']) { // decorator
				// adicionando elemento ao array de retorno
				$arrayRetorno[] = $arrayValores['idDecorator'];
			} else { // grupo de decorators
				// adicionando ids dos decorators do grupo no array de retorno
				$arrayRetorno = array_merge($arrayRetorno, $this->_formularioDecoratorGrupoAssocagGrupoOPController->retornaArrayIdsDecoratorsPorIdGrupoDecorator($arrayValores['idDecoratorGrupo']));
			}

			// limpando memória
			unset($arrayValores);
		}

		// limpando memória
		unset($arrayIdsAssociados);

		// retornando array de ids
		return $arrayRetorno;
	}

	/**
	 * Retorna um array contendo os ids dos decorators associados a um formulário que devem ser removidos
	 * 
	 * @param Array $arrayIdsFormularios - array contendo os ids dos formulários que deseja recuperar os decorators para remoção
	 * 
	 * @return Array|false - array contendo os ids dos decorators associados ao id do formulario para remoção ou false se não encontrar associações
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 09/07/2012
	 */
	public function retornaArrayIdsDecoratorsExcludePorArrayIdsFormulario(array $arrayIdsFormularios)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o id do formulário
		if (!count($arrayIdsFormularios)) {
			// retornando falso
			return false;
		}

		// transformando o array em string
		$stringIdsFormularios = implode(',', $arrayIdsFormularios);

		// recuperando os ids dos decorators associados ao formulário
		$arrayIdsAssociados = $this->_retornaArrayDadosObjetosPorParametros("id_formulario in ({$stringIdsFormularios}) AND exclude = " . Basico_OPController_DBUtilOPController::retornaBooleanDB(true, true), 'ordem', null, null, array('idDecorator', 'idDecoratorGrupo'));

		// limpando memória
		unset($stringIdsFormularios);

		// verificando o resultado da recuperação
		if (!count($arrayIdsAssociados)) {
			// retornando falso
			return false;
		}

		// loop para montar o array de resposta
		foreach ($arrayIdsAssociados as $arrayValores) {
			// verificando se trata-se de um decorator ou grupo de decorator
			if (null !== $arrayValores['idDecorator']) { // decorator
				// adicionando elemento ao array de retorno
				$arrayRetorno[] = $arrayValores['idDecorator'];
			} else { // grupo de decorators
				// adicionando ids dos decorators do grupo no array de retorno
				$arrayRetorno = array_merge($arrayRetorno, $this->_formularioDecoratorGrupoAssocagGrupoOPController->retornaArrayIdsDecoratorsPorIdGrupoDecorator($arrayValores['idDecoratorGrupo']));
			}

			// limpando memória
			unset($arrayValores);
		}

		// limpando memória
		unset($arrayIdsAssociados);

		// retornando array de ids
		return $arrayRetorno;
	}
}