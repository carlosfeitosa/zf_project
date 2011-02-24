<?php
/**
 * Controlador Output.
 *
 */
class Basico_OutputControllerController
{
	/**
	 * Instância do Controlador Output
	 * @var Basico_OutputControllerController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Output.
	 * @var Basico_Model_Output
	 */
	private $_output;
	
	/**
	 * Construtor do Controlador Basico_OutputControllerController.
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
	 * Inicializa o controlador Basico_OutputControllerController
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
	 * @return Basico_OutputControllerController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OutputControllerController();
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
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objOutput->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateOutput();
	    		$mensagemLog = LOG_MSG_UPDATE_OUTPUT;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoOutput();
	    		$mensagemLog = LOG_MSG_NOVO_OUTPUT;
	    	}

	    	// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objOutput, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_output = $objOutput;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}