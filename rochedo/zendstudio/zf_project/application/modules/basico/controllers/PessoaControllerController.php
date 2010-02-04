<?php
/**
 * Controlador Pessoa.
 *
 */
class Basico_PessoaControllerController
{
	/**
	 * Instância do Controlador Pessoa
	 * @var Basico_PessoaController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo Pessoa.
	 * @var Basico_Model_Pessoa
	 */
	private $pessoa;
	
	/**
	 * Construtor do Controlador Pessoa.
	 * @return void
	 */
	private function __construct()
	{
		$this->pessoa = new Basico_Model_Pessoa();
	}
	
	/**
	 * Retorna instância do Controlador Pessoa.
	 * @return Basico_PessoaController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_PessoaControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * @param Basico_Model_Pessoa $novaPessoa
	 * @return void
	 */
	public function salvarPessoa($novaPessoa)
	{
		try {
			$this->pessoa = $novaPessoa;
			$this->pessoa->save();
			
			// INICIALIZACAO DOS CONTROLLERS
			$controladorCategoria = Basico_CategoriaControllerController::init();
			$controladorLog       = Basico_LogControllerController::init();
			
            // CATEGORIA DO LOG VALIDACAO USUARIO
            $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovaPessoa();

            $novoLog = new Basico_Model_Log();
            $novoLog->pessoaperfil   = Basico_Model_Util::retornaIdPessoaPerfilSistema();
            $novoLog->categoria      = $categoriaLog->id;
            $novoLog->dataHoraEvento = Zend_Date::now();
            $novoLog->descricao      = LOG_MSG_NOVA_PESSOA;
            $controladorLog->salvarLog($novoLog);
			
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}