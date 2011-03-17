<?php
/**
 * Controlador PessoaPerfilMensagemCategoria
 *
 */
class Basico_OPController_PessoaPerfilMensagemCategoriaOPController
{
	/**
	 * Instância do Controlador PessoaPerfilMensagemCategoria.
	 * @var Basico_OPController_PessoaPerfilMensagemCategoriaOPController
	 */
	private static $_singleton;
	
	/**
	 * Instância do Modelo Basico_Model_PessoaPerfilMensagemCategoria.
	 * 
	 * @var Basico_Model_PessoaPerfilMensagemCategoria
	 */
	private $_pessoaPerfilMensagemCategoria;
	
	/**
	 * Construtor do controlador Basico_OPController_PessoaPerfilMensagemCategoriaOPController
	 * 
	 * @return Basico_OPController_PessoaPerfilMensagemCategoriaOPController
	 */
	private function __construct()
	{
		// instanciando o modelo
	    $this->_pessoaPerfilMensagemCategoria = $this->retornaNovoObjetoPessoaPerfilMensagemCategoria();

	    // inicializando o controlador
	    $this->init();
	}

	/**
	 * Inicializa o controlador Basico_OPController_PessoaPerfilMensagemCategoriaOPController
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
	 * @return Basico_OPController_PessoaPerfilMensagemCategoriaOPController
	 */
	public static function getInstance() {
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_PessoaPerfilMensagemCategoriaOPController();
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
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilOPController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por uma pessoa ou pelo sistema
			if (!isset($idPessoaPerfilCriador))
				$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
			if ($objPessoaPerfilMensagemCategoria->id != NULL) {
				// recuperando informacoes de log de atualizacao de registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogUpdatePessoaPerfilMensagemCategoria();
				$mensagemLog    = LOG_MSG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
			} else {
				// recuperando informacoes de log de novo registro
				$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogNovaPessoaPerfilMensagemCategoria();
				$mensagemLog    = LOG_MSG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA;
			}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objPessoaPerfilMensagemCategoria, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
	    	$this->_pessoaPerfilMensagemCategoria = $objPessoaPerfilMensagemCategoria;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}