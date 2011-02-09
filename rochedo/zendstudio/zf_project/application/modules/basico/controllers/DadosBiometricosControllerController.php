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
	
	/**
	 * Retorna o objeto dadosBiometricos da pessoa passada
	 * @param Int $idPessoa
	 * @return Basico_Model_DadosBiometricos
	 */
	public function retornaObjetoDadosBiometricosPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = self::$singleton->dadosBiometricos->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objDadosBiometricos[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosBiometricos[0];
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
	
	/**
	 * Retorna o sexo da pessoa passada
	 * @param Int $idPessoa
	 * @return M|F|NULL
	 */
	public function retornaSexoPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = self::$singleton->dadosBiometricos->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objDadosBiometricos[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosBiometricos[0]->sexo;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
	
}