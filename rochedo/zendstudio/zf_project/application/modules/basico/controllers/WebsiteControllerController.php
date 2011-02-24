<?php
/**
 * Controlador Dados Pessoais
 * 
 * @uses Basico_Model_DadosPessoais
 */
class Basico_WebsiteControllerController
{
	/**
	 * 
	 * @var Basico_WebsiteControllerController
	 */
	private static $_singleton;

	/**
	 * 
	 * @var Basico_Model_Website
	 */
	private $_website;

	/**
	 * Construtor do controlador website
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_website = $this->retornaNovoObjetoWebsite();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_WebsiteControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Inicializa Controlador Dados Pessoais.
	 * 
	 * @return Basico_WebsiteControllerController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_WebsiteControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo website vazio
	 * 
	 * @return void
	 */
	public function retornaNovoObjetoWebsite()
	{
		// retornando um modelo vazio
		return new Basico_Model_WebSite();
	}

	/**
	 * Salva os website.
	 * 
	 * @param Basico_Model_Website $novoWebsite
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function inserirWebsite(Basico_Model_WebSite $objWebsite, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaControllerController = Basico_CategoriaControllerController::getInstance();
			$pessoaPerfilControllerController = Basico_PessoaPerfilControllerController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = $pessoaPerfilControllerController->retornaIdPessoaPerfilSistema();

    		// verificando se trata-se de uma nova tupla ou atualizacao
    		if ($objWebsite->id != NULL) {
    			// recuperando informacoes de log de atualizacao de registro
    			$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogUpdateWebsite();
    			$mensagemLog    = LOG_MSG_UPDATE_WEBSITE;
    		} else {
    			// recuperando informacoes de log de novo registro
    			$idCategoriaLog = $categoriaControllerController->retornaIdCategoriaLogNovoWebsite();
    			$mensagemLog    = LOG_MSG_NOVO_WEBSITE;
    		}

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objWebsite, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_website = $objWebsite;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

}