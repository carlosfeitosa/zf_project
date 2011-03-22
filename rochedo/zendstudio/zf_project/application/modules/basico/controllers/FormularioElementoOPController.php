<?php
/**
 * Controlador Formulario Elemento
 * 
 * Controlador responsavel pelos formularios elementos
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 21/03/2011
 */

class Basico_OPController_FormularioElementoOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioElemento
	 * @var Basico_OPController_FormularioElementoOPController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo FormularioElemento.
	 * @var Basico_Model_FormularioElemento
	 */
	private $_model;

	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoOPController.
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador Basico_OPController_FormularioElementoOPController
		$this->init();
	}	
	
	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElemento.
	 * 
	 * @return Basico_OPController_FormularioElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoOPController();
		}
		// retornando singleton
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto formulario elemento vazio
	 * 
	 * @return Basico_Model_FormularioElemento
	 */
	public function retornaNovoObjetoFormularioElemento()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElemento();
	}
	
	/**
	 * Salva o objeto formulario elemento no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_FormularioElemento $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioElemento', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateFormularioElemento();
	    		$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovoFormularioElemento();
	    		$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_ELEMENTO;
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
	 * Apaga o objeto formulario elemento do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_FormularioElemento $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioElemento', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteFormularioElemento();
	    	$mensagemLog    = LOG_MSG_DELETE_FORMULARIO_ELEMENTO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o elemento hash
	 * 
	 * @return Basico_Model_FormularioElemento|null
	 */
	public function retornaElementoHash()
	{
		// inicializando variaveis
		$nomeElemento = FORM_ELEMENT_HASH;

		// recuperando array de resultados
		$objsFormularioElemento = $this->_model->fetchList("nome = '{$nomeElemento}'");

		// verificando se o elemento foi recuperado
		if (count($objsFormularioElemento) > 0)
			// retornando elemento
			return $objsFormularioElemento[0];

		return null;
	}
}