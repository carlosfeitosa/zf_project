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
	 * @return void
	 */
	private function __construct()
	{
		$this->dadosPessoais = new Basico_Model_DadosPessoais();
	}
	
	/**
	 * Inicializa Controlador Dados Pessoais.
	 * @return Basico_DadosPessoaisController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_DadosPessoaisControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Salva os dados pessoais.
	 * @param Basico_Model_DadosPessoais $novoDadosPessoais
	 * @param int $idPessoaPerfilCriador
	 * @return void
	 */
	public function salvarDadosPessoais($novoDadosPessoais, $idPessoaPerfilCriador = null)
	{
		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
    			$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
    			
			// salvando o objeto através do controlador Save
			Basico_SaveControllerController::save($novoDadosPessoais, $idPessoaPerfilCriador, Basico_CategoriaControllerController::retornaIdCategoriaLogNovoDadosPessoais(), LOG_MSG_NOVO_DADOS_PESSOAIS);
			
			// atualizando o objeto
			$dadosPessoais = $novoDadosPessoais;
						
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o nome da pessoa cujo o id foi passado como parâmetro.
	 * @param Int $idPessoa
	 * @return String
	 */
	public function retornaNomePessoa($idPessoa) {
		
		$dadosPessoais = self::$singleton->dadosPessoais->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
		if (isset($dadosPessoais[0])) 
    	    return $dadosPessoais[0]->nome;
		throw new Exception(MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA);
	}
	
}