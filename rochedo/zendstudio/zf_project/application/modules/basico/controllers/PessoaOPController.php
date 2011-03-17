<?php
/**
 * Controlador Pessoa.
 *
 */

class Basico_OPController_PessoaOPController
{
	/**
	 * Instância do Controlador Pessoa
	 * @var Basico_OPController_PessoaOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Pessoa.
	 * @var Basico_Model_Pessoa
	 */
	private $_pessoa;
	
	/**
	 * Construtor do Controlador Pessoa.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando modelo
		$this->_pessoa = $this->retornaNovoObjetoPessoa();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializacao do controlador Basico_OPController_PessoaOPController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do Controlador Pessoa.
	 * 
	 * @return Basico_OPController_PessoaOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PessoaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto pessoa vazio
	 * 
	 * @return Basico_Model_Pessoa
	 */
	public function retornaNovoObjetoPessoa()
	{
		// retornando um modelo vazio
		return new Basico_Model_Pessoa();
	}
	
	/**
	 * Salva objeto no Banco de dados.
	 * 
	 * @param Basico_Model_Pessoa $novaPessoa
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarPessoa(Basico_Model_Pessoa $objPessoa, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilControllerController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objPessoa->id != NULL) {
				// carregando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdatePessoa();
				$mensagemLog    = LOG_MSG_UPDATE_PESSOA;
			} else {
				// carregando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovaPessoa();
				$mensagemLog    = LOG_MSG_NOVA_PESSOA;
			}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objPessoa, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_pessoa = $objPessoa;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna a lingua usuario
	 * 
	 * @return String
	 */
	public static function retornaLinguaUsuario()
	{
		// retornando a lingua padrao do usuario
		return Basico_OPController_UtilOPController::retornaValorSessao(DEFAULT_USER_LANGUAGE);
	}
	
	/**
	 * Seta a lingua do ususario
	 * 
	 * @param String $lingua
	 * 
	 * @return True
	 */
	public static function setaLinguaUsuario($lingua)
	{
		// setando a lingua padra
		return Basico_OPController_UtilOPController::registraValorSessao(DEFAULT_USER_LANGUAGE, $lingua);
	}

	/**
	 * Retorna o id da pessoa master (sistema)
	 * 
	 * @return Integer
	 */
	public function retornaIdPessoaSistema()
	{
		$rowinfoMaster = ROWINFO_SYSTEM_STARTUP_MASTER;
		// recuperando o objeto pessoa
		$objsPessoaSistema = $this->_pessoa->fetchList("rowinfo = '{$rowinfoMaster}'", null, 1, 0);

		// verificando se o objeto foi carregado
		if (isset($objsPessoaSistema[0]))
			return $objsPessoaSistema[0]->id;

		return null;
	}
}