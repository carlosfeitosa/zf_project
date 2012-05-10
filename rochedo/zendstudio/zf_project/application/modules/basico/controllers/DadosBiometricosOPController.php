<?php
/**
 * Controlador Dados Biometricos
 * 
 * Controlador responsavel pelos dados biometricos do usuario
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.om)
 * 
 * @since 17/03/2011
 */
class Basico_OPController_DadosBiometricosOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_DadosBiometricosOPController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosBiometricos
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico.dados_biometricos
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico.dados_biometricos';

	/**
	 * Nome do campo id da tabela basico.dados_biometricos
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Carrega a variavel dadosBiometricos com um novo objeto Basico_Model_DadosBiometricos
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DadosBiometricosOPController 
	 * 
	 * @return void
	 */
	protected function init()
	{
		// chamando inicializacao da classe pai
		parent::init();
		
		return;
	}
	
	/**
	 * Inicializa os controladores utilizados pelo controlador
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractController_RochedoPersistentOPController::initControllers()
	 * 
	 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 03/05/2012
	 */
	protected function initControllers()
	{
		return;
	}

	/**
	 * Recupera a instancia do controlador Basico_OPController_DadosBiometricosOPController
	 * 
	 * @return Basico_OPController_DadosBiometricosOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DadosBiometricosOPController();
		}
		// retornando instancia
		return self::$_singleton;
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
			// recuperando categoria de dados biometricos de pessoa
			$categoriaDadosBiometricosPessoa = Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL('DADOS_BIOMETRICOS_PESSOA');
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = $this->retornaObjetosPorParametros("id_generico_proprietario = {$idPessoa} AND id_categoria = {$categoriaDadosBiometricosPessoa}", null, 1, 0);

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
			// recuperando o id da categoria DADOS_BIOMETRICOS PESSOA
			$idCategoria = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('DADOS_BIOMETRICOS_PESSOA');
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricos = $this->retornaObjetosPorParametros("id_generico_proprietario = {$idPessoa} AND id_categoria = {$idCategoria}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objDadosBiometricos[0])) {
				// retorna o o objeto dados pessoais
	    	    $sexoPessoa = Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->retornaObjetoDadosBiometricosPessoaPorIdDadosBiometricos($objDadosBiometricos[0]->id)->idCategoriaSexo;
	    	    
	    	    if ($sexoPessoa == Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_MASCULINO'))
	    	    	return "M";
	    	    elseif ($sexoPessoa == Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_FEMININO'))
	    	    	return "F";
			}

			throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);

		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
	
    /**
     * Salva os dados biometricos de um usuario
     * 
     * @param Integer $idPessoa
     * @param Array $arrayPost
     * 
     * @return Boolean
     */
    public function salvarDadosBiometricosViaFormCadastrarDadosUsuarioDadosBiometricos($idPessoa, $arrayPost)
    {  	
        // recuperando array dos dados do subForm dadosBiometricos
        $arrayPostDadosBiometricos = $arrayPost['CadastrarDadosUsuarioDadosBiometricos'];
    	
    	// recuperando valores do formulario
    	$sexo                     = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'];
    	$altura                   = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura'];
	    $peso                     = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso'];  
        $idCategoriaRaca          = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca'];
	    $idCategoriaTipoSanguineo = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo'];
	    $historicoMedico          = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico'];
	    
	    // recuperando a versao do objeto dados biometricos
    	$ultimaVersaoDadosBiometricos = $arrayPostDadosBiometricos['versaoObjetoDadosBiometricos'];
	        	
    	// recuperando o objeto dados biometricos da pessoa
    	$dadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
    	
    	// recuperando a especializacao de dados biometricos para pessoa
	    $dadosBiometricosPessoa = Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->retornaObjetoDadosBiometricosPessoaPorIdDadosBiometricos($dadosBiometricos->id);
    	
    	// carregando valores no objeto dadosBiometricos
    	// carregando o radio button do sexo
	    if ($sexo == 0)
	        $dadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('GENERO_MASCULINO');
	    elseif($sexo == 1) 
	        $dadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('GENERO_FEMININO');

        // carregando dados no objeto dados biometricos
        if ($altura != "")
        	$dadosBiometricosPessoa->altura               = $altura;
        	
        if ($peso != "")
        	$dadosBiometricosPessoa->peso                 = $peso;

        $dadosBiometricosPessoa->idCategoriaRaca          = $idCategoriaRaca;
   	    $dadosBiometricosPessoa->idCategoriaTipoSanguineo = $idCategoriaTipoSanguineo;
   	    $dadosBiometricosPessoa->historicoMedico          = $historicoMedico;    	
   	    
    	// recuperando o objeto PessoaPerfil UsuarioValidado do usuario logado
    	$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa);

    	// salvando o objeto dadosBiometricos
    	Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->salvarObjeto($dadosBiometricosPessoa, (int) $ultimaVersaoDadosBiometricos, $idPessoaPerfilCriador->id);

    	return true;
    }
    
    /**
     * Salva os dados biometricos atraves dos dados submetidos pelo form Basico_Form_CadastrarUsuarioValidado
     * 
     * @param array $arrayPost
     */
    public function salvarDadosBiometricosViaFormCadastrarUsuarioValidado($arrayPost)
    {
    	//criando dadosBiometricos do usuario
  		$novoDadosBiometricos = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_DadosBiometricosOPController');
   		
  		// recuperando o tipo_categoria da categoria DADOS_BIOMETRICOS_PESSOA
  		$idTipoCategoriaDadosBiometricos = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaPorNome('DADOS_BIOMETRICOS');
  		
  		// recuperando categoria dos dados biometricos
  		$idCategoriaDadosBiometricos = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPai('DADOS_BIOMETRICOS_PESSOA', $idTipoCategoriaDadosBiometricos, null, true);
  		
  		// recuperando o modelo de pessoa
  		$modeloPessoa = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoaOPController');
  		
  		// recuperando a categoria chave estrangeira da categoria DADOS_BIOMETRICOS_PESSOA
  		$categoriaChaveEstrangeira = Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraPorModeloIdCategoria($modeloPessoa, $idCategoriaDadosBiometricos, true);
  		
  		// setando a categoria dos dados biometricos
  		$novoDadosBiometricos->idCategoria = $idCategoriaDadosBiometricos;
  		
   		// setando a pessoa dona dos dadosBiometricos
   		$novoDadosBiometricos->idGenericoProprietario = $arrayPost['idPessoa'];
   		
   		// salvando os dadosBiometricos
    	$this->salvarObjeto($novoDadosBiometricos);
   		   	
    	// recuperando novo modelo de dadosBiometricosAssocPessoa
   		$novoDadosBiometricosPessoa = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_DadosBiometricosAssocPessoaOPController');
   		// setando o id do dadosBiometricos
   		$novoDadosBiometricosPessoa->idDadosBiometricos = $novoDadosBiometricos->id;
   		
   		// setando o sexo
   		if ($arrayPost['BasicoCadastrarUsuarioValidadoSexo'] == 0)
   		    $novoDadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_MASCULINO');
   		else if ($arrayPost['BasicoCadastrarUsuarioValidadoSexo'] == 1)
		    $novoDadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_FEMININO');
   		
		// salvando dadosBiometricosAssocPessoa
		Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->salvarObjeto($novoDadosBiometricosPessoa);
    }
    
    /**
	 * Retorna a versao do objeto dadosBiometricos, a partir do id de uma pessoa
	 * 
	 * @param Integer $idPessoa
	 * @param Boolean $forceVersioning
	 * 
	 * @return Integer
	 */
	public function retornaVersaoObjetoDadosBiometricosPorIdPessoa($idPessoa, $forceVersioning = false)
	{
		// recuperando objeto pessoa
		$dadosBiometricos = $this->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
		
		if (count($dadosBiometricos) > 0)
		    // retornando a versao do objeto
		    return Basico_OPController_PersistenceOPController::bdRetornaUltimaVersaoCVC($dadosBiometricos, $forceVersioning);

		
	}
}