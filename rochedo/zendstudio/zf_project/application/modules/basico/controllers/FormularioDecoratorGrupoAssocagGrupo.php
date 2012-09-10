<?php
/**
 * Controlador FormularioDecoratorGrupoAssocagGrupo.
 * 
 * Responsavel pela associação entre grupo de decorators, decorators e grupos
 *
 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
 * 
 * @uses Basico_Model_FormularioDecoratorGrupoAssocagGrupo
 * 
 * @since 05/07/2012
 * 
 */
class Basico_OPController_FormularioDecoratorGrupoAssocagGrupo extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Basico_OPController_FormularioDecoratorGrupoAssocagGrupo
	 * @var Basico_OPController_FormularioDecoratorGrupoAssocagGrupo
	 */
	protected static $_singleton;
	
	/**
	 * Instância do Modelo formulario associado com formulario decorator.
	 * @var Basico_Model_FormularioDecoratorGrupoAssocagGrupo
	 */
	protected $_model;
	
	/**
	 * Nome da tabela
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_form_decorator_grupo.assocag_grupo';

	/**
	 * Nome do campo id da tabela
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioDecoratorGrupoAssocagGrupo.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioDecoratorGrupoAssocagGrupo
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
		return;
	}
	
	/**
	 * Retorna instância do Controlador Basico_OPController_FormularioDecoratorGrupoAssocagGrupo
	 * 
	 * @return Basico_OPController_FormularioDecoratorGrupoAssocagGrupo
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioDecoratorGrupoAssocagGrupo();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um array contendo os ids dos decorators associados a um grupo de decorators
	 * 
	 * @param Integer $idGrupoDecorator - id do grupo de decorators que deseja recuperar os ids associados
	 * 
	 * @return Array|false - array contendo os ids dos decorators ou false se não encontrar
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/07/2012
	 */
	public function retornaArrayIdsDecoratorsPorIdGrupoDecorator($idGrupoDecorator)
	{
		// inicializando variáveis
		$arrayRetorno = array();

		// verificando se foi passado o id do grupo
		if (!is_int($idGrupoDecorator)) {
			// retornando falso
			return false;
		}

		// recuperando os ids dos decorators associados ao formulário
		$arrayIdsAssociados = $this->_retornaArrayDadosObjetosPorParametros("id_form_decorator_grupo = {$idGrupoDecorator}", 'ordem', null, null, array('idFormularioDecorator', 'idFormularioDecoratorGrupoAssoc'));

		// verificando o resultado da recuperação
		if (!count($arrayIdsAssociados)) {
			// retornando falso
			return false;
		}

		// loop para montar o array de resposta
		foreach ($arrayIdsAssociados as $arrayValores) {
			// verificando se trata-se de um decorator ou grupo de decorator
			if (null !== $arrayValores['idFormularioDecorator']) { // decorator
				// adicionando elemento ao array de retorno
				$arrayRetorno[] = $arrayValores['idFormularioDecorator'];
			} else { // grupo de decorators
				// adicionando ids dos decorators do grupo no array de retorno
				array_merge($arrayRetorno, $this->retornaArrayIdsDecoratorsPorIdGrupoDecorator($arrayValores['idFormularioDecoratorGrupoAssoc']));
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
	 * Retorna os dados dos decorators ordenados por ordem pelo id do grupo passado como parametro
	 * 
	 * @param Int $idGrupo - id do grupo de decorators
	 * 
	 * @return array - array com os dados dos decorators ou array vazio se nao encontrar nenhum decorator
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 22/08/2012
	 */
	public function retornaArrayDadosDecoratorsOrdenadoPorOrdemPorIdGrupo($idGrupo)
	{
		// recuperando dados dos decorators do grupo
		$arrayDadosDecorators = $this->_retornaArrayDadosObjetosPorParametros("id_form_decorator_grupo = {$idGrupo}", 'ordem', null, null, array('idFormularioDecorator', 'idFormDecoratorGrupoAssoc'));
		
		// verificando se foram encontrados filters
		if (count($arrayDadosDecorators)) {
			// retornando filters do grupo pesquisado
			return $arrayDadosDecorators;
		}
		
		// retornando array vazio
		return array();
	}
}