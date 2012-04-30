<?php
/**
 * Controlador Dados Pessoais
 * 
 * Controlador responsável pelos dados pessoais do usuario
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_DadosPessoais
 * 
 * @since 21/03/2011
 */
class Basico_OPController_PessoaAssocDadosOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * @var Basico_OPController_DadosPessoaisOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_DadosPessoais
	 */
	private $_model;
	
	/**
	 * Construtor do controlador Basico_OPController_DadosPessoaisOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// instanciando o modelo
		$this->_model = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));

		// inicializando o controlador
		$this->init();
	}

	/**
	 *  Inicializa o controlador Basico_OPController_DadosPessoaisOPController
	 * 
	 * @return void
	 */
	protected function init()
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
			self::$_singleton = new Basico_OPController_PessoaAssocDadosOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto dadosPessoais no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_DadosPessoais $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_PessoaAssocDados', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_PESSOAIS, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_DADOS_PESSOAIS;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DADOS_PESSOAIS, true);
	    		$mensagemLog    = LOG_MSG_NOVO_DADOS_PESSOAIS;
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objeto, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objeto;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
	
    /**
	 * Apaga o objeto dadosPessoais do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_DadosPessoais $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_PessoaAssocDados', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_DADOS_PESSOAIS, true);
	    	$mensagemLog    = LOG_MSG_DELETE_DADOS_PESSOAIS;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

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
		$objDadosPessoais = $this->retornaObjetosPorParametros("id_pessoa = {$idPessoa}", null, 1, 0);
		
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
			$objDadosPessoais = $this->retornaObjetosPorParametros("id_pessoa = {$idPessoa}", null, 1, 0);

			// verificando se o objeto foi recuperado
			if (isset($objDadosPessoais[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosPessoais[0];

	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);

		} else {
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
	
	/**
	 * Salva um novo objeto dadosPessoais e retorna o id
	 * 
	 * @param Int $idPessoa
	 * @param String $nome
	 */
	public function retornaIdNovoObjetoDadosPessoais($idPessoa, $nome)
	{
		// criando um novo obj DadosPessoais
		$novoDadosPessoais = $this->retornaNovoObjetoModeloPorNomeOPController($this->retornaNomeClassePorObjeto($this));
		// setando a pessoa
        $novoDadosPessoais->idPessoa = $idPessoa;
        // setando o nome
        $novoDadosPessoais->nome     = $nome;
        // salvando o objeto dadosPessoais
        $this->salvarObjeto($novoDadosPessoais);
        
        // retornando o id
        return $novoDadosPessoais->id;
	}
	
	/**
	 * Salva os dados pessoais atraves dos dados submetidos pelo form Basico_Form_CadastrarUsuarioValidado
	 * 
	 * @param Array $arrayPost
	 */
	public function salvarDadosPessoaisViaFormCadastrarUsuarioValidado($arrayPost)
	{
		// capturando obj dados pessoais da pessoa passada
	    $dadosPessoaisObj = $this->retornaObjetoDadosPessoaisPorIdPessoa($arrayPost['idPessoa']);

	    // checando se o obj dadosPessoais foi capturado com sucesso
	    if ($dadosPessoaisObj instanceof Basico_Model_PessoaAssocDados === false)
	        throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADOS);
	    	    
	    // setando valores do obj dadosPessoais    
    	$dadosPessoaisObj->nome           = $arrayPost['BasicoCadastrarUsuarioValidadoNome'];
    	$dadosPessoaisObj->dataNascimento = $arrayPost['BasicoCadastrarUsuarioValidadoDataNascimento'];
    	
    	// salvando os DadosPessoais
    	$this->salvarObjeto($dadosPessoaisObj, (int) $arrayPost['versaoDadosPessoais']);
	}
}