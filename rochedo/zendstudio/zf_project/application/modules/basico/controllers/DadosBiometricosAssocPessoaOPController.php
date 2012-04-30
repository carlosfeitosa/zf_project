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
	 * @var Basico_OPController_DadosBiometricosOPController
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_DadosBiometricos
	 */
	private $_model;
	
	/**
	 * Carrega a variavel dadosBiometricos com um novo objeto Basico_Model_DadosBiometricos
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
	 * Inicializa o controlador Basico_OPController_DadosBiometricosOPController 
	 * 
	 * @return void
	 */
	protected function init()
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
			self::$_singleton = new Basico_OPController_DadosBiometricosAssocPessoaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
	/**
	 * Salva o objeto dados biometricos no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_DadosBiometricos $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DadosBiometricosAssocPessoa', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_UPDATE_DADOS_BIOMETRICOS_PESSOA, true);
	    		$mensagemLog    = LOG_MSG_UPDATE_DADOS_BIOMETRICOS_PESSOA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_NOVO_DADOS_BIOMETRICOS_PESSOA, true);
	    		$mensagemLog    = LOG_MSG_NOVO_DADOS_BIOMETRICOS_PESSOA;
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
	 * Apaga o objeto dados biometricos do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_DadosBiometricos $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_DadosBiometricosAssocPessoa', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::retornaIdPessoaPerfilSistemaViaSQL();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::retornaIdCategoriaLogPorNomeCategoriaViaSQL(LOG_DELETE_DADOS_BIOMETRICOS_PESSOA, true);
	    	$mensagemLog    = LOG_MSG_DELETE_DADOS_BIOMETRICOS_PESSOA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
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
			if (isset($objDadosBiometricosPessoa[0]))
				// retorna o o objeto dados pessoais
	    	    return $objDadosBiometricosPessoa[0];
	    	    
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
    	$sexo                 = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosSexo'];
    	$altura               = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosAltura'];
	    $peso                 = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosPeso'];  
        $constanteTextualRaca = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosRaca'];
	    $tipoSanguineo        = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosTipoSanguineo'];
	    $historicoMedico      = $arrayPostDadosBiometricos['BasicoCadastrarDadosUsuarioDadosBiometricosHistoricoMedico'];
	    
	    // recuperando a versao do objeto dados biometricos
    	$ultimaVersaoDadosBiometricos = $arrayPostDadosBiometricos['versaoObjetoDadosBiometricos'];
	    
    	// recuperando o objeto dados biometricos da pessoa
    	$dadosBiometricos = Basico_OPController_DadosBiometricosOPController::getInstance()->retornaObjetoDadosBiometricosPorIdPessoa($idPessoa);
    	
    	// carregando valores no objeto dadosBiometricos
    	// carregando o radio button do sexo
	    if ($sexo == 0)
	        $dadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
	    elseif($sexo == 1) 
	        $dadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;

        // carregando dados no objeto dados biometricos
        if ($altura != "")
        	$dadosBiometricos->altura               = $altura;
        	
        if ($peso != "")
        	$dadosBiometricos->peso                 = $peso;

        $dadosBiometricos->constanteTextualRaca = $constanteTextualRaca;
   	    $dadosBiometricos->tipoSanguineo        = $tipoSanguineo;
   	    $dadosBiometricos->historicoMedico      = $historicoMedico;    	
   	    
    	// recuperando o objeto PessoaPerfil UsuarioValidado do usuario logado
    	$idPessoaPerfilCriador = Basico_OPController_PessoaAssocclPerfilOPController::getInstance()->retornaObjetoPessoaPerfilUsuarioValidadoPorIdPessoa($idPessoa);

    	// salvando o objeto dadosBiometricos
    	Basico_OPController_DadosBiometricosOPController::getInstance()->salvarObjeto($dadosBiometricos, (int) $ultimaVersaoDadosBiometricos, $idPessoaPerfilCriador->id);

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
  		$idTipoCategoriaDadosBiometricos = Basico_OPController_TipoCategoriaOPController::retornaIdTipoCategoriaPorNome('DADOS_BIOMETRICOS');
  		
  		// recuperando categoria dos dados biometricos
  		$idCategoriaDadosBiometricos = Basico_OPController_CategoriaOPController::retornaIdCategoriaAtivaPorNomeCategoriaIdTipoCategoriaIdCategoriaPaiViaSQL('DADOS_BIOMETRICOS_PESSOA', $idTipoCategoriaDadosBiometricos);
  		
  		// recuperando o modelo de pessoa
  		$modeloPessoa = $this->retornaNovoObjetoModeloPorNomeOPController('Basico_OPController_PessoaOPController');
  		
  		// recuperando a categoria chave estrangeira da categoria DADOS_BIOMETRICOS_PESSOA
  		$categoriaChaveEstrangeira = Basico_OPController_CategoriaAssocChaveEstrangeiraOPController::getInstance()->retornaObjetoCategoriaChaveEstrangeiraPorModeloIdCategoria($modeloPessoa, $idCategoriaDadosBiometricos, true);
  		
  		// setando a categoria dos dados biometricos
  		$novoDadosBiometricos->idCategoria = $idCategoriaDadosBiometricos;
  		
   		// setando a pessoa dona dos dadosBiometricos
   		$novoDadosBiometricos->idGenericoProprietario = $arrayPost['idPessoa'];
   		   	
   		
   		// setando o sexo
   		if ($arrayPost['BasicoCadastrarUsuarioValidadoSexo'] == 0)
   		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_MASCULINO;
   		else if ($arrayPost['BasicoCadastrarUsuarioValidadoSexo'] == 1)
		    $novoDadosBiometricos->sexo = FORM_RADIO_BUTTON_SEXO_OPTION_FEMININO;
   		
		// salvando os dadosBiometricos
    	$this->salvarObjeto($novoDadosBiometricos);
    }
}