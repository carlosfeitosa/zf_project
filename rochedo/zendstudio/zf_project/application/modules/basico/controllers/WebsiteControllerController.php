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
	 * @var Basico_WebsiteController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Website
	 */
	private $website;
	
	/**
	 * Carrega a variavel Website com um novo objeto Basico_Model_Website
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->website = new Basico_Model_Website();
	}
	
	/**
	 * Inicializa Controlador Dados Pessoais.
	 * 
	 * @return Basico_WebsiteController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_WebsiteControllerController();
		}
		return self::$singleton;
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
	public function inserirWebsite($novoWebsite, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

    		if ($novoWebsite->id != NULL)
    			$categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogUpdateWebsite();
            else
                $categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogNovoWebsite();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoWebsite, $versaoUpdate, $idPessoaPerfilCriador, $categoriaLog, LOG_MSG_NOVO_WEBSITE);
			
			// atualizando o objeto
			$website = $novoWebsite;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

}