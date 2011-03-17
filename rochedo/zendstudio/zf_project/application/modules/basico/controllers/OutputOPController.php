<?php
/**
 * Controlador Output.
 *
 */
class Basico_OPController_OutputOPController
{
	/**
	 * Instância do Controlador Output
	 * @var Basico_OPController_OutputOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Output.
	 * @var Basico_Model_Output
	 */
	private $_output;
	
	/**
	 * Construtor do Controlador Basico_OPController_OutputOPController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instancinado o modelo
		$this->_output = $this->retornaNovoObjetoOutput();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_OutputOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Output.
	 * 
	 * @return Basico_OPController_OutputOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_OutputOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo output vazio
	 * 
	 * @return Basico_Model_Output
	 */
	public function retornaNovoObjetoOutput()
	{
		// retornando um modelo vazio
		return new Basico_Model_Output();
	}

	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Output $novoOutput
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarOutput(Basico_Model_Output $objOutput, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilOPController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objOutput->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogUpdateOutput();
	    		$mensagemLog = LOG_MSG_UPDATE_OUTPUT;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogNovoOutput();
	    		$mensagemLog = LOG_MSG_NOVO_OUTPUT;
	    	}

	    	// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objOutput, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_output = $objOutput;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}