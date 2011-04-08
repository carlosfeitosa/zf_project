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

class Basico_OPController_CategoriaOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 *  
	 * @var Basico_OPController_CategoriaOPController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Categoria
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_CategoriaOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
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
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CategoriaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
	 * Salva o objeto categoria no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Categoria $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Categoria', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_UPDATE_CATEGORIA, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_NOVA_CATEGORIA, true);
	    		$mensagemLog    = LOG_MSG_NOVA_CATEGORIA;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
     /**
	 * Apaga o objeto categoria do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Categoria $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Categoria', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_DELETE_CATEGORIA, true);
	    	$mensagemLog    = LOG_MSG_DELETE_CATEGORIA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro ou NULL se
	 * ela não existir no banco.
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $idTipoCategoria
	 * @param Integer $idCategoriaPai
	 * 
	 * @return Basico_Model_Categoria or NULL
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
		$objCategoria = $this->_model->fetchList($condicaoSQL, null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria[0]))
			// retornando o objeto
    	    return $objCategoria[0];
    	return NULL;
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
	 * @return Basico_Model_Categoria|NULL
	 */
	public function retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null)
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
		$objsCategoria = $this->_model->fetchList($condicaoSQL, null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objsCategoria[0])) {
			// verificando se a categoria esta ativa
			if ($objsCategoria[0]->ativo == 1)
				// retornando objeto
			   return $objsCategoria[0];
			   	
		    throw new Exception(MSG_ERRO_CATEGORIA_NAO_ATIVA);
		    
		} else {
    	    return null;
		}
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
	public function retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria = null, $idCategoriaPai = null, $forceCreation = false)
	{
		// recuperando a categoria
		$objCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $idTipoCategoria, $idCategoriaPai);

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
			return $this->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai($nomeCategoria, $objCategoriaLog->tipoCategoria, $objCategoriaLog->id, $forceCreation);
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
			$novaCategoria = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

			// verificando a categoria pai
			if ($idCategoriaPai) {
				// setando a categoria pai
				$novaCategoria->categoria = $idCategoriaPai;

				// recuperando o objeto categoria pai
				$objetoCategoriaPai = $this->retornaObjetoPorId($this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this)), $idCategoriaPai);

				// setando o nivel da categoria filha
				$novaCategoria->nivel = $objetoCategoriaPai->nivel + 1;
			}
			// setando a categoria
			$novaCategoria->tipoCategoria = $idTipoCategoria;
			$novaCategoria->ativo         = true;
			$novaCategoria->nome          = $nomeCategoria;
			$novaCategoria->descricao     = DESCRICAO_CATEGORIA_CRIADA_POR_DEMANDA;
			// setando rowinfo
			$this->prepareSetRowinfoXML($novaCategoria, true);

			// salvando o objeto
			$this->salvarObjeto($novaCategoria);

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
		// inicializando variaveis
		$modelTipoCategoria = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_TipoCategoriaOPController');
		$nomeTipoCategoriaCVC = TIPO_CATEGORIA_CVC;

		// recuperando objeto
		$objTipoCategoriaCVC = $modelTipoCategoria->fetchList("nome = '{$nomeTipoCategoriaCVC}'", null, 1, 0);
		
		// checando se o objeto foi recuperado
		if (isset($objTipoCategoriaCVC[0]))
			// recuperando o id do tipo categoria
			$idTipoCategoriaCVC = $objTipoCategoriaCVC[0]->id;
		else
			throw new Exception(MSG_ERRO_TIPO_CATEGORIA_CVC);

		// recuperando o objeto categoria
		$objCategoriaCVC = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoriaCategoriaPai(CATEGORIA_CVC, $objTipoCategoriaCVC[0]->id);
		
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
		if (isset($objCategoriaCVC))
			// retornando o id do objeto
			return (Int) $objCategoriaCVC->id;

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
		$objsCategoriasLinguasAtivas = $this->_model->fetchList($condicao);
		
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
	public function retornaArrayNomesCategoriasComponentesNaoZFPorIdFormulario($idFormulario)
	{
		// inicializando variaveis
		$arrayRetorno = array();

		// verificando se o id passado eh valido
		if ((int) $idFormulario <= 0)
			return null;

		// query para retornar os nomes das categorias dos componentes nao ZF
		$queryNomesCategoriasComponentesNaoZFFormulario = "SELECT DISTINCT ccomp.nome

														   FROM formulario_formulario_elemento ffe
														   LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
														   LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
														   LEFT JOIN componente comp ON (fe.id_componente = comp.id)
														   LEFT JOIN categoria ccomp ON (comp.id_categoria = ccomp.id)
															
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
			// instanciando controladores
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

			// recuperando um modelo vazio
			$objCategoria = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

			// carregando informacoes sobre a categoria
			$objCategoria->tipoCategoria = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaSistema();
			$objCategoria->categoria     = $this->retornaIdCategoriaLog();
			$objCategoria->nivel         = 2;
			$objCategoria->ativo         = true;
			$objCategoria->nome          = $nomeCategoriaLogAcaoControlador;
			$objCategoria->descricao     = DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR;
			// preparando o XML do rowinfo
			$rowinfoOPController->prepareXml($objCategoria, true);
			$objCategoria->rowinfo       = $rowinfoOPController->getXml();

			// salvando o objeto categoria
			$this->salvarObjeto($objCategoria);

			// retornando o id da categoria recem criada
			return $this->_model->id;
		}
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
}