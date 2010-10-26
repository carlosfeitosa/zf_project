<?php
/**
 * Controlador Output.
 *
 */
class Basico_OutputControllerController
{
	/**
	 * Instância do Controlador Output
	 * @var Basico_OutputController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Output.
	 * @var Basico_Model_Output
	 */
	private $output;
	
	/**
	 * Construtor do Controlador Output.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->output = new Basico_Model_Output();
	}
	
	/**
	 * Retorna instância do Controlador Output.
	 * 
	 * @return Basico_OutputController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_OutputControllerController();
		}
		return self::$singleton;
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
	public function salvarOutput(Basico_Model_Output $novoOutput, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_UtilControllerController::retornaIdPessoaPerfilSistema();

	    	// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoOutput, $versaoUpdate, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoOutput(), LOG_MSG_NOVO_OUTPUT);

			// atualizando o objeto
			$this->output = $novoOutput;
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}