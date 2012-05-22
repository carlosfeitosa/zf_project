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
class Basico_OPController_DadosBiometricosAssocPessoaOPController extends Basico_AbstractController_RochedoPersistentOPController
{
	/**
	 * 
	 * @var Basico_OPController_DadosBiometricosAssocPessoaOPController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosBiometricosAssocPessoa
	 */
	protected $_model;
	
	/**
	 * Nome da tabela basico_dados_biometricos.assoc_pessoa
	 * 
	 * @var String
	 */
	const nomeTabelaModelo  = 'basico_dados_biometricos.assoc_pessoa';

	/**
	 * Nome do campo id da tabela basico_dados_biometricos.assoc_pessoa
	 * 
	 * @var Array
	 */
	const nomeCampoIdModelo = 'id';
	
	/**
	 * Construtor do controlador Basico_OPController_DadosBiometricosAssocPessoaOPController
	 * 
	 * @return void
	 */
	protected function __construct()
	{
		// chamando construtor da classe pai
		parent::__construct();
	}

	/**
	 * Inicializa o controlador Basico_OPController_DadosBiometricosAssocPessoaOPController 
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
	 * Recupera a instancia do controlador Basico_OPController_DadosBiometricosAssocPessoaOPController
	 * 
	 * @return Basico_OPController_DadosBiometricosAssocPessoaOPController
	 */
	static public function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_DadosBiometricosAssocPessoaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Retorna o objeto dadosBiometricos da pessoa passada
	 * 
	 * @param Int $idPessoa
	 * 
	 * @return Basico_Model_DadosBiometricosAssocPessoa
	 */
	public function retornaObjetoDadosBiometricosPessoaPorIdDadosBiometricos($idDadosBiometricos)
	{
	    // verificando se o id é valido
		if ((Int) $idDadosBiometricos > 0) {
			// recuperando o objeto dados pessoais da pessoa
			$objDadosBiometricosPessoa = $this->retornaObjetosPorParametros("id_dados_biometricos = {$idDadosBiometricos}", null, 1, 0);

			// verificando se o objeto foi recuperado
			if (is_object($objDadosBiometricosPessoa))
				// retorna o o objeto dados pessoais
	    	    return $objDadosBiometricosPessoa;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_BIOMETRICOS_PESSOA_NAO_ENCONTRADO_NO_SISTEMA);
	    	
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
			$objDadosBiometricos = $this->retornaObjetosPorParametros("id_pessoa = {$idPessoa}", null, 1, 0);
			
			// verificando se o objeto foi recuperado
			if (isset($objDadosBiometricos[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosBiometricos[0]->sexo;
	    	    
	    	throw new Exception(MSG_ERRO_DADOS_PESSOAIS_NAO_ENCONTRADO_NO_SISTEMA);
	    	
		}else{
			throw new Exception(MSG_ERRO_PARAMETRO_ID_INVALIDO);
		}
	}
    
    /**
     * Salva o sexo da pessoa
     * 
     * @param int $idDadosBiometricos
     * @param int $idPessoa
     * @param int $sexo
     * 
     * @return Boolean
     * 
     * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
     * 
     * @since 14/05/2012
     */
    public function salvaSexoPessoa($idDadosBiometricos, $idPessoa, $sexo)
    {
    	// recuperando novo modelo de dadosBiometricosAssocPessoa
   		$novoDadosBiometricosPessoa = $this->retornaNovoObjetoModelo();
   		
   		// setando o id do dadosBiometricos
   		$novoDadosBiometricosPessoa->idDadosBiometricos = $idDadosBiometricos;
   		
   		// setando o sexo
   		if ($sexo == 0)
   		    $novoDadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_MASCULINO');
   		else if ($sexo == 1)
		    $novoDadosBiometricosPessoa->idCategoriaSexo = Basico_OPController_CategoriaOPController::retornaIdCategoriaPorNomeCategoriaIdTipoCategoriaViaSQL('GENERO_FEMININO');
   		
		// salvando dadosBiometricosAssocPessoa
		parent::salvarObjeto($novoDadosBiometricosPessoa, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_BIOMETRICOS_PESSOA), LOG_MSG_NOVO_DADOS_BIOMETRICOS_PESSOA, null, Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa));
    }
    
	/**
     * Salva os dados biometricos da pessoa
     * 
     * @param Integer $idPessoa
     * @param Array $arrayPost
     * 
     * @return Boolean
     */
    public function atualizaDadosBiometricosPessoa($idPessoa, $idDadosBiometricos, $versaoObjetoDadosBiometricos, $sexo, $altura, $peso, $idCategoriaRaca, $idCategoriaTipoSanguineo, $historicoMedico)
    {   
    	// recuperando a especializacao de dados biometricos para pessoa
	    $dadosBiometricosPessoa = Basico_OPController_DadosBiometricosAssocPessoaOPController::getInstance()->retornaObjetoDadosBiometricosPessoaPorIdDadosBiometricos($idDadosBiometricos);
    	
    	// carregando valores no objeto dadosBiometricosAssocPessoa
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
    	$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilUsuarioValidadoPorIdPessoaViaSQL($idPessoa);

    	// salvando o objeto dadosBiometricos
    	parent::salvarObjeto($dadosBiometricosPessoa, Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DADOS_BIOMETRICOS_PESSOA, true), LOG_MSG_UPDATE_DADOS_BIOMETRICOS_PESSOA, (int) $versaoObjetoDadosBiometricos, $idPessoaPerfilCriador);
    	
    	return true;
    }
    
    /**
     * Retorna a ultima versao do objeto dados biometricos assoc pessoa pelo o id 
     * 
     * @param Int $idPessoa
     * 
     * @return Int
     * 
     * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
     * 
     * @since 22/05/2012
     */
    public function retornaUltimaVersaoObjetoDadosBiometricosAssocPessoaPorIdPessoa($idPessoa)
    {
    	// recuperando o id de dados biometricos
	    $idDadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaIdDadosBiometricosPorIdPessoa($idPessoa);
    	
	    // recuperando objeto dadosBiometricosAssocPessoa
    	$dadosBiometricosPessoa = $this->retornaObjetosPorParametros("id_dados_biometricos = {$idDadosBiometricos}");
    	
    	if (is_object($dadosBiometricosPessoa))
    		return Basico_OPController_CVCOPController::getInstance()->retornaUltimaVersao($dadosBiometricosPessoa);
    		
    }
}