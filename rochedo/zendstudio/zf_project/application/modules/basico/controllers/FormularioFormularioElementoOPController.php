<?php
/**
 * Controlador FormularioFormularioElemento.
 *
 */
class Basico_OPController_FormularioFormularioElementoOPController
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
	private $_formularioFormularioElemento;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioFormularioElementoOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_formularioFormularioElemento = $this->retornaNovoObjetoFormularioFormularioElemento();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioFormularioElementoOPController
	 * 
	 * @return void
	 */
	private function init()
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

	public function retornaNovoObjetoFormularioFormularioElemento()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioFormularioElemento();
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
		$objsFormularioFormularioElemento = $this->_formularioFormularioElemento->fetchList("id_formulario = {$idFormulario} and id_formulario_elemento = {$idFormularioElemento} and ordem = {$ordem}", null, 1, 0);

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
		$formularioControllerController = Basico_OPController_FormularioOPController::getInstance();

		// inicializando variaveis
		$arrayReturn = array();

		// recuperando objeto
		$objsFormularioFormularioElemento = $this->_formularioFormularioElemento->fetchList("id_formulario = {$idFormulario}", "ordem");

		// verificando o resultado da recuperacao do objeto
		if (count($objsFormularioFormularioElemento) > 0) {
			foreach ($objsFormularioFormularioElemento as $objFormularioFormularioElemento) {
				$arrayReturn[] = $objFormularioFormularioElemento->ordem;
			}

			// verificando se o formulario eh persistente
			if ((GENERATE_PERSISTENT_FORM_WITH_HASH_ELEMENT) and ($formularioControllerController->existePersistenciaPorIdFormulario($idFormulario)))
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
		$objsFormularioFormularioElemento = $this->_formularioFormularioElemento->fetchList("id_formulario = {$objFormulario->id} and id_grupo_formulario_elemento is not null", array('ordem', 'id_grupo_formulario_elemento'));

		// retornando array de objetos
		return $objsFormularioFormularioElemento;
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioFormularioElemento $novoFormularioFormularioElemento
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioFormularioElemento(Basico_Model_FormularioFormularioElemento $objFormularioFormularioElemento, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objFormularioFormularioElemento->id != NULL) {
				// recuperando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormularioFormularioElemento();
				$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO;
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormularioFormularioElemento();
				$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO;
			}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objFormularioFormularioElemento, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_formularioFormularioElemento = $objFormularioFormularioElemento;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}