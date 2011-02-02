<?php
/**
 * Controlador Dados Biometricos
 * 
 * @uses Basico_Model_Biometricos
 */
class Basico_DadosBiometricosControllerController
{
	/**
	 * 
	 * @var Basico_DadosBiometricosController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosBiometricos
	 */
	private $dadosBiometricos;
	
	/**
	 * Carrega a variavel dadosBiometricos com um novo objeto Basico_Model_DadosBiometricos
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->dadosBiometricos = new Basico_Model_DadosBiometricos();
	}
	
	/**
	 * Inicializa Controlador Dados Biometricos.
	 * 
	 * @return Basico_DadosBiometricosController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_DadosBiometricosControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva os dados biometricos.
	 * 
	 * @param Basico_Model_DadosBiometricos $novoDadosBiometricos
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarDadosBiometricos($novoDadosBiometricos, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

    		if ($novoDadosBiometricos->id != NULL)
    			$categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogUpdateDadosBiometricos();
            else
                $categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogNovoDadosBiometricos();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoDadosBiometricos, $versaoUpdate, $idPessoaPerfilCriador, $categoriaLog, LOG_MSG_NOVO_DADOS_BIOMETRICOS);
			
			// atualizando o objeto
			$dadosBiometricos = $novoDadosBiometricos;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}