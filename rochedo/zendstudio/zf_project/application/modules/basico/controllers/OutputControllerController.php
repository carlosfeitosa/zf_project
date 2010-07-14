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
	 * @return void
	 */
	private function __construct()
	{
		$this->output = new Basico_Model_Output();
	}
	
	/**
	 * Retorna instância do Controlador Output.
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
	 * @param Basico_Model_Output $novoOutput
	 * @return void
	 */
	public function salvarOutput($novoOutput)
	{
		try {
			$this->output = $novoOutput;
			$this->output->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoOutput();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;

            $novoLog->dataHoraEvento = Basico_Model_Util::retornaDateTimeAtual();
            $novoLog->descricao      = LOG_MSG_NOVO_OUTPUT;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}