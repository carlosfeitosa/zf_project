<?php
/**
 * Controlador Acao Aplicacao
 * 
 * Controlador responsavel pelas acoes da aplicacao
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
 * 
 * @since 10/04/2012
 */

class Basico_OPController_AcaoAplicacaoAssocVisaoOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_AcaoAplicacaoAssocVisao object
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_acao_aplicacao.assoc_visao
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_acao_aplicacao.assoc_visao';
	
	/**
	 * Nome do campo id da tabela basico_acao_aplicacao.assoc_visao
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * Construtor do Controlador Acao Aplicacao Assoc Visao
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_AcaoAplicacaoOPController
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
	 * Recupera a instancia do controlador Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 * 
	 * @return Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_AcaoAplicacaoAssocVisaoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o objeto visao relacionado a acao aplicacao passada
	 * 
	 * @param Int $idAcaoAplicacao
	 * 
	 * @return  Int
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012
	 */
	public function retornaObjetoAcaoAplicacaoAssocVisaoPorIdAcaoAplicacao($idAcaoAplicacao)
	{
		// recuperando visao
		$visao = $this->_retornaObjetosPorParametros("id_acao_aplicacao = {$idAcaoAplicacao}");
				
		// verificando se visao foi recuperada
		if (is_object($visao))
			// retornando visao
			return $visao;

			
		return false;
			
	}

	/**
	 * Retorna todas as acoes da aplicacao assoc visao
	 * 
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012 
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisao()
	{
		// retornando todas as acoes da aplicacao
		return $this->retornaTodosObjetos($this->_model);
	}

	/**
	 * Retorna todos as acoes aplicacao assoc visao ativas
	 *
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012 
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisaoAtivos()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true, true);

		// retornando todas as acoes aplicacao ativas
		return $this->_retornaObjetosPorParametros("ativo = {$ativo}");
	}

	/**
	 * Retorna todas as acoes aplicacao assoc visao desativadas
	 * 
	 * @return Array|null
	 * 
	 * @package Basico
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.om)
	 * 
	 * @since 10/04/2012
	 */
	public function retornaTodosObjetosAcaoAplicacaoAssocVisaoDesativados()
	{
		// inicializando variaveis
		$ativo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(false, true);
		
		// retornando todas as acoes aplicacao desativadas
		return $this->_retornaObjetosPorParametros("ativo = {$ativo}");
	}
}