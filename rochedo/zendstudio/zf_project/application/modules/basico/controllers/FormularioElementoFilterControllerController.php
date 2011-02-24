<?php
/**
 * Controlador FormularioElementoFilter.
 *
 */
class Basico_FormularioElementoFilterControllerController
{
	/**
	 * Instância do Controlador Basico_FormularioElementoFilterControllerController
	 * @var Basico_FormularioElementoFilterControllerController
	 */
	static private $_singleton;

	/**
	 * Instância do Modelo FormularioElementoFilter.
	 * @var Basico_Model_FormularioElementoFilter
	 */
	private $_formularioElementoFilter;

	/**
	 * Construtor do Controlador Basico_FormularioElementoFilterControllerController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_formularioElementoFilter = $this->retornaNovoObjetoFormularioElementoFilter();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_FormularioElementoFilterControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElementoFilter.
	 * 
	 * @return Basico_FormularioElementoFilterControllerController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_FormularioElementoFilterControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	public function retornaNovoObjetoFormularioElementoFilter()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElementoFilter();
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioElementoFilter $novoFormularioElementoFilter
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElementoFilter(Basico_Model_FormularioElementoFilter $objFormularioElementoFilter, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objFormularioElementoFilter->id != NULL) {
				// recuperando informacoes de log de autalizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormularioElementoFilter();
				$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_FILTER;
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormularioElementoFilter();
				$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FILTER;
			}

	    	// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objFormularioElementoFilter, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_formularioElementoFilter = $objFormularioElementoFilter;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}