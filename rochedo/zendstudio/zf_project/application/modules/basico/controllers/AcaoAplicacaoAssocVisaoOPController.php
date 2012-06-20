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

class Basico_OPController_AcaoAplicacaoAssocVisaoOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_AcaoAplicacaoAssocVisaoOPController
	 */
	protected static $_singleton;

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

	/**
	 * Retorna um array contendo os meta dados de uma visão
	 * 
	 * @param String $nomeModulo - nome do módulo
	 * @param String $nomeControlador - nome do controlador
	 * 
	 * @return Array|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	public function retornaArrayMetaDadosVisaoPorNomeModuloNomeControlador($nomeModulo, $nomeControlador)
	{
		// inicializando variáveis
		$arrayIdsAcaoAplicacao = array();
		$arrayResultado = array();

		// recuperando o id da ação aplicação
		$arrayIdsConstantesTextuaisAcaoAplicacao = Basico_OPController_AcaoAplicacaoOPController::getInstance()->retornaArrayIdConstantesTextuaisAcaoAplicacaoPorNomeModuloNomeControladorNomeAction($nomeModulo, $nomeControlador);

		// verificando o resultado da recuperação
		if (!count($arrayIdsConstantesTextuaisAcaoAplicacao)) {
			// retornando nulo
			return null;
		}

		// loop para recuperar os ids de ação aplicacao
		foreach ($arrayIdsConstantesTextuaisAcaoAplicacao as $chave => $arrayValor) {
			// recuperando o id de ação aplicação
			$arrayIdsAcaoAplicacao[] = $arrayValor['id'];

			// transformando a chave id em idAcaoAplicacao
			$arrayIdsConstantesTextuaisAcaoAplicacao[$chave]['idAcaoAplicacao'] = $arrayValor['id'];
			unset($arrayIdsConstantesTextuaisAcaoAplicacao[$chave]['id']); 

			// limpando memória
			unset($chave, $arrayValor);
		}

		// montando string com os ids
		$stringIdsAcaoAplicacao = implode(',', $arrayIdsAcaoAplicacao);

		// recupernado metadados da visão
		$arrayIdsConstantesTextuaisVisao = $this->_retornaArrayDadosObjetosPorParametros("id_acao_aplicacao in ($stringIdsAcaoAplicacao)", null, null, null, array('constanteTextual', 'constanteTextualDescricao', 'idAcaoAplicacao'));

		// juntando os arrays
		$arrayResultadoMerge = array_merge($arrayIdsConstantesTextuaisAcaoAplicacao, $arrayIdsConstantesTextuaisVisao);

		// limpando memória
		unset($arrayIdsAcaoAplicacao, $arrayIdsConstantesTextuaisAcaoAplicacao, $arrayIdsConstantesTextuaisVisao);

		// loop para traduzir as constantes textuais de cada resultado
		foreach ($arrayResultadoMerge as $chave => $arrayValor) {
			// verificando se existe action no array
			if (array_key_exists('action', $arrayValor)) {
				// recuperando a chave do array
				$chaveArrayResultado = $arrayValor['action'];
				// atribuindo valor id da acao em array para busca
				$arrayIdsAcoes[$arrayValor['action']] = $arrayValor['idAcaoAplicacao'];

				// montando array de resultados de tradução
				$arrayAcaoTraducao[$chaveArrayResultado] = array('constanteTextualAcaoAplicacao' => Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayValor['constanteTextual']), 'constanteTextualDescricaoAcaoAplicacao' => Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayValor['constanteTextualDescricao']));
			} else {
				// recuperando a chave do array
				$chaveArrayResultado = array_search($arrayValor['idAcaoAplicacao'], $arrayIdsAcoes);

				// montando array de resultados de tradução
				$arrayAcaoTraducao[$chaveArrayResultado] = array('constanteTextualVisao' => Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayValor['constanteTextual']), 'constanteTextualDescricaoVisao' => Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($arrayValor['constanteTextualDescricao']));
			}

			// verificando se já existe um elemento na chave
			if (array_key_exists($chaveArrayResultado, $arrayResultado)) {
				// adicionando valor no array
				$arrayResultado[$chaveArrayResultado] = array_merge($arrayAcaoTraducao[$chaveArrayResultado], $arrayResultado[$chaveArrayResultado]);
			} else {
				// setando valor no array
				$arrayResultado[$chaveArrayResultado] = $arrayAcaoTraducao[$chaveArrayResultado];
			}

			// limpando memória
			unset($chave, $arrayValor, $chaveArrayResultado, $arrayAcaoTraducao);
		}

		// limpando memória
		unset($arrayAcaoTraducao);

		// retornando resultado
		return $arrayResultado;
	}
}