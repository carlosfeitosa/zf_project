<?php
/**
 * Controlador FormularioElementoFormularioElementoValidador.
 *
 */
class Basico_OPController_FormularioElementoFormularioElementoValidadorOPController
{
	/**
	 * Instância do Controlador Formulario
	 * @var Basico_OPController_FormularioElementoFormularioElementoValidadorOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Formulario.
	 * @var Basico_Model_FormularioElementoFormularioElementoValidator
	 */
	private $_formularioElementoFormularioElementoValidador;
	
	/**
	 * Construtor do Controlador Basico_OPController_FormularioElementoFormularioElementoValidadorOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_formularioElementoFormularioElementoValidador = $this->retornaNovoObjetoFormularioElementoFormularioElementoValidador();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_FormularioElementoFormularioElementoValidadorOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Formulario.
	 * 
	 * @return Basico_OPController_FormularioElementoFormularioElementoValidadorOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_FormularioElementoFormularioElementoValidadorOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo FormularioElementoFormularioElementoValidador vazio
	 * 
	 * @return Basico_Model_FormularioElementoFormularioElementoValidator
	 */
	public function retornaNovoObjetoFormularioElementoFormularioElementoValidador()
	{
		// retornando um modelo vazio
		return new Basico_Model_FormularioElementoFormularioElementoValidator();
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Formulario $novoFormularioElementoFormularioElementoValidador
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarFormularioElementoFormularioElementoValidador(Basico_Model_FormularioElementoFormularioElementoValidator $objFormularioElementoFormularioElementoValidator, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objFormularioElementoFormularioElementoValidator->id != NULL) {
				// recuperando informacoes do log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateFormularioElementoFormularioElementoValidador();
				$mensagemLog    = LOG_MSG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR;
			} else {
				// recuperando informacoes do log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador();
				$mensagemLog    = LOG_MSG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR;
			}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objFormularioElementoFormularioElementoValidator, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto	
			$this->_formularioElementoFormularioElementoValidador = $objFormularioElementoFormularioElementoValidator;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}