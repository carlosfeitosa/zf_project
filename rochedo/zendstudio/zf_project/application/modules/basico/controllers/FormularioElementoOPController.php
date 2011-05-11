<?php
/**
 * Controlador Formulario Elemento
 * 
 * Controlador responsavel pelos formularios elementos
 * 
 * @package Basico
 * 
 * @author Igor Pinho (igor.pinho.souza@rochedoproject.om)
 * 
 * @since 22/03/2011
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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_FORMULARIO_ELEMENTO, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_FORMULARIO_ELEMENTO, true);
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
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_FORMULARIO_ELEMENTO, true);
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

	/**
	 * Retorna o atributo elementRequired da relacao do formulario elemento com o formulario
	 * 
	 * @param Integer $idFormularioElemento
	 * @param Integer $idFormulario
	 * 
	 * @return Boolean|null
	 */
	public function retornaElementRequiredFormularioElementoFormulario($idFormularioElemento, $idFormulario)
	{
		// verificando se foi passado o parametro do id do formulario elemento e o id do formulario
		if ((!$idFormulario) or (!$idFormularioElemento))
			return null;

		// recuperando o objeto formulario elemento
		$objetoFormularioElemento = $this->_model->find($idFormularioElemento);

		// recuperando o objeto formularioFormularioElemento
		$objetoFormularioFormularioElemento = $objetoFormularioElemento->getFormularioFormularioElementoObjectPorIdFormulario($idFormulario);

		// verificando se o objeto formularioFormularioElemento foi recuperado
		if (isset($objetoFormularioFormularioElemento)) {
			// retornando o resultado da recuperacao do atributo elementRequired da vinculacao do formulario elemento com o formulario
			return $objetoFormularioFormularioElemento->elementRequired;
		}
	}
}