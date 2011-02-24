<?php
/**
 * Controlador PessoaPerfilMensagemCategoria
 *
 */
class Basico_PessoaPerfilMensagemCategoriaControllerController
{
	/**
	 * Instância do Controlador PessoaPerfilMensagemCategoria.
	 * @var Basico_PessoaPerfilMensagemCategoriaControllerController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Basico_Model_PessoaPerfilMensagemCategoria.
	 * 
	 * @var Basico_Model_PessoaPerfilMensagemCategoria
	 */
	private $_pessoaPerfilMensagemCategoria;
	
	/**
	 * Construtor do controlador Basico_PessoaPerfilMensagemCategoriaControllerController
	 * 
	 * @return Basico_PessoaPerfilMensagemCategoriaControllerController
	 */
	private function __construct()
	{
		// instanciando o modelo
	    $this->_pessoaPerfilMensagemCategoria = $this->retornaNovoObjetoPessoaPerfilMensagemCategoria();

	    // inicializando o controlador
	    $this->init();
	}

	/**
	 * Inicializa o controlador Basico_PessoaPerfilMensagemCategoriaControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna instância do controlador Basico_PessoaPerfilMensagemCategoriaController
	 * 
	 * @return Basico_PessoaPerfilMensagemCategoriaControllerController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_PessoaPerfilMensagemCategoriaControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo pessoa perfil mensagem categoria vazio
	 * 
	 * @return Basico_Model_PessoaPerfilMensagemCategoria
	 */
	public function retornaNovoObjetoPessoaPerfilMensagemCategoria()
	{
		// retornando um modelo vazio
		return new Basico_Model_PessoaPerfilMensagemCategoria();
	}

	/**
	 * Salva o objeto PessoaPerfilMensagemCategoria no banco de dados.
	 * 
	 * @param Basico_Model_PessoaPerfilMensagemCategoria $novaPessoaPerfilMensagemCategoria
	 * 
	 * @return void
	 */
	public function salvarPessoaPerfilMensagemCategoria(Basico_Model_PessoaPerfilMensagemCategoria $objPessoaPerfilMensagemCategoria, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por uma pessoa ou pelo sistema
			if (!isset($idPessoaPerfilCriador))
				$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objPessoaPerfilMensagemCategoria->id != NULL) {
				// recuperando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdatePessoaPerfilMensagemCategoria();
				$mensagemLog    = LOG_MSG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovaPessoaPerfilMensagemCategoria();
				$mensagemLog    = LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
			}

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objPessoaPerfilMensagemCategoria, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
	    	$this->_pessoaPerfilMensagemCategoria = $objPessoaPerfilMensagemCategoria;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}