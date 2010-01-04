<?php
/**
 * Controlador Dados Pessoais
 * 
 * @uses Basico_Model_DadosPessoais
 */
class Basico_DadosPessoaisController
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
			self::$singleton = new Basico_DadosPessoaisController();
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
		// VERIFICA SE A OPERACAO ESTA SENDO REALIZADA POR UM USUARIO OU PELO SISTEMA
    	if (!isset($idPessoaPerfilCriador))
    		$idPessoaPerfilCriador = Basico_Model_Util::retornaIdPessoaPerfilSistema();
	    		
	    $dadosPessoais = $novoDadosPessoais;
		$dadosPessoais->save();
		
		// INICIALIZACAO DOS CONTROLLERS
		$controladorCategoria = Basico_CategoriaController::init();
		$controladorLog       = Basico_LogController::init();
		
        // CATEGORIA DO LOG VALIDACAO USUARIO
        $categoriaLog   = $controladorCategoria->retornaCategoriaLogNovoDadosPessoais();

        $novoLog = new Basico_Model_Log();
        $novoLog->pessoaperfil   = $idPessoaPerfilCriador;
        $novoLog->categoria      = $categoriaLog->id;
        $novoLog->dataHoraEvento = Zend_Date::now();
        $novoLog->descricao      = LOG_MSG_NOVO_DADOS_PESSOAIS;
        $controladorLog->salvarLog($novoLog);
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