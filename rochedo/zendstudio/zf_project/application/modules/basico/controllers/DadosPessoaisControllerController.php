<?php
/**
 * Controlador Dados Pessoais
 * 
 * @uses Basico_Model_DadosPessoais
 */
class Basico_DadosPessoaisControllerController
{
	/**
	 * 
	 * @var Basico_DadosPessoaisController
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosPessoais
	 */
	private $dadosPessoais;
	
	/**
	 * Carrega a variavel dadosPessoais com um novo objeto Basico_Model_DadosPessoais
	 * 
	 * @return void
	 */
	private function __construct()
	{
		$this->dadosPessoais = new Basico_Model_DadosPessoais();
	}
	
	/**
	 * Inicializa Controlador Dados Pessoais.
	 * 
	 * @return Basico_DadosPessoaisController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_DadosPessoaisControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva os dados pessoais.
	 * 
	 * @param Basico_Model_DadosPessoais $novoDadosPessoais
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarDadosPessoais($novoDadosPessoais, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_PersistenceControllerController::bdRetornaIdPessoaPerfilSistema();

    		if ($novoDadosPessoais->id != NULL)
    			$categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogUpdateDadosPessoais();
            else
                $categoriaLog = Basico_CategoriaControllerController::retornaIdCategoriaLogNovoDadosPessoais();
    			
			// salvando o objeto através do controlador Save
			Basico_PersistenceControllerController::bdSave($novoDadosPessoais, $versaoUpdate, $idPessoaPerfilCriador, $categoriaLog, LOG_MSG_NOVO_DADOS_PESSOAIS);
			
			// atualizando o objeto
			$dadosPessoais = $novoDadosPessoais;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o nome da pessoa cujo o id foi passado como parâmetro.
	 * 
	 * @param Integer $idPessoa
	 * 
	 * @return String
	 */
	public function retornaNomePessoa($idPessoa) 
	{
		// recuperando o objeto dados pessoais
		$objDadosPessoais = self::$singleton->dadosPessoais->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objDadosPessoais[0]))
			// retorna o nome da pessoa
    	    return $objDadosPessoais[0]->nome;

		throw new Exception(MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA);
	}
	
	/**
	 * Retorna o objeto dados pessoais da pessoa passada
	 * @param Int $idPessoa
	 * @return Basico_Model_DadosPessoais
	 */
	public function retornaObjetoDadosPessoaisPessoa($idPessoa)
	{
		// verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosPessoais = self::$singleton->dadosPessoais->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objDadosPessoais[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosPessoais[0];
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
}