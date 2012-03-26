<?php
/**
 * Controlador de Modulo
 * 
 * Responsável pelos modulos do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Modulo
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_ModuloOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_ModuloOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_Modulo
	 */
	private $_model;

	/**
	 * Construtor do controlador Basico_OPController_ModuloOPController
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
	 * Inicializa o controlador Basico_OPController_ModuloOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ModuloOPController
	 * 
	 * @return Basico_OPController_ModuloOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL) {
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ModuloOPController;
		}
		// retornando instancia
		return self::$_singleton;
	}

/**
	 * Salva o objeto modulo no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Modulo $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Modulo', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_MODULO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_MODULO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_MODULO, true);
	    		$mensagemLog    = LOG_MSG_NOVO_MODULO;
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
	 * Apaga o objeto modulo do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Modulo $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Modulo', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_MODULO, true);
	    	$mensagemLog    = LOG_MSG_DELETE_MODULO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o objeto modulo do modulo nomeado pelo parametro passado
	 * 
	 * @param String $nomeModulo
	 * 
	 * @return null|Basico_Model_Modulo
	 */
	public function retornaObjetoModuloPorNome($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando objeto
		$objModulo = $this->retornaObjetosPorParametros($this->_model, "nome = '{$nomeModulo}'", null, 1, 0);

		// verificando resultado da recuperacao
		if (isset($objModulo[0]))
			return $objModulo[0];

		return null;
	}

	public function retornaIdModuloPorNomeViaSQL($nomeModulo)
	{
		// transformando a string contendo o nome do modulo em UPPERCASE
		$nomeModulo = strtoupper($nomeModulo);

		// recuperando informacoes sobre a tabela modulo
		$arrayNomeCampoIdModulo = array('id');
		$condicaoSQL           = "nome = '{$nomeModulo}'";

    	// recuperando login do usuario master
		$arrayModulo = Basico_OPController_PersistenceOPController::bdRetornaArrayDadosViaSQL('basico.modulo', $arrayNomeCampoIdModulo, $condicaoSQL);
		
		// verificando se a consulta obteve resultados
		if ((isset($arrayModulo)) and (is_array($arrayModulo)) and (count($arrayModulo) > 0)) {
			// retornando o id da categoria
			return (Int) $arrayModulo[0]['id'];
		}

		return null;
	}
}