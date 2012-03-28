<?php
/**
 * Controlador Componente
 * 
 * Controlador responsável pelos componentes do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Componente
 * 
 * @since 21/03/2011
 */

class Basico_OPController_ComponenteOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_ComponenteOPController
	 */
	private static $_singleton;

	/**
	 * @var Basico_Model_Componente
	 */
	private $_model;

    /**
     * Construtor do Controller
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
	 * Inicializa o controlador Basico_OPController_ComponenteOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_ComponenteOPController
	 * 
	 * @return Basico_OPController_ComponenteOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_ComponenteOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

    /**
	 * Salva o objeto componente no banco de dados
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
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Componente', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_COMPONENTE, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_COMPONENTE;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_COMPONENTE, true);
	    		$mensagemLog    = LOG_MSG_NOVO_COMPONENTE;
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
	 * Apaga o objeto componente do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Componente $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Componente', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_COMPONENTE, true);
	    	$mensagemLog    = LOG_MSG_DELETE_COMPONENTE;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna array contendo os prefixos e paths dos componentes nao ZF que devem ser adicionados em forms (addPrefixpath)
	 * 
	 * @param Array $arrayNomesCategoriasComponentesNaoZF
	 * 
	 * @return Array|null
	 */
	public static function retornaArrayPrefixPathComponentesNaoZF(array $arrayNomesCategoriasComponentesNaoZF)
	{
		// inicializando variveis
		$arrayRetorno = array();

		// verificando se o array possui elementos
		if (count($arrayNomesCategoriasComponentesNaoZF) <= 0)
			return null;

		// loop para preencher array de resultados
		foreach ($arrayNomesCategoriasComponentesNaoZF as $nomeCategoriaComponenteNaoZF) {
			
			// manipulando string para recuperar o nome da biblioteca
			$nomeCategoriaComponenteNaoZF = ucfirst(strtolower(str_replace('COMPONENTE_', '', $nomeCategoriaComponenteNaoZF)));
			
			// preenchendo array de resultados
			$arrayRetorno[] = array(COMPONENTE_NAO_ZF_PREFIX => "{$nomeCategoriaComponenteNaoZF}_Form", COMPONENTE_NAO_ZF_PATH => "{$nomeCategoriaComponenteNaoZF}/Form");
		}

		// retornando array de resultados
		return $arrayRetorno;
	}
}