<?php
/**
 * Controlador Categoria
 * 
 * Responsável pelas categorias do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Categoriadafo
 * 
 * @since 21/03/2011
 */

class Basico_OPController_CategoriaOPController extends Basico_AbstractOPController_RochedoPersistentOPController
{
	/**
	 * Instância do controlador Basico_OPController_CategoriaOPController.
	 * @var Basico_OPController_CategoriaOPController
	 */
	private static $_singleton;
	/**
	 * Instância do modelo Basico_Model_Categoria
	 * @var Basico_Model_Categoria
	 */
	protected $_model;

	/**
	 * @var Basico_OPController_TipoCategoriaOPController
	 */
	private $_tipoCategoriaOPController;

	/**
	 * Nome da tabela categoria
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.categoria';

	/**
	 * Nome do campo id da tabela categoria
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';

	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	public $idCategoriaCVC;
	
	/**
	 * Construtor do Controlador Categoria
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_CategoriaOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();

		// recuperando objeto categoria cvc
		$this->idCategoriaCVC = $this->retornaIdCategoriaCVC();

		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _initControllers()
	{
		// instanciando os controladores utilizados pelo controlador
		$this->_tipoCategoriaOPController = Basico_OPController_TipoCategoriaOPController::getInstance();

		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_CategoriaOPController
	 * 
	 * @return Basico_OPController_CategoriaOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == null){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CategoriaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro ou NULL se
	 * ela não existir no banco.
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * 
	 * @return Basico_Model_Categoria or null
	 */
	public function retornaObjetoCategoriaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null)
	{
		// checando o tipo de categoria e condicionando query
		if ((isset($idTipoCategoria)) and ($idTipoCategoria >= 1))
			$condicaoSQL = "nome = '{$nomeCategoria}' and id_tipo_categoria = {$idTipoCategoria}";
		else
			$condicaoSQL = "nome = '{$nomeCategoria}'";

		// checando a categoria pai e condicionando query
		if ((isset($idCategoriaPai)) and ($idCategoriaPai >= 1))
			$condicaoSQL .= " and id_categoria_pai = {$idCategoriaPai}";

		// recuperando objeto categoria
		$objCategoria = $this->_retornaObjetosPorParametros($condicaoSQL, null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria[0]))
			// retornando o objeto
    	    return $objCategoria[0];
    	return null;
	}
	
    /**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro se esta estiver ATIVA
	 * ou NULL se ela não existir no banco.
	 * Permite a indicacao do tipo de categoria
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $tipoCategoria
	 * @param $idCategoriaPai
	 * 
	 * @return Basico_Model_Categoria|null
	 */
	public function retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null)
	{
		// checando o tipo de categoria e condicionando query
		if ((isset($idTipoCategoria)) and ($idTipoCategoria >= 1)) {
			$condicaoSQL = "nome = '{$nomeCategoria}' and id_tipo_categoria = {$idTipoCategoria}";
		} else {
			$condicaoSQL = "nome = '{$nomeCategoria}'";
		}

		// checando a categoria pai e condicionando query
		if ((isset($idCategoriaPai)) and ($idCategoriaPai >= 1))
			$condicaoSQL .= " and id_categoria_pai = {$idCategoriaPai}";

		// verificando se trata-se da categoria CVC
		if ($nomeCategoria === CATEGORIA_CVC) {
			// dando bypass nos metodos de checksum
			$objetoCategoria = $this->_model->getMapper()->fetchList($condicaoSQL, null, 1, 0);
			// verificando o resultado
			if (is_array($objetoCategoria)) {
				// transformando o resultado da recuperação
				$objetoCategoria = $objetoCategoria[0];
			}
		} else {
			// recuperando objeto categoria
			$objetoCategoria = $this->_retornaObjetosPorParametros($condicaoSQL, null, 1, 0);
		}

		// verificando se a categoria esta ativa
		if ((is_object($objetoCategoria)) and (1 == $objetoCategoria->ativo)) {
			// retornando objeto
		   return $objetoCategoria;
		} else if ((null === $objetoCategoria) or ((is_array($objetoCategoria)) and (!count($objetoCategoria)))) {
			return null;
		}

	    throw new Exception(MSG_ERRO_CATEGORIA_NAO_ATIVA);
	}

	/**
	 * Retorna o id da categoria ativa informada por parametro.
	 * Eh possivel indicar o tipo categoria setando o parametro $idTipoCategoria com o id do tipo categoria.
	 * Eh possivel indicar a categoria pai setando o parametro $idCategoriaPai com o id da categoria pai.
	 * Permite a criacao da categoria caso o parametro $forceCreation seja setado como true.
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null, $forceCreation = false)
	{
		// recuperando a categoria
		$objCategoria = Basico_OPController_CategoriaOPController::getInstance()->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria, $idCategoriaPai);

		// verificando o resultado da recuperacao
		if (isset($objCategoria)) {
			// retornando o id da categoria
			return $objCategoria->id;
		} else if ($forceCreation) {
			// retornando o id da categoria que sera criada
			return Basico_OPController_CategoriaOPController::getInstance()->criarCategoriaInexistente($nomeCategoria, $idTipoCategoria, $idCategoriaPai)->id;
		}
		// estourando excessao de categoria nao encontrada
		throw new Exception(MSG_ERRO_CATEGORIA_NAO_ENCONTRADA . $nomeCategoria);
	}

	/**
	 * Retorna o id da categoria ativa informada por parametro, via SQL
	 * Eh possivel indicar o tipo categoria setando o parametro $idTipoCategoria com o id do tipo categoria.
	 * Eh possivel indicar a categoria pai setando o parametro $idCategoriaPai com o id da categoria pai.
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null)
	{
		// recuperando/setando informacoes sobre a a tabela categoria
		$arrayCampoIdCategoriaAtiva = array(self::nomeCampoIdModelo);
		$booleanDB                  = Basico_OPController_DBUtilOPController::retornaBooleanDB(true, true);
		$condicaoSQL                = "nome = '{$nomeCategoria}' AND ativo = {$booleanDB}";

		// verificando se foi passado o id do tipo categoria
		if ($idTipoCategoria) {
			// mudando o a condicao SQL
			$condicaoSQL .= " AND id_tipo_categoria = {$idTipoCategoria}";
		}

		// verificando se foi passado o id da categoria pai
		if ($idCategoriaPai) {
			// mudando a condicao SQL
			$condicaoSQL .= " AND id_categoria_pai = {$idCategoriaPai}";
		}
		
		// recuperando array com o resultado
		$arrayIdCategoriaAtiva = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayCampoIdCategoriaAtiva, $condicaoSQL);

		// verificando se o id foi recuperado com sucesso
		if (count($arrayIdCategoriaAtiva)) {
			// retornando o id da categoria ativa
			return (int) $arrayIdCategoriaAtiva[0][self::nomeCampoIdModelo];
		}

		return null;
	}

	/**
	 * Retorna o id da categoria informada por parametro.
	 * Eh possivel indicar o tipo categoria setando o parametro $idTipoCategoria com o id do tipo categoria.
	 * Eh possivel indicar a categoria pai setando o parametro $idCategoriaPai com o id da categoria pai.
	 * Permite a criacao da categoria caso o parametro $forceCreation seja setado como true.
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null, $forceCreation = false)
	{
		// recuperando a categoria
		$objCategoria = $this->retornaObjetoCategoriaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria);

		// verificando o resultado da recuperacao
		if (isset($objCategoria)) {
			// retornando o id da categoria
			return $objCategoria->id;
		} else if ($forceCreation) {
			// retornando o id da categoria que sera criada
			return $this->criarCategoriaInexistente($nomeCategoria, $idTipoCategoria, $idCategoriaPai)->id;
		}
		// estourando excessao de categoria nao encontrada
		throw new Exception(MSG_ERRO_CATEGORIA_NAO_ENCONTRADA . $nomeCategoria);
	}

	/**
	 * Retorna o id da categoria de log passada por parametro.
	 * Caso a categoria nao exista e o parametro $forceCreation for setado para true, o sistema cria a categoria e retorna seu id.
	 * 
	 * @deprecated Para maior performance, utilize retornaIdCategoriaLogPorNomeCategoriaViaSQL()
	 * 
	 * @param String $nomeCategoria
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogPorNomeCategoria($nomeCategoria, $forceCreation = false)
	{
		// recuperando o objeto categoria log
		$objCategoriaLog = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(LOG);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLog)) {
			// retornando o id da categoria de log passada pelo parametro
			return $this->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai($nomeCategoria, $objCategoriaLog->tipoCategoria, $objCategoriaLog->id, $forceCreation);
		}
	}

	/**
	 * Retorna o id da categoria de log passada por parametro, via SQL
	 * Caso a categoria nao exista e o parametro $forceCreation for setado para true, o sistema cria a categoria e retorna seu id.
	 * 
	 * @param String $nomeCategoria
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogPorNomeCategoriaViaSQL($nomeCategoria, $forceCreation = false)
	{
		// recuperando o id da categoria log
		$idCategoriaPaiLog = self::retornaIdCategoriaLogViaSQL();
		// recuperando o id do tipo categoria sistema
		$idTipoCategoriaSistema = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaSistemaViaSQL();

		// verificando o id foi recuperado
		if ($idCategoriaPaiLog) {
			// recuperando o id da categoria
			$idCategoriaLog = self::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL($nomeCategoria, $idTipoCategoriaSistema, $idCategoriaPaiLog);

			// verificando se o id da categoria de log ativa foi recuperada
			if ($idCategoriaLog) {
				// retornando o id da categoria de log
				return $idCategoriaLog;
			} else if ($forceCreation) {
				// criando e retornando o id da categoria de log
				return Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai($nomeCategoria, $idTipoCategoriaSistema, $idCategoriaPaiLog, $forceCreation);
			}
		}
	}

	/**
	 * Cria uma categoria inexistente no sistema
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function criarCategoriaInexistente($nomeCategoria, $idTipoCategoria, $idCategoriaPai = null)
	{
		// verificando se foi passado o id do tipo categoria, para criacao de categoria
		if ($idTipoCategoria) {
			// recuperando um novo modelo de categoria
			$novaCategoria = $this->_retornaNovoObjetoModelo();

			// verificando a categoria pai
			if ($idCategoriaPai) {
				// setando a categoria pai
				$novaCategoria->idCategoriaPai = $idCategoriaPai;

				// recuperando array contendo o nivel da categoria pai
				$arrayAtributoNivelCategoriaPai = $this->_retornaArrayDadosObjetoPorId($idCategoriaPai, array('nivel'));

				// setando o nivel da categoria filha
				$novaCategoria->nivel = (int) $arrayAtributoNivelCategoriaPai['nivel'] + 1;
			}
			// setando a categoria
			$novaCategoria->idTipoCategoria = $idTipoCategoria;
			$novaCategoria->ativo           = true;
			$novaCategoria->nome            = $nomeCategoria;

			// salvando o objeto
			parent::_salvarObjeto($novaCategoria, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(LOG_NOVA_CATEGORIA), LOG_MSG_NOVA_CATEGORIA);

			// retornando o id da categoria recem criada
			return $novaCategoria;

		} else {
			// estourando excessao de impossibilidade de criacao de categoria
			throw new Exception(MSG_ERRO_CATEGORIA_NAO_PODE_SER_CRIADA_SEM_TIPO_CATEGORIA . $nomeCategoria);
		}
	}

	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($constanteLinguagem);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLinguagem))
			// retornando o objeto
			return $objCategoriaLinguagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}

	/**
	 * Retorna o id da categoria da linguagem
	 *
	 * @param String $constanteLinguagem
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = $this->retornaObjetoCategoriaLinguagem($constanteLinguagem);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLinguagem))
			// retornando o id objeto
			return (Int) $objCategoriaLinguagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}

	/**
	 * Retorna o objeto carregado com a categoria CVC
	 * 
	 * @return Basico_Model_Categoria $categoriaCVC
	 */
	public function retornaObjetoCategoriaCVC()
	{
		// recuperando o objeto categoria
		$objCategoriaCVC = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(CATEGORIA_CVC, $this->_tipoCategoriaOPController->idTipoCategoriaCVC);
		
		// checando se objeto foi recuperado
		if (isset($objCategoriaCVC))
			// retornando objeto
			return $objCategoriaCVC;

		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}

	/*
	 * Retorna o id da categoria CVC
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaCVC()
	{
		// recuperando objeto categoria
		$objCategoriaCVC = $this->retornaObjetoCategoriaCVC();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaCVC)) {
			// recuperando o valor do id da categoria cvc
			$idCategoriaCVC = (Int) $objCategoriaCVC->id;

			// limpando memória
			unset($objCategoriaCVC);

			// retornando o id do objeto
			return $idCategoriaCVC;
		}

		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}

	/**
	 * Retorna um array de objetos Basico_Model_Categoria contendo as linguas ativas no sistema
	 * 
	 * @return null|Array
	 */
	public function retornaCategoriasLinguasAtivas()
	{	
		// recuperando o id do tipo categoria LINGUAGEM
		$idTipoCategoriaLinguagem = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaLinguagem();
		
		// recuperando booleano especifico para o banco de dados em uso
		$booleanAtivo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true);
		
		if (is_bool($booleanAtivo))
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = true";
		else
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = 1";

		// recuperando categorias de liguas ativas
		$objsCategoriasLinguasAtivas = $this->_retornaObjetosPorParametros($condicao);
		
		// retornando o array de objetos contendo as categorias de linguas ativas
		return $objsCategoriasLinguasAtivas;
	}

	/**
	 * Retorna array contendo os nomes das categorias que nao estao implementadas no ZendFramework
	 * do formulario passado por parametro (objeto)
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayNomesCategoriasComponentesNaoZFPorIdFormularioViaSQL($idFormulario)
	{
		// inicializando variaveis
		$arrayRetorno = array();

		// verificando se o id passado eh valido
		if ((int) $idFormulario <= 0)
			return null;

		// query para retornar os nomes das categorias dos componentes nao ZF
		$queryNomesCategoriasComponentesNaoZFFormulario = "SELECT DISTINCT ccomp.nome

														   FROM basico_formulario.formulario_formulario_elemento ffe
														   LEFT JOIN basico.formulario f ON (ffe.id_formulario = f.id)
														   LEFT JOIN basico_formulario.formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
														   LEFT JOIN basico.componente comp ON (fe.id_componente = comp.id)
														   LEFT JOIN basico.categoria ccomp ON (comp.id_categoria = ccomp.id)
															
														   WHERE ccomp.nome NOT IN ('COMPONENTE_DOJO', 'COMPONENTE_ZF')
														   AND f.id = {$idFormulario}";

		// recuperando resultado da query
		$arrayRetornoQuery = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryNomesCategoriasComponentesNaoZFFormulario);

		// verificando o resultado da consulta
		if (count($arrayRetornoQuery) <= 0)
			return null;

		// loop para preencher o array de resultados
		foreach ($arrayRetornoQuery as $arrayLinhaQuery)
			$arrayRetorno[] = $arrayLinhaQuery['nome'];

		// retornando resultado
		return $arrayRetorno;
	}

	/**
	 * Retorna o nome da categoria de log referente uma acao de controlador de acoes
	 * 
	 * @param String $nomeAcaoControlador
	 * @param String $nomeAcao
	 * 
	 * @return String
	 */
	
	public static function retornaNomeCategoriaLogAcaoControlador($nomeControlador, $nomeAcao)
	{
		// retornando o nome da categoria de log
		return "LOG_CALL_" . strtoupper($nomeControlador) . "_" . strtoupper($nomeAcao) . "_ACTION";
	}

	/**
	 * Retorna o id e uma categoria de log de acao de controlador a partir do nome da caegoria de log.
	 * Permite a criacao da categoria caso nao exista
	 * 
	 * @param String $nomeCategoriaLog
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogAcaoControladorPorNomeCategoria($nomeCategoriaLogAcaoControlador, $forceCreation = false)
	{
		// recuperando o objeto categoria atraves do nome da categoria
		$objCategoria = $this->retornaObjetoCategoriaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoriaLogAcaoControlador);

		// verificando se o objeto foi carregado
		if (isset($objCategoria))
			// retornando o id da categoria localizada
			return $objCategoria->id;
		// verificando se foi passado o parametro que forca a criacao de uma nova categoria, caso ela nao exista
		else if ($forceCreation) {
			// recuperando um modelo vazio
			$objCategoria = $this->retornaNovoObjetoModeloPorNomeOPController($this->_retornaNomeClassePorObjeto($this));

			// carregando informacoes sobre a categoria
			$objCategoria->tipoCategoria = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaSistema();
			$objCategoria->categoria     = $this->retornaIdCategoriaLog();
			$objCategoria->nivel         = 2;
			$objCategoria->ativo         = true;
			$objCategoria->nome          = $nomeCategoriaLogAcaoControlador;
			$objCategoria->descricao     = DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR;

			// salvando o objeto categoria
			parent::_salvarObjeto($objCategoria, Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai(LOG_NOVA_CATEGORIA), LOG_MSG_NOVA_CATEGORIA);

			// retornando o id da categoria recem criada
			return $this->_model->id;
		}
	}

	/**
	 * Retorna o id e uma categoria de log de acao de controlador a partir do nome da caegoria de log.
	 * Permite a criacao da categoria caso nao exista
	 * 
	 * @param String $nomeCategoriaLog
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdCategoriaLogAcaoControladorPorNomeCategoriaViaSQL($nomeCategoriaLogAcaoControlador, $forceCreation = false)
	{
		// recuperando informacoes sobre a categoria
		$idCategoria = self::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL($nomeCategoriaLogAcaoControlador);

		// verificando se a consulta obteve resultados
		if ((isset($idCategoria)) and ($idCategoria > 0)) {
			// retornando o id da categoria
			return $idCategoria;
		} else if ($forceCreation) {
			// instanciando e preparando o controlador de rowinfo
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();
			$rowinfoOPController->prepareXml(new Basico_Model_Categoria(), true);

			// montando array contendo chaves e valores a serem inseridos
			$arrayCategoria = array();
			$arrayCategoria['id_tipo_categoria'] = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaSistemaViaSQL();
			$arrayCategoria['id_categoria_pai']  = self::retornaIdCategoriaLogViaSQL();
			$arrayCategoria['nivel']             = 2;
			$arrayCategoria['ativo']             = 'true';
			$arrayCategoria['nome']              = Basico_OPController_UtilOPController::retornaStringEntreCaracter($nomeCategoriaLogAcaoControlador, "'");
			$arrayCategoria['rowinfo']           = Basico_OPController_UtilOPController::retornaStringEntreCaracter($rowinfoOPController->getXml(), "'");

			// inserindo o valor no banco de dados
			Basico_OPController_PersistenceOPController::bdInsereDadosViaSQL(self::nomeTabelaModelo, $arrayCategoria);

			// retornando o id da categoria, utilizando recursividade
			return self::retornaIdCategoriaLogAcaoControladorPorNomeCategoriaViaSQL($nomeCategoriaLogAcaoControlador);
		}

		return null;
	}

	/**
	 * Retorna o id e uma categoria a partir do nome da caegoria de log.
	 * 
	 * @param String $nomeCategoriaLog
	 * @param Integer $idTipoCategoria
	 * @param Boolean $apenasCategoriasAtivas
	 * 
	 * @return Integer|null
	 */
	public static function retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL($nomeCategoria, $idTipoCategoria = null, $apenasCategoriasAtivas = false)
	{
		// recuperando informacoes sobre a tabela categoria
		$arrayNomeCampoIdCategoria = array(self::nomeCampoIdModelo);
		$condicaoSQL               = "nome = '{$nomeCategoria}'";

		// verificando se foi passado o id do tipo da categoria
		if ($idTipoCategoria) {
			// adicionando condicao
			$condicaoSQL .= " AND id_tipo_categoria = {$idTipoCategoria}";
		}

		// verificando se deve procurar por categorias ativas, apenas
		if ($apenasCategoriasAtivas) {
			// carregando variaveis
			$booleanDB = Basico_OPController_DBUtilOPController::retornaBooleanDB(true, true);

			// adicionando condicao
			$condicaoSQL .= " AND ativo = {$booleanDB}";	
		}

		// recuperando um array contendo o id da categoria cujo nome foi passado como parametro
		$arrayCategoria = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL(self::nomeTabelaModelo, $arrayNomeCampoIdCategoria, $condicaoSQL);

		// verificando se a consulta obteve resultados
		if ((isset($arrayCategoria)) and (is_array($arrayCategoria)) and (count($arrayCategoria) > 0)) {
			// retornando o id da categoria
			return (int) $arrayCategoria[0][self::nomeCampoIdModelo];
		}

		return null;
	}

	/**
	 * Retorna o id da categoria PERFIL_USUARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaPerfilUsuario()
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaPerfil = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaPerfil();

		// recupernado o objeto categoria PERFIL_USUARIO
		$objCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(CATEGORIA_PERFIL_USUARIO, $idTipoCategoriaPerfil);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria))
			// retornando id
			return $objCategoria->id;
		else
			// estourando excecao
			throw new Exception(MSG_ERRO_CATEGORIA_PERFIL_USUARIO);

		return null;
	}

	/**
	 * Retorna o id da categoria PERFIL_USUARIO, via SQL
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaPerfilUsuarioViaSQL()
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaPerfil = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaPerfilViaSQL();

		// recuperando o id da categoria
		$idCategoriaPerfilUsuario = self::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL(CATEGORIA_PERFIL_USUARIO, $idTipoCategoriaPerfil, true);

		// verificando se o id foi recuperado com sucesso
		if ($idCategoriaPerfilUsuario) {
			// retornando o id da categoria
			return $idCategoriaPerfilUsuario;
		} else
			throw new Exception(MSG_ERRO_CATEGORIA_PERFIL_USUARIO);

		return null;
	}

	/**
	 * Retorna o id da categoria PERFIL_USUARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaPerfilUsuarioSistema()
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaPerfil = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaPerfil();

		// recupernado o objeto categoria PERFIL_USUARIO
		$objCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(CATEGORIA_PERFIL_USUARIO_SISTEMA, $idTipoCategoriaPerfil);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria))
			// retornando id
			return $objCategoria->id;
		else
			// estourando excecao
			throw new Exception(MSG_ERRO_CATEGORIA_PERFIL_USUARIO_SISTEMA);

		return null;
	}

	/**
	 * Retorna o id da categoria PERFIL_USUARIO, via SQL
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaPerfilUsuarioSistemaViaSQL()
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaPerfil = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaPerfilViaSQL();

		// recuperando o id da categoria
		$idCategoriaPerfilUsuarioSistema = self::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL(CATEGORIA_PERFIL_USUARIO_SISTEMA, $idTipoCategoriaPerfil, true);

		// verificando se a categoria foi recuperada com sucesso
		if ($idCategoriaPerfilUsuarioSistema) {
			// retornando o id da categoria
			return $idCategoriaPerfilUsuarioSistema;
		} else 
			throw new Exception(MSG_ERRO_CATEGORIA_PERFIL_USUARIO_SISTEMA);

		return null;
	}

	/**
	 * Retorna o id da categoria do tipo da tabela, atraves da constante que a representa
	 * 
	 * @param String $constanteTipoTabela
	 * 
	 * @return Integer|null
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 27/04/2012
	 */
	public static function retornaIdCategoriaTipoTabela($constanteTipoTabela)
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaDicionarioDados = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaDicionarioDadosViaSQL();

		// recuperando o id da categoria
		$idCategoriaTipoTabela = self::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL($constanteTipoTabela, $idTipoCategoriaDicionarioDados, true);

		// verificando se a categoria foi recuperada com sucesso
		if ($idCategoriaTipoTabela) {
			// retornando o id da categoria
			return $idCategoriaTipoTabela;
		} else 
			throw new Exception(MSG_ERRO_CATEGORIA_TIPO_TABELA);

		return null;
	}

	/**
	 * Retorna o id da categoria LOG
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLog()
	{
		// recuperando objeto categoria
		$objCategoriaLog = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(LOG);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLog))
			// retornando o id objeto
			return (Int) $objCategoriaLog->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG);
	}

	/**
	 * Retorna o id da categoria LOG, via SQL
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogViaSQL()
	{
		// recuperando o id da categoria de LOG
		$idCategoriaLOG = self::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL(LOG);

		// verificando se o id da categoria de log foi recuperado
		if ((isset($idCategoriaLOG)) and ($idCategoriaLOG > 0)) {
			// retornando o id da categoria de log
			return $idCategoriaLOG;
		}

		throw new Exception(MSG_ERRO_CATEGORIA_LOG);
	}
	
	/**
	 * Retorna um array para carregamento de multiOptions com os tipos sanguineos
	 * 
	 * @return Array
	 */
	public function retornaArrayTiposSanguineosOptions()
	{
		// inicializando variaveis
		$arrayTiposSanguineosOptions = array();
		
		// recuperando id da categoria TIPO_SANGUINEO
		$idCategoriaTipoSanguineo = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('TIPO_SANGUINEO');
		
		// recuperando as categorias
		$categoriasTiposSanguineos = Basico_OPController_CategoriaOPController::getInstance()->_retornaObjetosPorParametros("id_categoria_pai = {$idCategoriaTipoSanguineo}");
		
		// adicionado opção Não Desejo Informar
		self::adicionaOpcaoNaoDesejoInformar($arrayTiposSanguineosOptions);
		
		// percorrendo categorias de tipo sanguineo para montar o array de options
		foreach ($categoriasTiposSanguineos as $tipoSanguineo) {
			$arrayTiposSanguineosOptions[$tipoSanguineo->id] = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($tipoSanguineo->constanteTextual);
		}
		
		return $arrayTiposSanguineosOptions;
	}
	
	/**
	 * Retorna um array para carregamento de multiOptions com as raças
	 * 
	 * @return Array
	 */
	public function retornaArrayRacasHumanasOptions()
	{
		// inicializando variaveis
		$arrayRacasOptions = array();
		
		// recuperando id da categoria TIPO_SANGUINEO
		$idCategoriaRaca = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('RACA_HUMANA');
		
		// recuperando as categorias
		$categoriasRacas = Basico_OPController_CategoriaOPController::getInstance()->_retornaObjetosPorParametros("id_categoria_pai = {$idCategoriaRaca}");
		
		// adicionado opção Não Desejo Informar
		self::adicionaOpcaoNaoDesejoInformar($arrayRacasOptions);
		
		// percorrendo categorias de tipo sanguineo para montar o array de options
		foreach ($categoriasRacas as $raca) {
			$arrayRacasOptions[$raca->id] = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($raca->constanteTextual);
		}
		
		return $arrayRacasOptions;
	}
	
	/**
	 * Adiciona a opção Não Desejo Informar no array de opções passado como parametro
	 * 
	 * @param Array $arrayOpcoes
	 * 
	 * @return Array
	 */
	public static function adicionaOpcaoNaoDesejoInformar(&$arrayOpcoes)
	{
		// recuperando categoria Não Desejo Informar
		$categoriaNaoDesejoInformar = Basico_OPController_CategoriaOPController::getInstance()->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai('NAO_DESEJO_INFORMAR');
		
		// adicionando opção Não Desejo Informar
		$arrayOpcoes[$categoriaNaoDesejoInformar->id] = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL($categoriaNaoDesejoInformar->constanteTextual);
		
	}
}