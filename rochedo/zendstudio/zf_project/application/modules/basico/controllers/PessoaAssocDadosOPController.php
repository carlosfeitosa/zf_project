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
	 * @var Basico_OPController_PessoaAssocDadosOPController
	 */
	private static $_singleton;
	
	/**
	 * @var Basico_Model_PessoaAssocDados
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_pessoa.assoc_dados
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_pessoa.assoc_dados';

	/**
	 * Nome do campo id da tabela basico_pessoa.assoc_dados
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do controlador Basico_OPController_PessoaAssocDadosOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 *  Inicializa o controlador Basico_OPController_PessoaAssocDadosOPController
	 * 
	 * @return void
	 */
	protected function _init()
	{
		// chamando inicializacao da classe pai
		parent::_init();
		
		return;
	}

	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 30/04/2012
	 */
	protected function _initControllers()
	{
		return;
	}

	/**
	 * Inicializa Controlador Dados Pessoais.
	 * 
	 * @return Basico_OPController_PessoaAssocDadosOPController
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
	 * Retorna o nome da pessoa cujo o id foi passado como parâmetro.
	 * 
	 * @param Integer $idPessoa
	 * 
	 * @return String
	 */
	public function retornaNomePessoaPorIdPessoa($idPessoa) 
	{
		// recuperando o objeto dados pessoais
		$objDadosPessoais = $this->_retornaObjetosPorParametros("id_pessoa = {$idPessoa}", null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (is_object($objDadosPessoais))
			// retorna o nome da pessoa
    	    return $objDadosPessoais->nome;

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
			$objDadosPessoais = $this->_retornaObjetosPorParametros("id_pessoa = {$idPessoa}", null, 1, 0);

			// verificando se o objeto foi recuperado
			if (is_object($objDadosPessoais))
				// retorna o o objeto dados pessoais
	    	    return $objDadosPessoais;

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
		$novoDadosPessoais = $this->_retornaNovoObjetoModelo();
		// setando a pessoa
        $novoDadosPessoais->idPessoa = $idPessoa;
        // setando o nome
        $novoDadosPessoais->nome     = $nome;
        // salvando o objeto dadosPessoais
        parent::_salvarObjeto($novoDadosPessoais, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_PESSOAIS, true), LOG_MSG_NOVO_DADOS_PESSOAIS);
        
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
    	parent::_salvarObjeto($dadosPessoaisObj, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_PESSOAIS, true), LOG_MSG_NOVO_DADOS_PESSOAIS, (int) $arrayPost['versaoDadosPessoais']);
	}
}