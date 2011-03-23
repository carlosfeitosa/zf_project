<?php
/**
 * Controlador FormularioFormularioElemento.
 * 
 * Responsável pelos FormularioFormularioElemento do sistema.
 *
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_FormularioFormularioElemento
 * 
 * @since 21/03/2011
 * 
 */
class Basico_OPController_FormularioFormularioElementoOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 * Instância do Controlador FormularioFormularioElemento
	 * @var Basico_OPController_FormularioFormularioElementoOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo FormularioFormularioElemento.
	 * @var Basico_Model_FormularioFormularioElemento
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioFormularioElementoOPController.
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
	 * Inicializa o controlador Basico_OPController_FormularioFormularioElementoOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioFormularioElemento.
	 * 
	 * @return Basico_OPController_FormularioFormularioElementoOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if (self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioFormularioElementoOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna o objeto decorator de um formularioFormularioElemento
	 * 
	 * @param Integer $idFormulario
	 * @param Integer $idFormularioElemento
	 * @param Integer $ordem
	 * 
	 * @return null|Basico_Model_Decorator
	 */
	public function retornaDecoratorObjectPorIdFormularioIdFormularioElementoOrdem($idFormulario, $idFormularioElemento, $ordem)
	{		
		// recuperando objeto
		$objsFormularioFormularioElemento = $this->_model->fetchList("id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and ordem = {$ordem}", null, 1, 0);

		// verificando o resultado da recuperacao do objeto
		if (!isset($objsFormularioFormularioElemento[0]) or (!$objsFormularioFormularioElemento[0]->decorator))
			return null;

		// retornando decorator
		return $objsFormularioFormularioElemento[0]->getDecoratorObject();
	}

	/**
	 * Retorna um array contendo as ordens encontradas na relacao formualrio_formulario_elemento
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array
	 */
	public function retornaArrayOrdemPorIdFormulario($idFormulario)
	{
		// instanciando controladores
		$formularioOPController = Basico_OPController_FormularioOPController::getInstance();

		// inicializando variaveis
		$arrayReturn = array();

		// recuperando objeto
		$objsFormularioFormularioElemento = $this->_model->fetchList("id_formulario = {$idFormulario}", "ordem");

		// verificando o resultado da recuperacao do objeto
		if (count($objsFormularioFormularioElemento) > 0) {
			foreach ($objsFormularioFormularioElemento as $objFormularioFormularioElemento) {
				$arrayReturn[] = $objFormularioFormularioElemento->ordem;
			}

			// verificando se o formulario eh persistente
			if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and ($formularioOPController->existePersistenciaPorIdFormulario($idFormulario)))
				$arrayReturn[] = $objFormularioFormularioElemento->ordem + 1;
		}

		// retornando array com os resultados
		return $arrayReturn;
	}

	/**
	 * Retorna um array de objetos Basico_Model_FormularioFormularioElemento, que possuem GrupoFormularioElemento, relacionados 
	 * ao formulario passado como parametro
	 * 
	 * @param Basico_Model_Formulario $objFormulario
	 * 
	 * @return Array
	 */
	public function retornaObjetosFormularioFormularioElementoGrupoFormularioElemento(Basico_Model_Formulario $objFormulario)
	{
		// recuperando objetos
		$objsFormularioFormularioElemento = $this->_model->fetchList("id_formulario = {$objFormulario->id} and id_grupo_formulario_elemento is not null", array('ordem', 'id_grupo_formulario_elemento'));

		// retornando array de objetos
		return $objsFormularioFormularioElemento;
	}

	/**
	 * Salva o objeto FormularioFormularioElemento no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_FormularioFormularioElemento $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioFormularioElemento', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateFormularioFormularioElemento();
	    		$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovoFormularioFormularioElemento();
	    		$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO;
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
	 * Apaga o objeto FormularioFormularioElemento do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_FormularioFormularioElemento $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_FormularioFormularioElemento', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoasPerfisOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteFormularioFormularioElemento();
	    	$mensagemLog    = LOG_MSG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}