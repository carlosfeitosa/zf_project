<?php
/**
 * Controlador Categoria
 * 
 * 
 * @uses Basico_Model_Categoria
 */
class Basico_CategoriaControllerController
{
	/**
	 *  
	 * @var Basico_CategoriaController object
	 */
	static private $singleton;
	
	/**
	 * 
	 * @var Basico_Model_Categoria object
	 */
	private $categoria;
	
	/**
	 * Construtor do Controlador Categoria
	 * 
	 * @return Basico_Model_Categoria $categoria
	 */
	private function __construct()
	{
		$this->categoria = new Basico_Model_Categoria();
	}
	
	/**
	 * Inicializador do Controlador Categoria
	 * 
	 * @return Basico_CategoriaController $singleton
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			
			self::$singleton = new Basico_CategoriaControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro ou NULL se
	 * ela não existir no banco.
	 * 
	 * @param String $nomeCategoria
	 * 
	 * @return Basico_Model_Categoria or NULL
	 */
	public function retornaObjetoCategoria($nomeCategoria)
	{
		// recuperando objeto categoria
		$objCategoria = self::$singleton->categoria->fetchList("nome = '{$nomeCategoria}'", null, 1, 0);

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
	public function retornaObjetoCategoriaAtiva($nomeCategoria, $tipoCategoria = null)
	{
		// checando o tipo de categoria e condicionando query
		if ((isset($tipoCategoria)) and ($tipoCategoria >= 1))
			$whereSQL = "nome = '{$nomeCategoria}' and id_tipo_categoria = {$tipoCategoria}";
		else
			$whereSQL = "nome = '{$nomeCategoria}'";

		// recuperando objeto categoria
		$arrayObjsCategoria = self::$singleton->categoria->fetchList($whereSQL, null, 1, 0);
		
		// verificando se o objeto foi recuperado
		if (isset($arrayObjsCategoria[0])) {
			// verificando se a categoria esta ativa
			if ($arrayObjsCategoria[0]->ativo == 1)
				// retornando objeto
			   return $arrayObjsCategoria[0];
			   	
		    throw new Exception(MSG_ERRO_CATEGORIA_NAO_ATIVA);
		    
		} else {
    	    return null;
		}
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
	    $objCategoriaEmailPrimario = $this->retornaObjetoCategoriaAtiva(EMAIL_PRIMARIO);
	    
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
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtiva(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);

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
	    $objCategoriaEmailValidacaoPlainTextReenvio = $this->retornaObjetoCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextReenvio))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainTextReenvio;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria REMETENTE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaRemetente()
	{
		// recuperando objeto categoria
		$objCategoriaRemetente = $this->retornaObjetoCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);

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
		$objCategoriaDestinatario = $this->retornaObjetoCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
		
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
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	    
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
	    $objCategoriaEmailValidacaoPlainText = $this->retornaObjetoCategoriaAtiva(SISTEMA_EMAIL);
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainText))
	    	// retornando o objeto
    	    return $objCategoriaEmailValidacaoPlainText;

    	throw new Exception(MSG_ERRO_CATEGORIA_SISTEMA_EMAIL);
	}
	
	/** CATEGORIAS DE LOG */
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = $this->retornaObjetoCategoriaAtiva(LOG_VALIDACAO_USUARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogValidacaoUsuario))
			// retornando o objeto
			return $objCategoriaLogValidacaoUsuario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public static function retornaIdCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = self::retornaObjetoCategoriaAtiva(LOG_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogValidacaoUsuario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogValidacaoUsuario->id;

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
		$objCategoriaLogNovaPessoa = $this->retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o objeto
			return $objCategoriaLogNovaPessoa;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
	/**
	 * Retorna o id da categoria LOG_NOVA_PESSOA
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovaPessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoa->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
    /**
	 * Retorna o id da categoria LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovaPessoaPerfilMensagemCategoria()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoa->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = $this->retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o objeto
			return $objCategoriaLogNovaPessoaPerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria
	 */
	public static function retornaIdCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoaPerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogNovoDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = self::retornaObjetoCategoriaAtiva(LOG_NOVO_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	public function retornaObjetoCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o objeto
			return $objCategoriaLogNovoEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = self::retornaObjetoCategoriaAtiva(LOG_NOVO_EMAIL);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public function retornaObjetoCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = $this->retornaObjetoCategoriaAtiva(LOG_TOKEN_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return $objCategoriaLogNovoToken;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public static function retornaIdCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = self::retornaObjetoCategoriaAtiva(LOG_TOKEN_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoToken->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = $this->retornaObjetoCategoriaAtiva(LOG_NOVA_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return $objCategoriaLogNovaMensagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = self::retornaObjetoCategoriaAtiva(LOG_NOVA_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaMensagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = $this->retornaObjetoCategoriaAtiva($constanteLinguagem);

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
		$objCategoriaLogNovoFormulario = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o objeto
			return $objCategoriaLogNovoFormulario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormulario = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormulario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FILTER
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFilter
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFilter;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoFilter->id;

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
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o id do objeto
			return (int) $objCategoriaLogNovoFormularioElementoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public function retornaObjetoCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Basico_Model_Categoria
	 */
	public function retornaObjetoCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioTemplate))
			// retornando o id do objeto
			return $objCategoriaLogNovoFormularioTemplate;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioTemplate))
			// retorna o id do objeto
			return (Int) $objCategoriaLogNovoFormularioTemplate->id;

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
		$objCategoriaLogNovoOutput = $this->retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retornando o objeto
			return $objCategoriaLogNovoOutput;

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
		$objCategoriaLogNovoOutput = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retorna o id do objeto
			return (Int) $objCategoriaLogNovoOutput->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria CVC
	 * 
	 * @return Basico_Model_Categoria $categoriaCVC
	 */
	public function retornaObjetoCategoriaCVC()
	{
		// inicializando variaveis
		$modelTipoCategoria = new Basico_Model_TipoCategoria();
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
		$objCategoriaCVC = $this->retornaObjetoCategoriaAtiva(CATEGORIA_CVC, $objTipoCategoriaCVC[0]->id);
		
		// checando se objeto foi recuperado
		if (isset($objCategoriaCVC))
			// retornando objeto
			return $objCategoriaCVC;
			
		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}
}