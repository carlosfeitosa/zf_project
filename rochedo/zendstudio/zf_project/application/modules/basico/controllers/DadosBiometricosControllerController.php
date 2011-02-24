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
	 * @var Basico_DadosBiometricosControllerController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosBiometricos
	 */
	private $_dadosBiometricos;
	
	/**
	 * Carrega a variavel dadosBiometricos com um novo objeto Basico_Model_DadosBiometricos
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_dadosBiometricos = $this->retornaNovoObjetoDadosBiometricos();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_DadosBiometricosControllerController 
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_DadosBiometricosControllerController
	 * 
	 * @return Basico_DadosBiometricosControllerController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_DadosBiometricosControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto dados biometricos vazio
	 * 
	 * @return Basico_Model_DadosBiometricos
	 */
	public function retornaNovoObjetoDadosBiometricos()
	{
		// retornando um modelo vazio
		return new Basico_Model_DadosBiometricos();
	}
	
	/**
	 * Salva os dados biometricos.
	 * 
	 * @param Basico_Model_DadosBiometricos $objDadosBiometricos
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarDadosBiometricos(Basico_Model_DadosBiometricos $objDadosBiometricos, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		// setando o id do perfil criador para o sistema
    			$idPessoaPerfilCriador = Basico_PessoaPerfilControllerController::getInstance()->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
    		if ($objDadosBiometricos->id != NULL) {
    			// carregando informacoes de log de atualizacao de registro
    			$idCategoriaLog = Basico_CategoriaControllerController::getInstance()->retornaIdCategoriaLogUpdateDadosBiometricos();
    			$mensagemLog  = LOG_MSG_UPDATE_DADOS_BIOMETRICOS;
    		} else {
    			// carregando informacoes de log de novo registro
                $idCategoriaLog = Basico_CategoriaControllerController::getInstance()->retornaIdCategoriaLogNovoDadosBiometricos();
                $mensagemLog  = LOG_MSG_NOVO_DADOS_BIOMETRICOS;
    		}

			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($objDadosBiometricos, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto dentro do controlador
			$this->_dadosBiometricos = $objDadosBiometricos;

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}

	/**
	 * Retorna o objeto dadosBiometricos da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_DadosBiometricos
	 */
	public function retornaObjetoDadosBiometricosPorIdPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = $this->_dadosBiometricos->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);

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
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return 'M'|'F'|NULL
	 */
	public function retornaSexoPorIdPessoa($idPessoa)
	{
	    // verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = $this->_dadosBiometricos->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
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