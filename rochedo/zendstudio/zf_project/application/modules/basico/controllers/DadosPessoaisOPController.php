<?php
/**
 * Controlador Dados Pessoais
 * 
 * @uses Basico_Model_DadosPessoais
 */
class Basico_OPController_DadosPessoaisOPController
{
	/**
	 * @var Basico_OPController_DadosPessoaisOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_DadosPessoais
	 */
	private $_dadosPessoais;
	
	/**
	 * Construtor do controlador Basico_OPController_DadosPessoaisOPController
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_dadosPessoais = $this->retornaNovoObjetoDadosPessoais();

		// inicializando o controlador
		$this->init();
	}

	/**
	 *  Inicializa o controlador Basico_OPController_DadosPessoaisOPController
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
	 * @return Basico_OPController_DadosPessoaisOPController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DadosPessoaisOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um objeto dados pessoais vazio
	 * 
	 * @return Basico_Model_DadosPessoais
	 */
	public function retornaNovoObjetoDadosPessoais()
	{
		// retornando um modelo vazio
		return new Basico_Model_DadosPessoais();
	}
	
	/**
	 * Salva os dados pessoais.
	 * 
	 * @param Basico_Model_DadosPessoais $objDadosPessoais
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarDadosPessoais(Basico_Model_DadosPessoais $objDadosPessoais, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		try {
			// instanciando controladores
			$categoriaOPController = Basico_OPController_CategoriaOPController::getInstance();
			$pessoaPerfilOPController = Basico_OPController_PessoaPerfilOPController::getInstance();

			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		// setando o id do perfil criador para o sistema
    			$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

			// verificando se trata-se de uma nova tupla ou atualizacao
    		if ($objDadosPessoais->id != NULL) {
    			// carregando informacoes de log de atualizacao de registro
    			$idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogUpdateDadosPessoais();
    			$mensagemLog    =  LOG_MSG_UPDATE_DADOS_PESSOAIS;
    		} else {
    			// carregando informacoes de log de novo registro
                $idCategoriaLog = $categoriaOPController->retornaIdCategoriaLogNovoDadosPessoais();
                $mensagemLog    = LOG_MSG_NOVO_DADOS_PESSOAIS;
    		}

			// salvando o objeto através do controlador Save
			Basico_OPController_PersistenceOPController::bdSave($objDadosPessoais, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

			// atualizando o objeto
			$this->_dadosPessoais = $objDadosPessoais;

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
	public function retornaNomePessoaPorIdPessoa($idPessoa) 
	{
		// recuperando o objeto dados pessoais
		$objDadosPessoais = $this->_dadosPessoais->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objDadosPessoais[0]))
			// retorna o nome da pessoa
    	    return $objDadosPessoais[0]->nome;

		throw new Exception(MSG_ERRO_NOME_PESSOA_NAO_ENCONTRADA_NO_SISTEMA);
	}

	/**
	 * Retorna o objeto dados pessoais da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_DadosPessoais
	 */
	public function retornaObjetoDadosPessoaisPorIdPessoa($idPessoa)
	{
		// verificando se o id é valido
		if ((Int) $idPessoa > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosPessoais = $this->_dadosPessoais->fetchList("id_pessoa = {$idPessoa}", null, 1, 0);

			// verificando se o objeto foi recuperado
			if (isset($objDadosPessoais[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosPessoais[0];

	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);

		} else {
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
}