<?php
/**
 * Controlador Basico_FormularioElementoValidatorControllerController.
 *
 */
class Basico_FormularioElementoValidatorControllerController
{
	/**
	 * Instância do Controlador Basico_FormularioElementoValidatorControllerController
	 * @var Basico_FormularioElementoValidatorControllerController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo FormularioElementoValidador.
	 * @var Basico_Model_FormularioElementoValidador
	 */
	private $_formularioElementoValidator;
	
	/**
	 * Construtor do Controlador FormularioElementoValidador.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_formularioElementoValidator = $this->retornaNovoObjetoFormularioElementoValidator();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_FormularioElementoValidatorControllerController
	 *
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador FormularioElementoValidador.
	 * 
	 * @return Basico_FormularioElementoValidadorController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_FormularioElementoValidatorControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo de formulario elemento validator vazio
	 * 
	 * @return Basico_Model_FormularioElementoValidator
	 */
	public function retornaNovoObjetoFormularioElementoValidator()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElementoValidator();
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_FormularioElementoValidador $novoFormularioElementoValidador
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElementoValidador(Basico_Model_FormularioElementoValidator $objFormularioElementoValidador, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando os controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objFormularioElementoValidador->id != NULL) {
	    		// recuperando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormularioElementoValidador();
	    		$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR;
	    	} else {
	    		// recuperando informacoes de log de novo registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormularioElementoValidador();
	    		$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR;
	    	}

	    	// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objFormularioElementoValidador, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_formularioElementoValidator = $objFormularioElementoValidador;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}