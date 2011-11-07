<?php
/**
 * Controlador dos municipios do sistema.
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @uses Basico_Model_Pais
 * 
 * @since 26/10/2011
 */
class Basico_OPController_MunicipioOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador Municipio.
	 * @var Basico_OPController_MunicipioOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo Municipio.
	 * @var Basico_Model_Municipio
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_MunicipioOPController
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
	 * Inicializa o controlador Basico_OPController_MunicipioOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna a instância do controlador perfil
	 * 
	 * @return Basico_OPController_MunicipioOPController $singleton
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_MunicipioOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto municipio no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Municipio $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado é da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Municipio', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_UPDATE_PAIS, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_PAIS;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_NOVO_PAIS, true);
	    		$mensagemLog    = LOG_MSG_NOVO_PAIS;
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
	 * Apaga o objeto perfil do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Municipio $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Municipio', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogPorNomeCategoria(LOG_DELETE_PAIS, true);
	    	$mensagemLog    = LOG_MSG_DELETE_PAIS;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna um novo objeto municipio
	 */
	public function retornaNovoObjMunicipio()
	{
		// retornando novo obj tipo sanguinio
		return new Basico_Model_Municipio();
	}
	
	/**
	 * Retorna um array com os municipios pronto para adicionar a um elemento
	 * do tipo Select
	 */
	public static function retornaMunicipioOptions($idEstado = null)
	{
		// recuperando todos os países
		$objMunicipio = self::retornaNovoObjMunicipio();
		// recuperando todos os tipos sanguineos
		$objMunicipio = Basico_OPController_PersistenceOPController::bdObjectFetchList($objMunicipio, 'id_estado=17');
		
		// adicionando opção em branco
		$arrayResult = array('' => '');
		
		if (count($objMunicipio) > 0) {
			foreach ($objMunicipio as $municipio) {
				$arrayResult[$municipio->id] = str_replace(TAG_SELECT_OPTION_NAO_DESEJO_INFORMAR, Basico_OPController_TradutorOPController::retornaTraducaoViaSQL("SELECT_OPTION_NAO_DESEJO_INFORMAR") ,$municipio->nome);				
			}
			
			return $arrayResult;
		}
		   
	}
}