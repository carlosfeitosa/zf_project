<?php
/**
 * Controlador Categoria
 * 
 * Responsável pelas categorias do sistema.
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoproject.com)
 * 
 * @uses Basico_Model_Categoria
 * 
 * @since 21/03/2011
 */

class Basico_OPController_CategoriaOPController extends Basico_Abstract_RochedoPersistentOPController
{
	/**
	 *  
	 * @var Basico_OPController_CategoriaOPController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	private $_model;
	
	/**
	 * Construtor do Controlador Categoria
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
	 * Inicializa o controlador Basico_OPController_CategoriaOPController
	 * 
	 * @return void
	 */
	protected function init()
	{
		return;
	}
	
	/**
	 * Recupera a instancia do controlador Basico_OPController_CategoriaOPController
	 * 
	 * @return Basico_OPController_CategoriaOPController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_OPController_CategoriaOPController();
		}
		// retornando instancia
		return self::$_singleton;
	}
	
    /**
	 * Salva o objeto categoria no banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::salvarObjeto()
	 * 
	 * @param Basico_Model_Categoria $objeto
	 * @param Integer $versaoUpdate
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarObjeto($objeto, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Categoria', true);

	    try {
    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objeto->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogUpdateCategoria();
	    		$mensagemLog    = LOG_MSG_UPDATE_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogNovaCategoria();
	    		$mensagemLog    = LOG_MSG_NOVA_CATEGORIA;
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
	 * Apaga o objeto categoria do banco de dados
	 * 
	 * (non-PHPdoc)
	 * @see Basico_Abstract_RochedoPersistentOPController::apagarObjeto()
	 * 
	 * @param Basico_Model_Categoria $objeto
	 * @param Boolean $forceCascade
	 * @param Integer $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function apagarObjeto($objeto, $forceCascade = false, $idPessoaPerfilCriador = null)
	{
		// verificando se o objeto passado eh da instancia esperada
		Basico_OPController_UtilOPController::verificaVariavelRepresentaInstancia($objeto, 'Basico_Model_Categoria', true);

		try {
			// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = Basico_OPController_PessoaPerfilOPController::getInstance()->retornaIdPessoaPerfilSistema();

	    	// recuperando informacoes de log
	    	$idCategoriaLog = Basico_OPController_CategoriaOPController::getInstance()->retornaIdCategoriaLogDeleteCategoria();
	    	$mensagemLog    = LOG_MSG_DELETE_CATEGORIA;

	    	// apagando o objeto do bando de dados
	    	Basico_OPController_PersistenceOPController::bdDelete($objeto, $forceCascade, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
	
	/**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro ou NULL se
	 * ela não existir no banco.
	 * 
	 * @param String $nomeCategoria
	 * 
	 * @return Basico_Model_Categoria or NULL
	 */
	private function retornaObjetoCategoriaPorNomeCategoria($nomeCategoria)
	{
		// recuperando objeto categoria
		$objCategoria = $this->_model->fetchList("nome = '{$nomeCategoria}'", null, 1, 0);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria[0]))
			// retornando o objeto
    	    return $objCategoria[0];
    	return NULL;
	}
	
    /**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro se esta estiver ATIVA
	 * ou NULL se ela não existir no banco.
	 * Permite a indicacao do tipo de categoria
	 * 
	 * @param String $nomeCategoria
	 * @param Integer $tipoCategoria
	 * 
	 * @return Basico_Model_Categoria|NULL
	 */
	private function retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria($nomeCategoria, $idTipoCategoria = null)
	{
		// checando o tipo de categoria e condicionando query
		if ((isset($idTipoCategoria)) and ($idTipoCategoria >= 1))
			$condicaoSQL = "nome = '{$nomeCategoria}' and id_tipo_categoria = {$idTipoCategoria}";
		else
			$condicaoSQL = "nome = '{$nomeCategoria}'";

		// recuperando objeto categoria
		$objsCategoria = $this->_model->fetchList($condicaoSQL, null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($objsCategoria[0])) {
			// verificando se a categoria esta ativa
			if ($objsCategoria[0]->ativo == 1)
				// retornando objeto
			   return $objsCategoria[0];
			   	
		    throw new Exception(MSG_ERRO_CATEGORIA_NAO_ATIVA);
		    
		} else {
    	    return null;
		}
	}

	/**
	 * Retorna um objeto categoria vazio
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaNovoObjetoCategoria()
	{
		// retornando um modelo vazio
		return new Basico_Model_Categoria();
	}
	
	/** CATEGORIAS DE E-MAIL */
	
	/**
	 * Retorna o objeto carregado com a categoria EMAIL_PRIMARIO
	 * 
	 * @return Basico_Model_Categoria $categoriaEmailPrimario
	 */
	public function retornaObjetoCategoriaEmailPrimario()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailPrimario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(EMAIL_PRIMARIO);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailPrimario))
	    	// retornando o objeto
    	    return $objCategoriaEmailPrimario;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria MENSAGEM_EMAIL_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaEmailValidacaoPlainText()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);

	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainText))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainText;
    	    
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextReenvio = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextReenvio))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainTextReenvio;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaEmailTemplateConfirmacaoCadastroPlainText()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailConfirmacaoCadastroPlainText = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailConfirmacaoCadastroPlainText))
	    	// retornando o objeto
    	    return $objCategoriaEmailConfirmacaoCadastroPlainText;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_CONFIRMACAO_CADASTRO_PLAINTEXT);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria REMETENTE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaRemetente()
	{
		// recuperando objeto categoria
		$objCategoriaRemetente = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);

		// verificando se o objeto foi recuperado
	    if (isset($objCategoriaRemetente))
	    	// retornando o objeto
    	    return $objCategoriaRemetente;

    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
	}

	/**
	 * Retorna o objeto carregado com a categoria DESTINATARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaDestinatario()
	{
		// recuperando objeto categoria
		$objCategoriaDestinatario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
		
		// verificando se o objeto foi recuperado
	    if (isset($objCategoriaDestinatario))
	    	// retornando o objeto
    	    return $objCategoriaDestinatario;

    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaEmailValidacaoPlainTextTemplate()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainText))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainText;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria SISTEMA_EMAIL
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaEmailSistema()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(SISTEMA_EMAIL);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainText))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainText;

    	throw new Exception(MSG_ERRO_CATEGORIA_SISTEMA_EMAIL);
	}
	
	/** CATEGORIAS DE LOG */

	/**
	 * Retorna o objeto carregado com a categoria LOG
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLog()
	{
		// recuperando objeto categoria
		$objCategoriaLog = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLog))
			// retornando o objeto
			return $objCategoriaLog;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_EMAIL
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogEmail()
	{
		// recuperando objeto categoria
		$objCategoriaLogEmail = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogEmail))
			// retornando o objeto
			return $objCategoriaLogEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_VALIDACAO_USUARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogValidacaoUsuario))
			// retornando o objeto
			return $objCategoriaLogValidacaoUsuario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaPessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_PESSOA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o objeto
			return $objCategoriaLogNovaPessoa;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_PESSOA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdatePessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdatePessoa = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_PESSOA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoa))
			// retornando o objeto
			return $objCategoriaLogUpdatePessoa;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_PESSOA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeletePessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeletePessoa = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_PESSOA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePessoa))
			// retornando o objeto
			return $objCategoriaLogDeletePessoa;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_RACA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaRaca()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaRaca = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_RACA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaRaca))
			// retornando o objeto
			return $objCategoriaLogNovaRaca;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_RACA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_RACA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateRaca()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdateRaca = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_RACA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateRaca))
			// retornando o objeto
			return $objCategoriaLogUpdateRaca;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_RACA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_COMPONENTE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovoComponente = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_COMPONENTE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoComponente))
			// retornando o objeto
			return $objCategoriaLogNovoComponente;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_COMPONENTE);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_COMPONENTE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdateComponente = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_COMPONENTE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateComponente))
			// retornando o objeto
			return $objCategoriaLogUpdateComponente;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_COMPONENTE);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_COMPONENTE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeleteComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeleteComponente = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_COMPONENTE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteComponente))
			// retornando o objeto
			return $objCategoriaLogDeleteComponente;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_COMPONENTE);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_PESSOA_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o objeto
			return $objCategoriaLogNovaPessoaPerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdatePessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdatePessoaPerfil = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_PESSOA_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoaPerfil))
			// retornando o objeto
			return $objCategoriaLogUpdatePessoaPerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogNovoDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_WEBSITE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoWebsite()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoWebsite = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_WEBSITE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoWebsite))
			// retornando o objeto
			return $objCategoriaLogNovoWebsite;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_WEBSITE);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_BIOMETRICOS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosBiometricos = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_DADOS_BIOMETRICOS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosBiometricos))
			// retornando o objeto
			return $objCategoriaLogNovoDadosBiometricos;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_BIOMETRICOS);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_DADOS_BIOMETRICOS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosBiometricos = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_DADOS_BIOMETRICOS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosBiometricos))
			// retornando o objeto
			return $objCategoriaLogUpdateDadosBiometricos;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_BIOMETRICOS);
	}

	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAS_PERFIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoDadosPessoasPrefis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoasPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_DADOS_PESSOAS_PERFIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoasPerfis))
			// retornando o objeto
			return $objCategoriaLogNovoDadosPessoasPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAS_PERFIS);
	}
	
	 /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_DADOS_PESSOAS_PERFIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateDadosPessoasPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosPessoasPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_DADOS_PESSOAS_PERFIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosPessoasPerfis))
			// retornando o objeto
			return $objCategoriaLogUpdateDadosPessoasPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAS_PERFIS);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosPessoais = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogUpdateDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS);
	}
	
/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeleteDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosPessoais = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogDeleteDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAIS);
	}
	
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_WEBSITE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateWebsite()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateWebsite = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_WEBSITE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateWebsite))
			// retornando o objeto
			return $objCategoriaLogUpdateWebsite;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_WEBSITE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoLogin = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_LOGIN);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoLogin))
			// retornando o objeto
			return $objCategoriaLogNovoLogin;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateLogin = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_LOGIN);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateLogin))
			// retornando o objeto
			return $objCategoriaLogUpdateLogin;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_LOGIN);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o objeto
			return $objCategoriaLogNovoEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_EMAIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateEmail = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateEmail))
			// retornando o objeto
			return $objCategoriaLogUpdateEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_EMAIL);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_EMAIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteEmail = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteEmail))
			// retornando o objeto
			return $objCategoriaLogDeleteEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_EMAIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovaCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaCategoria))
			// retornando o objeto
			return $objCategoriaLogNovaCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_CATEGORIA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateCategoria))
			// retornando o objeto
			return $objCategoriaLogUpdateCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_CATEGORIA);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteCategoria))
			// retornando o objeto
			return $objCategoriaLogDeleteCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_CATEGORIA);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovoPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoPerfil = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoPerfil))
			// retornando o objeto
			return $objCategoriaLogNovoPerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_PERFIL);
	}
	
/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdatePerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdatePerfil = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePerfil))
			// retornando o objeto
			return $objCategoriaLogUpdatePerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PERFIL);
	}
	
/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeletePerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeletePerfil = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePerfil))
			// retornando o objeto
			return $objCategoriaLogDeletePerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_PERFIL);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_MODULO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovoModulo()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoModulo = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_MODULO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoModulo))
			// retornando o objeto
			return $objCategoriaLogNovoModulo;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_MODULO);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_MODULO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateModulo()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateModulo = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_MODULO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateModulo))
			// retornando o objeto
			return $objCategoriaLogUpdateModulo;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_MODULO);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_MODULO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteModulo()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteModulo = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_MODULO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteModulo))
			// retornando o objeto
			return $objCategoriaLogDeleteModulo;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_MODULO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACAO_APLICACAO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcaoAplicacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_ACAO_APLICACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcaoAplicacao))
			// retornando o objeto
			return $objCategoriaLogNovaAcaoAplicacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACAO_APLICACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcaoAplicacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_ACAO_APLICACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcaoAplicacao))
			// retornando o objeto
			return $objCategoriaLogUpdateAcaoAplicacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACAO_APLICACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcaoAplicacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_ACAO_APLICACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcaoAplicacao))
			// retornando o objeto
			return $objCategoriaLogDeleteAcaoAplicacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_DADOS_PESSOAS_PERFIS
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteDadosPessoasPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosPessoasPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_ACAO_APLICACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosPessoasPerfis))
			// retornando o objeto
			return $objCategoriaLogDeleteDadosPessoasPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAS_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosPessoasPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_FORMULARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosPessoasPerfis))
			// retornando o objeto
			return $objCategoriaLogDeleteDadosPessoasPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_DADOS_BIOMETRICOS
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcaoAplicacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_DADOS_BIOMETRICOS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcaoAplicacao))
			// retornando o objeto
			return $objCategoriaLogDeleteAcaoAplicacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_BIOMETRICOS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcoesAplicacaoMetodosValidacao))
			// retornando o objeto
			return $objCategoriaLogNovaAcoesAplicacaoMetodosValidacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao))
			// retornando o objeto
			return $objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao))
			// retornando o objeto
			return $objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_ACOES_APLICACAO_PERFIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcoesAplicacaoPerfis))
			// retornando o objeto
			return $objCategoriaLogNovaAcoesAplicacaoPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_ACOES_APLICACAO_PERFIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcoesAplicacaoPerfis))
			// retornando o objeto
			return $objCategoriaLogUpdateAcoesAplicacaoPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_ACOES_APLICACAO_PERFIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcoesAplicacaoPerfis))
			// retornando o objeto
			return $objCategoriaLogDeleteAcoesAplicacaoPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_METODO_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoMetodoValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_METODO_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcoesAplicacaoPerfis))
			// retornando o objeto
			return $objCategoriaLogNovaAcoesAplicacaoPerfis;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_METODO_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_METODO_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateMetodoValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_METODO_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateMetodoValidacao))
			// retornando o objeto
			return $objCategoriaLogUpdateMetodoValidacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_METODO_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_METODO_VALIDACAO
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteMetodoValidacao = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_METODO_VALIDACAO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteMetodoValidacao))
			// retornando o objeto
			return $objCategoriaLogDeleteMetodoValidacao;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_METODO_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_TOKEN_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return $objCategoriaLogNovoToken;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaLogUpdateToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateToken = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_TOKEN_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateToken))
			// retornando o id do objeto
			return $objCategoriaLogUpdateToken;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_TOKEN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return $objCategoriaLogNovaMensagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_MENSAGEM
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateMensagem = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateMensagem))
			// retornando o id do objeto
			return $objCategoriaLogUpdateMensagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_MENSAGEM
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeleteMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteMensagem = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteMensagem))
			// retornando o id do objeto
			return $objCategoriaLogDeleteMensagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria($constanteLinguagem);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLinguagem))
			// retornando o objeto
			return $objCategoriaLinguagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormulario
	 */
	public function retornaObjetoCategoriaLogNovoFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormulario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o objeto
			return $objCategoriaLogNovoFormulario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogUpdateFormulario
	 */
	public function retornaObjetoCategoriaLogUpdateFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormulario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormulario))
			// retornando o objeto
			return $objCategoriaLogUpdateFormulario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoGrupoFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoGrupoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoGrupoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateGrupoFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateGrupoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogUpdateGrupoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeleteGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteGrupoFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteGrupoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogDeleteGrupoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO);
	}
	

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogUpdateFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FILTER
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFilter
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFilter;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFilter
	 */
	public function retornaObjetoCategoriaLogUpdateFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoFilter = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoFilter))
			// retornando o objeto
			return $objCategoriaLogUpdateFormularioElementoFilter;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_FILTER
	 * 
	 * @return Basico_Model_Categoria $categoriaLogDeleteFormularioElementoFilter
	 */
	public function retornaObjetoCategoriaLogDeleteFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoFilter = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoFilter))
			// retornando o objeto
			return $objCategoriaLogDeleteFormularioElementoFilter;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogUpdateFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogUpdateFormularioElementoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogDeleteFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogDeleteFormularioElementoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogUpdateFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeleteFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoValidador = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogDeleteFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public function retornaObjetoCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public function retornaObjetoCategoriaLogUpdateFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogUpdateFormularioFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogDeleteFormularioElementoValidador
	 */
	public function retornaObjetoCategoriaLogDeleteFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioFormularioElemento = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogDeleteFormularioFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioTemplate))
			// retornando o id do objeto
			return $objCategoriaLogNovoFormularioTemplate;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_OUTPUT
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoOutput()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoOutput = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVO_OUTPUT);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retornando o objeto
			return $objCategoriaLogNovoOutput;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_OUTPUT);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_OUTPUT
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdateOutput()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateOutput = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_OUTPUT);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateOutput))
			// retornando o objeto
			return $objCategoriaLogUpdateOutput;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_OUTPUT);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_TENTATIVA_AUTENTICACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogTentativaAutenticacaoUsuario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogTentativaAutenticacaoUsuario = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_TENTATIVA_AUTENTICACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogTentativaAutenticacaoUsuario))
			// retornando o objeto
			return $objCategoriaLogTentativaAutenticacaoUsuario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_TENTATIVA_AUTENTICACAO_USUARIO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaPessoaPerfilMensagemCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfilMensagemCategoria))
			// retornando o objeto
			return $objCategoriaLogNovaPessoaPerfilMensagemCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogUpdatePessoaPerfilMensagemCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdatePessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoaPerfilMensagemCategoria))
			// retornando o objeto
			return $objCategoriaLogUpdatePessoaPerfilMensagemCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogDeletePessoaPerfilMensagemCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeletePessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePessoaPerfilMensagemCategoria))
			// retornando o objeto
			return $objCategoriaLogDeletePessoaPerfilMensagemCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_CATEGORIA_CHAVE_ESTRANGEIRA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogCategoriaChaveEstrangeira = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_CATEGORIA_CHAVE_ESTRANGEIRA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogCategoriaChaveEstrangeira))
			// retornando o objeto
			return $objCategoriaLogCategoriaChaveEstrangeira;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_CATEGORIA_CHAVE_ESTRANGEIRA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaRelacaoCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogRelacaoCategoriaChaveEstrangeira = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogRelacaoCategoriaChaveEstrangeira))
			// retornando o objeto
			return $objCategoriaLogRelacaoCategoriaChaveEstrangeira;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);
	}

	/**
	 * Retorna o objeto carregado com a categoria CVC
	 * 
	 * @return Basico_Model_Categoria $categoriaCVC
	 */
	public function retornaObjetoCategoriaCVC()
	{
		// inicializando variaveis
		$modelTipoCategoria = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaNovoObjetoTipoCategoria();
		$nomeTipoCategoriaCVC = TIPO_CATEGORIA_CVC;

		// recuperando objeto
		$objTipoCategoriaCVC = $modelTipoCategoria->fetchList("nome = '{$nomeTipoCategoriaCVC}'", null, 1, 0);
		
		// checando se o objeto foi recuperado
		if (isset($objTipoCategoriaCVC[0]))
			// recuperando o id do tipo categoria
			$idTipoCategoriaCVC = $objTipoCategoriaCVC[0]->id;
		else
			throw new Exception(MSG_ERRO_TIPO_CATEGORIA_CVC);

		// recuperando o objeto categoria
		$objCategoriaCVC = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(CATEGORIA_CVC, $objTipoCategoriaCVC[0]->id);
		
		// checando se objeto foi recuperado
		if (isset($objCategoriaCVC))
			// retornando objeto
			return $objCategoriaCVC;

		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}

	/*
	 * Retorna o id da categoria CVC
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaCVC()
	{
		// recuperando objeto categoria
		$objCategoriaCVC = $this->retornaObjetoCategoriaCVC();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaCVC))
			// retornando o id do objeto
			return (Int) $objCategoriaCVC->id;

		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}

	/**
	 * Retorna o id da categoria LOG_CATEGORIA_CHAVE_ESTRANGEIRA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogCategoriaChaveEstrangeira = $this->retornaObjetoCategoriaLogCategoriaChaveEstrangeira();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogCategoriaChaveEstrangeira))
			// retornando o id objeto
			return (Int) $objCategoriaLogCategoriaChaveEstrangeira->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_CATEGORIA_CHAVE_ESTRANGEIRA);
	}

	/**
	 * Retorna o id da categoria LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaRelacaoCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogRelacaoCategoriaChaveEstrangeira = $this->retornaObjetoCategoriaLogNovaRelacaoCategoriaChaveEstrangeira();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogRelacaoCategoriaChaveEstrangeira))
			// retornando o id objeto
			return (Int) $objCategoriaLogRelacaoCategoriaChaveEstrangeira->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);
	}

	/**
	 * Retorna o id da categoria LOG
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLog()
	{
		// recuperando objeto categoria
		$objCategoriaLog = $this->retornaObjetoCategoriaLog();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLog))
			// retornando o id objeto
			return (Int) $objCategoriaLog->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_EMAIL);
	}

	/**
	 * Retorna o id da categoria LOG_EMAIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogEmail()
	{
		// recuperando objeto categoria
		$objCategoriaLogEmail = $this->retornaObjetoCategoriaLogEmail();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogEmail))
			// retornando o id objeto
			return (Int) $objCategoriaLogEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_EMAIL);
	}
	
	/**
	 * Retorna o id dcategoria MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO
	 * 
	 * @return Integer
	 */
    public function retornaIdCategoriaEmailTemplateValidacaoPlainTextReenvio()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextReenvio = $this->retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextReenvio))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailValidacaoPlainTextReenvio->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}

	/**
	 * Retorna o id da categoria SISTEMA_EMAIL
	 * 
	 * @return Integer
	 */
    public function retornaIdCategoriaEmailSistema()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailSistema = $this->retornaObjetoCategoriaEmailSistema();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailSistema))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailSistema->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_SISTEMA_EMAIL);
	}

	/**
	 * Retorna id da categoria DESTINATARIO
	 * 
	 * @return Integer
	 */
    public function retornaIdCategoriaDestinatario()
	{
		// recuperando objeto categoria
		$objCategoriaDestinatario = $this->retornaObjetoCategoriaDestinatario();
		
		// verificando se o objeto foi recuperado
	    if (isset($objCategoriaDestinatario))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaDestinatario->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
	}

	/**
	 * Retorna o id da categoria REMETENTE
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaRemetente()
	{
		// recuperando objeto categoria
		$objCategoriaRemetente = $this->retornaObjetoCategoriaRemetente();

		// verificando se o objeto foi recuperado
	    if (isset($objCategoriaRemetente))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaRemetente->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
	}

	/**
	 * Retorna o id da categoria MENSAGEM_EMAIL_VALIDACAO_USUARIO
	 * 
	 * @return Integer 
	 */
	public function retornaIdCategoriaEmailValidacaoPlainText()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaEmailValidacaoPlainText();;

	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainText))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailValidacaoPlainText->id;
    	    
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	}

	/**
	 * Retorna o id da categoria EMAIL_PRIMARIO
	 * 
	 * @return Integer $categoriaEmailPrimario
	 */
	public function retornaIdCategoriaEmailPrimario()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailPrimario = $this->retornaObjetoCategoriaEmailPrimario();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailPrimario))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailPrimario->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO);
	}

	/**
	 * Retorna o id da categoria SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT
	 * 
	 * @return Integer
	 */
    public function retornaIdCategoriaEmailValidacaoPlainTextTemplate()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextTemplate = $this->retornaObjetoCategoriaEmailValidacaoPlainTextTemplate();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextTemplate))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailValidacaoPlainTextTemplate->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}
	
    /**
	 * Retorna o id da categoria SISTEMA_MENSAGEM_EMAIL_TEMPLATE_CONFIRMACAO_CADASTRO_PLAINTEXT
	 * 
	 * @return Integer
	 */
    public function retornaIdCategoriaEmailConfirmacaoCadastroPlainTextTemplate()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailConfirmacaoCadastroPlainTextTemplate = $this->retornaObjetoCategoriaEmailTemplateConfirmacaoCadastroPlainText();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailConfirmacaoCadastroPlainTextTemplate))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailConfirmacaoCadastroPlainTextTemplate->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_CONFIRMACAO_CADASTRO_PLAINTEXT);
	}

	/**
	 * Retorna o id da categoria da linguagem
	 *
	 * @param String $constanteLinguagem
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = $this->retornaObjetoCategoriaLinguagem($constanteLinguagem);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLinguagem))
			// retornando o id objeto
			return (Int) $objCategoriaLinguagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaIdCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = $this->retornaObjetoCategoriaLogValidacaoUsuario();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogValidacaoUsuario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogValidacaoUsuario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}

	/**
	 * Retorna o id da categoria LOG_NOVA_PESSOA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaPessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = $this->retornaObjetoCategoriaLogNovaPessoa();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoa->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}

	/**
	 * Retorna o id da categoria LOG_UPDATE_PESSOA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdatePessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdatePessoa = $this->retornaObjetoCategoriaLogUpdatePessoa();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoa))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdatePessoa->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_PESSOA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeletePessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeletePessoa = $this->retornaObjetoCategoriaLogDeletePessoa();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePessoa))
			// retornando o id da categoria
			return (Int) $objCategoriaLogDeletePessoa->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVA_RACA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaRaca()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaRaca = $this->retornaObjetoCategoriaLogNovaRaca();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaRaca))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaRaca->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_RACA);
	}

	/**
	 * Retorna o id da categoria LOG_UPDATE_RACA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateRaca()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdateRaca = $this->retornaObjetoCategoriaLogUpdateRaca();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateRaca))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdateRaca->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_RACA);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVO_COMPONENTE
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovoComponente = $this->retornaObjetoCategoriaLogNovoComponente();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoComponente))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovoComponente->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_COMPONENTE);
	}
	
    /**
	 * Retorna o id da categoria LOG_UPDATE_COMPONENTE
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdateComponente = $this->retornaObjetoCategoriaLogUpdateComponente();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateComponente))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdateComponente->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_COMPONENTE);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_COMPONENTE
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteComponente()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeleteComponente = $this->retornaObjetoCategoriaLogDeleteComponente();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteComponente))
			// retornando o id da categoria
			return (Int) $objCategoriaLogDeleteComponente->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_COMPONENTE);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVO_MODULO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoModulo()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovoModulo = $this->retornaObjetoCategoriaLogNovoModulo();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoModulo))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovoModulo->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_MODULO);
	}
	
    /**
	 * Retorna o id da categoria LOG_UPDATE_MODULO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateModulo()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdateModulo = $this->retornaObjetoCategoriaLogUpdateModulo();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateModulo))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdateModulo->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_MODULO);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_MODULO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteModulo()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeleteModulo = $this->retornaObjetoCategoriaLogDeleteModulo();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteModulo))
			// retornando o id da categoria
			return (Int) $objCategoriaLogDeleteModulo->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_MODULO);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVO_PERFIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoPerfil()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovoPerfil = $this->retornaObjetoCategoriaLogNovoPerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoPerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovoPerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_PERFIL);
	}
	
    /**
	 * Retorna o id da categoria LOG_UPDATE_PERFIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdatePerfil()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdatePerfil = $this->retornaObjetoCategoriaLogUpdatePerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdatePerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PERFIL);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_PERFIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeletePerfil()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeletePerfil = $this->retornaObjetoCategoriaLogDeletePerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogDeletePerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_PERFIL);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaPessoaPerfilMensagemCategoria()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaLogNovaPessoaPerfilMensagemCategoria();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfilMensagemCategoria))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoaPerfilMensagemCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}

    /**
	 * Retorna o id da categoria LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdatePessoaPerfilMensagemCategoria()
	{
		// recuperando objeto categoria
		$objCategoriaLogUpdatePessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaLogUpdatePessoaPerfilMensagemCategoria();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoaPerfilMensagemCategoria))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdatePessoaPerfilMensagemCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeletePessoaPerfilMensagemCategoria()
	{
		// recuperando objeto categoria
		$objCategoriaLogDeletePessoaPerfilMensagemCategoria = $this->retornaObjetoCategoriaLogDeletePessoaPerfilMensagemCategoria();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeletePessoaPerfilMensagemCategoria))
			// retornando o id da categoria
			return (Int) $objCategoriaLogDeletePessoaPerfilMensagemCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaIdCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = $this->retornaObjetoCategoriaLogNovaPessoaPerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoaPerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaIdCategoriaLogUpdatePessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdatePessoaPerfil = $this->retornaObjetoCategoriaLogUpdatePessoaPerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdatePessoaPerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogUpdatePessoaPerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = $this->retornaObjetoCategoriaLogNovoDadosPessoais();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_BIOMETRICOS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogNovoDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosBiometricos = $this->retornaObjetoCategoriaLogNovoDadosBiometricos();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosBiometricos))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoDadosBiometricos->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_BIOMETRICOS);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_BIOMETRICOS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogUpdateDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosBiometricos = $this->retornaObjetoCategoriaLogUpdateDadosBiometricos();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosBiometricos))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateDadosBiometricos->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_BIOMETRICOS);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_BIOMETRICOS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogNovoDadosPessoasPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosBiometricos = $this->retornaObjetoCategoriaLogNovoDadosBiometricos();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosBiometricos))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoDadosBiometricos->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_BIOMETRICOS);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAS_PERFIS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogUpdateDadosPessoasPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosBiometricos = $this->retornaObjetoCategoriaLogUpdateDadosPessoasPerfis();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosBiometricos))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateDadosBiometricos->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAS_PERFIS);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_WEBSITE
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogNovoWebsite()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoWebsite = $this->retornaObjetoCategoriaLogNovoWebsite();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoWebsite))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoWebsite->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_WEBSITE);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogUpdateDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosPessoais = $this->retornaObjetoCategoriaLogUpdateDadosPessoais();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogDeleteDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosPessoais = $this->retornaObjetoCategoriaLogDeleteDadosPessoais();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_WEBSITE
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogUpdateWebsite()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateWebsite = $this->retornaObjetoCategoriaLogUpdateWebsite();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateWebsite))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateWebsite->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_WEBSITE);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogNovoLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoLogin = $this->retornaObjetoCategoriaLogNovoLogin();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoLogin))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoLogin->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return integer
	 */
	public function retornaIdCategoriaLogUpdateLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateLogin = $this->retornaObjetoCategoriaLogUpdateLogin();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateLogin))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateLogin->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN);
	}
	
	/**
	 * Retorna o id da categoria LOG_NOVO_EMAIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = $this->retornaObjetoCategoriaLogNovoEmail();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}

	/**
	 * Retorna o id da categoria LOG_UPDATE_EMAIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateEmail = $this->retornaObjetoCategoriaLogUpdateEmail();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateEmail))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_EMAIL
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteEmail = $this->retornaObjetoCategoriaLogDeleteEmail();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteEmail))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_EMAIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaCategoria = $this->retornaObjetoCategoriaLogNovaCategoria();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaCategoria))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_CATEGORIA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateCategoria = $this->retornaObjetoCategoriaLogUpdateCategoria();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateCategoria))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_CATEGORIA);
	}
	
    /**
	 * Retorna o id da categoria LOG_DELETE_CATEGORIA
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteCategoria = $this->retornaObjetoCategoriaLogDeleteCategoria();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteCategoria))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_CATEGORIA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACAO_APLICACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcaoAplicacao = $this->retornaObjetoCategoriaLogNovaAcaoAplicacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcaoAplicacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaAcaoAplicacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACAO_APLICACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcaoAplicacao = $this->retornaObjetoCategoriaLogUpdateAcaoAplicacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcaoAplicacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateAcaoAplicacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACAO_APLICACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteAcaoAplicacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcaoAplicacao = $this->retornaObjetoCategoriaLogDeleteAcaoAplicacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcaoAplicacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteAcaoAplicacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACAO_APLICACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_DADOS_PESSOAS_PERFIS
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteDadosPessoasPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosPessoasPerfis = $this->retornaObjetoCategoriaLogDeleteDadosPessoasPerfis();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosPessoasPerfis))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteDadosPessoasPerfis->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_PESSOAS_PERFIS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_FORMULARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFromulario = $this->retornaObjetoCategoriaLogDeleteFormulario();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFromulario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteFromulario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACAO_APLICACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteDadosBiometricos()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteDadosBiometricos = $this->retornaObjetoCategoriaLogDeleteAcaoAplicacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteDadosBiometricos))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteDadosBiometricos->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_DADOS_BIOMETRICOS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaLogNovaAcoesAplicacaoMetodosValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcoesAplicacaoMetodosValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaAcoesAplicacaoMetodosValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaLogUpdateAcoesAplicacaoMetodosValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateAcoesAplicacaoMetodosValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteAcoesAplicacaoMetodosValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao = $this->retornaObjetoCategoriaLogDeleteAcoesAplicacaoMetodosValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteAcoesAplicacaoMetodosValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_METODOS_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaLogNovaAcoesAplicacaoPerfis();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaAcoesAplicacaoPerfis))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaAcoesAplicacaoPerfis->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaLogUpdateAcoesAplicacaoPerfis();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateAcoesAplicacaoPerfis))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateAcoesAplicacaoPerfis->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_ACOES_APLICACAO_PERFIS
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteAcoesAplicacaoPerfis()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteAcoesAplicacaoPerfis = $this->retornaObjetoCategoriaLogDeleteAcoesAplicacaoPerfis();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteAcoesAplicacaoPerfis))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteAcoesAplicacaoPerfis->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_ACOES_APLICACAO_PERFIS);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_METODO_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoMetodoValidacao = $this->retornaObjetoCategoriaLogNovoMetodoValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoMetodoValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoMetodoValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_METODO_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_METODO_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateMetodoValidacao = $this->retornaObjetoCategoriaLogUpdateMetodoValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateMetodoValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateMetodoValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_METODO_VALIDACAO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_DELETE_METODO_VALIDACAO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteMetodoValidacao()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteMetodoValidacao = $this->retornaObjetoCategoriaLogDeleteMetodoValidacao();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteMetodoValidacao))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteMetodoValidacao->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_METODO_VALIDACAO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaIdCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = $this->retornaObjetoCategoriaLogNovoToken();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoToken->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaIdCategoriaLogUpdateToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateToken = $this->retornaObjetoCategoriaLogUpdateToken();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateToken))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateToken->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_TOKEN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = $this->retornaObjetoCategoriaLogNovaMensagem();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaMensagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_MENSAGEM
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateMensagem = $this->retornaObjetoCategoriaLogUpdateMensagem();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateMensagem))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateMensagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_MENSAGEM);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_MENSAGEM
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteMensagem = $this->retornaObjetoCategoriaLogDeleteMensagem();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteMensagem))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteMensagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_MENSAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormulario = $this->retornaObjetoCategoriaLogNovoFormulario();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormulario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormulario = $this->retornaObjetoCategoriaLogUpdateFormulario();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormulario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateFormulario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoGrupoFormularioElemento = $this->retornaObjetoCategoriaLogNovoGrupoFormularioElemento();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoGrupoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoGrupoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_GRUPO_FORMULARIO_ELEMENTO);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateGrupoFormularioElemento = $this->retornaObjetoCategoriaLogUpdateGrupoFormularioElemento();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateGrupoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateGrupoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_GRUPO_FORMULARIO_ELEMENTO);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteGrupoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteGrupoFormularioElemento = $this->retornaObjetoCategoriaLogDeleteGrupoFormularioElemento();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteGrupoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteGrupoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_GRUPO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = $this->retornaObjetoCategoriaLogNovoFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElemento = $this->retornaObjetoCategoriaLogUpdateFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = $this->retornaObjetoCategoriaLogNovoFormularioElementoFilter();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoFilter->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoFilter = $this->retornaObjetoCategoriaLogUpdateFormularioElementoFilter();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoFilter))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateFormularioElementoFilter->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_FILTER);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoFilter = $this->retornaObjetoCategoriaLogDeleteFormularioElementoFilter();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoFilter))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteFormularioElementoFilter->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaLogNovoFormularioElementoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o id do objeto
			return (int) $objCategoriaLogNovoFormularioElementoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaLogUpdateFormularioElementoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoFormularioElementoValidador))
			// retornando o id do objeto
			return (int) $objCategoriaLogUpdateFormularioElementoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
    /**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaLogDeleteFormularioElementoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoFormularioElementoValidador))
			// retornando o id do objeto
			return (int) $objCategoriaLogDeleteFormularioElementoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = $this->retornaObjetoCategoriaLogNovoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioElementoValidador = $this->retornaObjetoCategoriaLogUpdateFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioElementoValidador))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioElementoValidador = $this->retornaObjetoCategoriaLogDeleteFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioElementoValidador))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = $this->retornaObjetoCategoriaLogNovoFormularioFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateFormularioFormularioElemento = $this->retornaObjetoCategoriaLogUpdateFormularioFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateFormularioFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateFormularioFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_DELETE_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogDeleteFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogDeleteFormularioFormularioElemento = $this->retornaObjetoCategoriaLogDeleteFormularioFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogDeleteFormularioFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogDeleteFormularioFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_DELETE_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = $this->retornaObjetoCategoriaLogNovoFormularioTemplate();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioTemplate))
			// retorna o id do objeto
			return (Int) $objCategoriaLogNovoFormularioTemplate->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_OUTPUT
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogNovoOutput()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoOutput = $this->retornaObjetoCategoriaLogNovoOutput();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retorna o id do objeto
			return (Int) $objCategoriaLogNovoOutput->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_OUTPUT);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_OUTPUT
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogUpdateOutput()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateOutput = $this->retornaObjetoCategoriaLogUpdateOutput();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateOutput))
			// retorna o id do objeto
			return (Int) $objCategoriaLogUpdateOutput->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_OUTPUT);
	}

	/** Retorna o id do objeto carregado com a categoria LOG_TENTATIVA_AUTENTICACA_USUARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogTentativaAutenticacaoUsuario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogTentativaAutenticacaoUsuario = $this->retornaObjetoCategoriaLogTentativaAutenticacaoUsuario();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogTentativaAutenticacaoUsuario))
			// retorna o id do objeto
			return (Int) $objCategoriaLogTentativaAutenticacaoUsuario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_TENTATIVA_AUTENTICACAO_USUARIO);
	}

	/**
	 * Retorna um array de objetos Basico_Model_Categoria contendo as linguas ativas no sistema
	 * 
	 * @return null|Array
	 */
	public function retornaCategoriasLinguasAtivas()
	{	
		// recuperando o id do tipo categoria LINGUAGEM
		$idTipoCategoriaLinguagem = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaLinguagem();
		
		// recuperando booleano especifico para o banco de dados em uso
		$booleanAtivo = Basico_OPController_PersistenceOPController::bdRetornaBoolean(true);
		
		if (is_bool($booleanAtivo))
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = true";
		else
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = 1";

		// recuperando categorias de liguas ativas
		$objsCategoriasLinguasAtivas = $this->_model->fetchList($condicao);
		
		// retornando o array de objetos contendo as categorias de linguas ativas
		return $objsCategoriasLinguasAtivas;
	}

	/**
	 * Retorna array contendo os nomes das categorias que nao estao implementadas no ZendFramework
	 * do formulario passado por parametro (objeto)
	 * 
	 * @param Integer $idFormulario
	 * 
	 * @return Array|null
	 */
	public function retornaArrayNomesCategoriasComponentesNaoZFPorIdFormulario($idFormulario)
	{
		// inicializando variaveis
		$arrayRetorno = array();

		// verificando se o id passado eh valido
		if ((int) $idFormulario <= 0)
			return null;

		// query para retornar os nomes das categorias dos componentes nao ZF
		$queryNomesCategoriasComponentesNaoZFFormulario = "SELECT DISTINCT ccomp.nome

														   FROM formulario_formulario_elemento ffe
														   LEFT JOIN formulario f ON (ffe.id_formulario = f.id)
														   LEFT JOIN formulario_elemento fe ON (ffe.id_formulario_elemento = fe.id)
														   LEFT JOIN componente comp ON (fe.id_componente = comp.id)
														   LEFT JOIN categoria ccomp ON (comp.id_categoria = ccomp.id)
															
														   WHERE ccomp.nome NOT IN ('COMPONENTE_DOJO', 'COMPONENTE_ZF')
														   AND f.id = {$idFormulario}";

		// recuperando resultado da query
		$arrayRetornoQuery = Basico_OPController_PersistenceOPController::bdRetornaArraySQLQuery($queryNomesCategoriasComponentesNaoZFFormulario);

		// verificando o resultado da consulta
		if (count($arrayRetornoQuery) <= 0)
			return null;

		// loop para preencher o array de resultados
		foreach ($arrayRetornoQuery as $arrayLinhaQuery)
			$arrayRetorno[] = $arrayLinhaQuery['nome'];

		// retornando resultado
		return $arrayRetorno;
	}

	/**
	 * Retorna o nome da categoria de log referente uma acao de controlador de acoes
	 * 
	 * @param String $nomeAcaoControlador
	 * @param String $nomeAcao
	 * 
	 * @return String
	 */
	
	public static function retornaNomeCategoriaLogAcaoControlador($nomeControlador, $nomeAcao)
	{
		// retornando o nome da categoria de log
		return "LOG_CALL_" . strtoupper($nomeControlador) . "_" . strtoupper($nomeAcao) . "_ACTION";
	}

	/**
	 * Retorna o id e uma categoria de log de acao de controlador a partir do nome da caegoria de log.
	 * Permite a criacao da categoria caso nao exista
	 * 
	 * @param String $nomeCategoriaLog
	 * @param Boolean $forceCreation
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaLogAcaoControladorPorNomeCategoria($nomeCategoriaLogAcaoControlador, $forceCreation = false)
	{
		// recuperando o objeto categoria atraves do nome da categoria
		$objCategoria = $this->retornaObjetoCategoriaPorNomeCategoria($nomeCategoriaLogAcaoControlador);

		// verificando se o objeto foi carregado
		if (isset($objCategoria))
			// retornando o id da categoria localizada
			return $objCategoria->id;
		// verificando se foi passado o parametro que forca a criacao de uma nova categoria, caso ela nao exista
		else if ($forceCreation) {
			// instanciando controladores
			$rowinfoOPController = Basico_OPController_RowinfoOPController::getInstance();

			// recuperando um modelo vazio
			$objCategoria = $this->retornaNovoObjetoCategoria();

			// carregando informacoes sobre a categoria
			$objCategoria->tipoCategoria = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaSistema();
			$objCategoria->categoria     = $this->retornaIdCategoriaLog();
			$objCategoria->nivel         = 2;
			$objCategoria->ativo         = true;
			$objCategoria->nome          = $nomeCategoriaLogAcaoControlador;
			$objCategoria->descricao     = DESCRICAO_LOG_CHAMADA_ACAO_CONTROLADOR;
			// preparando o XML do rowinfo
			$rowinfoOPController->prepareXml($objCategoria, true);
			$objCategoria->rowinfo       = $rowinfoOPController->getXml();

			// salvando o objeto categoria
			$this->salvarCategoria($objCategoria);

			// retornando o id da categoria recem criada
			return $this->_model->id;
		}
	}

	/**
	 * Retorna o id da categoria PERFIL_USUARIO
	 * 
	 * @return Integer
	 */
	public function retornaIdCategoriaPerfilUsuario()
	{
		// recuperando o id do tipo categoria PERFIL
		$idTipoCategoriaPerfil = Basico_OPController_TipoCategoriaOPController::getInstance()->retornaIdTipoCategoriaPerfil();

		// recupernado o objeto categoria PERFIL_USUARIO
		$objCategoria = $this->retornaObjetoCategoriaAtivaPorNomeCategoriaIdTipoCategoria(CATEGORIA_PERFIL_USUARIO, $idTipoCategoriaPerfil);

		// verificando se o objeto foi recuperado
		if (isset($objCategoria))
			// retornando id
			return $objCategoria->id;
		else
			// estourando excecao
			throw new Exception(MSG_ERRO_CATEGORIA_PERFIL_USUARIO);

		return null;
	}
	
	/**
	 * Salva categoria no banco
	 * 
	 * @param Basico_Model_Categoria $objCategoria
	 * @param Integer|null $versaoUpdate
	 * @param Integer|null $idPessoaPerfilCriador
	 * 
	 * @return void
	 */
	public function salvarCategoria(Basico_Model_Categoria $objCategoria, $versaoUpdate = null, $idPessoaPerfilCriador = null)
	{
    	try {
    		// instanciando controladores
    		$pessoaPerfilOPController = Basico_OPController_PessoaPerfilOPController::getInstance();

    		// verificando se a operacao esta sendo realizada por um usuario ou pelo sistema
	    	if (!isset($idPessoaPerfilCriador))
	    		$idPessoaPerfilCriador = $pessoaPerfilOPController->retornaIdPessoaPerfilSistema();

	    	// verificando se trata-se de uma nova tupla ou atualizacao
	    	if ($objCategoria->id != NULL) {
	    		// carregando informacoes de log de atualizacao de registro
	    		$idCategoriaLog = $this->retornaIdCategoriaLogUpdateAcaoAplicacao();
	    		$mensagemLog    = LOG_MSG_UPDATE_CATEGORIA;
	    	} else {
	    		// carregando informacoes de log de novo registro
	    		$idCategoriaLog = $this->retornaIdCategoriaLogNovaCategoria();
	    		$mensagemLog    = LOG_MSG_NOVA_CATEGORIA;    		
	    	}

			// salvando o objeto através do controlador Save
	    	Basico_OPController_PersistenceOPController::bdSave($objCategoria, $versaoUpdate, $idPessoaPerfilCriador, $idCategoriaLog, $mensagemLog);

	    	// atualizando o objeto
    		$this->_model = $objCategoria;

    	} catch (Exception $e) {

    		throw new Exception($e);
    	}
	}
}