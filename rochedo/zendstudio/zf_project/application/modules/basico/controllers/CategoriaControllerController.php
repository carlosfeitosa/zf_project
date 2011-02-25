<?php
/**
 * Controlador Categoria
 * 
 * 
 * @uses Basico_Model_Categoria
 */

// requerindo arquivos dependentes
require_once("TipoCategoriaControllerController.php");

class Basico_CategoriaControllerController
{
	/**
	 *  
	 * @var Basico_CategoriaControllerController object
	 */
	private static $_singleton;
	
	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	private $_categoria;
	
	/**
	 * Construtor do Controlador Categoria
	 * 
	 * @return Basico_Model_Categoria $categoria
	 */
	private function __construct()
	{
		// instanciando o modelo
		$this->_categoria = $this->retornaNovoObjetoCategoria();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_CategoriaControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}
	
	/**
	 * Recupera a instancia do controlador Basico_CategoriaControllerController
	 * 
	 * @return Basico_CategoriaControllerController
	 */
	public static function getInstance()
	{
		// verificando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_CategoriaControllerController();
		}
		// retornando instancia
		return self::$_singleton;
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
		$objCategoria = $this->_categoria->fetchList("nome = '{$nomeCategoria}'", null, 1, 0);

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
		$objsCategoria = $this->_categoria->fetchList($condicaoSQL, null, 1, 0);
		
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

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
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

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_FORMULARIO_TEMPLATE);
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
	public function retornaObjetoCategoriaLogRelacaoCategoriaChaveEstrangeira()
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
		$modelTipoCategoria = Basico_TipoCategoriaControllerController::getInstance()->retornaNovoObjetoTipoCategoria();
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
	public function retornaIdCategoriaLogRelacaoCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogRelacaoCategoriaChaveEstrangeira = $this->retornaObjetoCategoriaLogRelacaoCategoriaChaveEstrangeira();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogRelacaoCategoriaChaveEstrangeira))
			// retornando o id objeto
			return (Int) $objCategoriaLogRelacaoCategoriaChaveEstrangeira->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);
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
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
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
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_EMAIL
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
		$idTipoCategoriaLinguagem = Basico_TipoCategoriaControllerController::getInstance()->retornaIdTipoCategoriaLinguagem();
		
		// recuperando booleano especifico para o banco de dados em uso
		$booleanAtivo = Basico_PersistenceControllerController::bdRetornaBoolean(true);
		
		if (is_bool($booleanAtivo))
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = true";
		else
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = 1";

		// recuperando categorias de liguas ativas
		$objsCategoriasLinguasAtivas = $this->_categoria->fetchList($condicao);
		
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
		$arrayRetornoQuery = Basico_PersistenceControllerController::bdRetornaArraySQLQuery($queryNomesCategoriasComponentesNaoZFFormulario);

		// verificando o resultado da consulta
		if (count($arrayRetornoQuery) <= 0)
			return null;

		// loop para preencher o array de resultados
		foreach ($arrayRetornoQuery as $arrayLinhaQuery)
			$arrayRetorno[] = $arrayLinhaQuery['nome'];

		// retornando resultado
		return $arrayRetorno;
	}
}