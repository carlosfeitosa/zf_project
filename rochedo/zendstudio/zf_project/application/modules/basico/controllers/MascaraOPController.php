<?php
/**
 * Controlador Mascara
 * 
 * Responsável pelas mascaras do sistema
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Mascara
 * 
 * @since 21/03/2011
 */
class Basico_OPController_MascaraOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_MascaraOPController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Mascara
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_MascaraOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_MascaraOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna a instancia do controlador Mascara.
	 * 
	 * @return Basico_OPController_MascaraOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MascaraOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Salva o objeto mascara no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Mascara $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Mascara', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_MASCARA, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_MASCARA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVA_MASCARA, true);
	    		$mensagemLog    = LOG_MSG_NOVA_MASCARA;
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
	 * Apaga o objeto mascara do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Mascara $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Mascara', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_MASCARA, true);
	    	$mensagemLog    = LOG_MSG_DELETE_MASCARA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna um array onde a chave é o id do elemento e o valor é a mascara a ser aplicada
	 * 
	 * @param String $nomeModulo
	 * @param String $nomeForm
	 * 
	 * @return Array|false
	 */
	public static function retornaArrayMascarasElementosPorNomeFormularioViaSQL($nomeModulo, $nomeForm)
	{
		// montando query para recuperacao de elementos com mascara por nomeForm
		$sql = "SELECT f.form_name,  fe.element_name, m.mascara
				FROM basico.formulario f
				LEFT JOIN modulo_formulario mf ON (f.id = mf.id_formulario)
				LEFT JOIN modulo mod ON (mf.id_modulo = mod.id)
				LEFT JOIN formulario_formulario_elemento ffe ON (f.id = ffe.id_formulario)
				LEFT JOIN basico_formulario.elemento fe ON (ffe.id_formulario_elemento = fe.id)
				LEFT JOIN basico_formulario_elemento.assoccl_mascara fem ON (fem.id_formulario_elemento = fe.id)
				LEFT JOIN mascara m ON (m.id = fem.id_mascara)
				WHERE f.nome = '{$nomeForm}'
				AND mod.nome = '{$nomeModulo}'
				AND mascara IS NOT NULL";
		
		// executando a query
		$result = Basico_OPController_DBUtilOPController::retornaArraySQLQuery($sql);
		
		// inicializando array do resultado
		$arrayResultado = array();
		
		// montando array de resultado
		foreach ($result as $row) {
			$arrayResultado[$row['form_name'] . "-" . ucfirst(strtolower($nomeModulo)) . $row['form_name'] . ucfirst($row['element_name'])] = $row['mascara']; 
		}
		
		if (count($arrayResultado) > 0)
			return $arrayResultado;
		else
			return false;
	}

}