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
	private function retornaObjetoCategoria($nomeCategoria)
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
	private static function retornaObjetoCategoriaAtiva($nomeCategoria, $tipoCategoria = null)
	{
		// verificando se o controlador foi instanciando
		if (!self::$singleton)
			self::init();

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
	private function retornaObjetoCategoriaEmailPrimario()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailPrimario = self::retornaObjetoCategoriaAtiva(EMAIL_PRIMARIO);
	    
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
	private function retornaObjetoCategoriaEmailValidacaoPlainText()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = self::retornaObjetoCategoriaAtiva(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);

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
    private function retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextReenvio = self::retornaObjetoCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	    
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
	private function retornaObjetoCategoriaRemetente()
	{
		// recuperando objeto categoria
		$objCategoriaRemetente = self::retornaObjetoCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);

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
    private function retornaObjetoCategoriaDestinatario()
	{
		// recuperando objeto categoria
		$objCategoriaDestinatario = self::retornaObjetoCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
		
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
    private function retornaObjetoCategoriaEmailValidacaoPlainTextTemplate()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = self::retornaObjetoCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	    
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
    private function retornaObjetoCategoriaEmailSistema()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = self::retornaObjetoCategoriaAtiva(SISTEMA_EMAIL);
	    
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
	private function retornaObjetoCategoriaLogEmail()
	{
		// recuperando objeto categoria
		$objCategoriaLogEmail = self::retornaObjetoCategoriaAtiva(LOG_EMAIL);

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
	private function retornaObjetoCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = self::retornaObjetoCategoriaAtiva(LOG_VALIDACAO_USUARIO);
		
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
	private function retornaObjetoCategoriaLogNovaPessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoa))
			// retornando o objeto
			return $objCategoriaLogNovaPessoa;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	private function retornaObjetoCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o objeto
			return $objCategoriaLogNovaPessoaPerfil;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = self::retornaObjetoCategoriaAtiva(LOG_NOVO_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogNovoDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
    /**
	 * Retorna o objeto carregado com a categoria LOG_UPDATE_DADOS_PESSOAIS
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogUpdateDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosPessoais = self::retornaObjetoCategoriaAtiva(LOG_UPDATE_DADOS_PESSOAIS);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosPessoais))
			// retornando o objeto
			return $objCategoriaLogUpdateDadosPessoais;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS);
	}
	
		/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovoLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoLogin = self::retornaObjetoCategoriaAtiva(LOG_NOVO_LOGIN);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoLogin))
			// retornando o objeto
			return $objCategoriaLogNovoLogin;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN);
	}
	

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * 
	 * @return Basico_Model_Categoria 
	 */
	private function retornaObjetoCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = self::retornaObjetoCategoriaAtiva(LOG_NOVO_EMAIL);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o objeto
			return $objCategoriaLogNovoEmail;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    private function retornaObjetoCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = self::retornaObjetoCategoriaAtiva(LOG_TOKEN_VALIDACAO_USUARIO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return $objCategoriaLogNovoToken;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = self::retornaObjetoCategoriaAtiva(LOG_NOVA_MENSAGEM);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return $objCategoriaLogNovaMensagem;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * 
	 * @return Basico_Model_Categoria
	 */
	private static function retornaObjetoCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = self::retornaObjetoCategoriaAtiva($constanteLinguagem);

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
	private function retornaObjetoCategoriaLogNovoFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormulario = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO);
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o objeto
			return $objCategoriaLogNovoFormulario;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FILTER
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFilter
	 */
	private function retornaObjetoCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFilter;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria 
	 */
	private function retornaObjetoCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioElementoValidador;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO
	 * 
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	private function retornaObjetoCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o objeto
			return $objCategoriaLogNovoFormularioFormularioElemento;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

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
	private function retornaObjetoCategoriaLogNovoOutput()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoOutput = self::retornaObjetoCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retornando o objeto
			return $objCategoriaLogNovoOutput;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_OUTPUT
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogNovaPessoaPerfilMensagemCategoria()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfilMensagemCategoria = self::retornaObjetoCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfilMensagemCategoria))
			// retornando o objeto
			return $objCategoriaLogNovaPessoaPerfilMensagemCategoria;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_CATEGORIA_CHAVE_ESTRANGEIRA
	 * 
	 * @return Basico_Model_Categoria
	 */
	private function retornaObjetoCategoriaLogCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogCategoriaChaveEstrangeira = self::retornaObjetoCategoriaAtiva(LOG_CATEGORIA_CHAVE_ESTRANGEIRA);

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
	private function retornaObjetoCategoriaLogRelacaoCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogRelacaoCategoriaChaveEstrangeira = self::retornaObjetoCategoriaAtiva(LOG_RELACAO_CATEGORIA_CHAVE_ESTRANGEIRA);

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
	private function retornaObjetoCategoriaCVC()
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
		$objCategoriaCVC = self::retornaObjetoCategoriaAtiva(CATEGORIA_CVC, $objTipoCategoriaCVC[0]->id);
		
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
	public static function retornaIdCategoriaCVC()
	{
		// recuperando objeto categoria
		$objCategoriaCVC = self::retornaObjetoCategoriaCVC();
		
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
	public static function retornaIdCategoriaLogCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogCategoriaChaveEstrangeira = self::retornaObjetoCategoriaLogCategoriaChaveEstrangeira();

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
	public static function retornaIdCategoriaLogRelacaoCategoriaChaveEstrangeira()
	{
		// recuperando o objeto categoria
		$objCategoriaLogRelacaoCategoriaChaveEstrangeira = self::retornaObjetoCategoriaLogRelacaoCategoriaChaveEstrangeira();

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
	public static function retornaIdCategoriaLogEmail()
	{
		// recuperando objeto categoria
		$objCategoriaLogEmail = self::retornaObjetoCategoriaLogEmail();

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
    public static function retornaIdCategoriaEmailTemplateValidacaoPlainTextReenvio()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextReenvio = self::retornaObjetoCategoriaEmailTemplateValidacaoPlainTextReenvio();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextReenvio))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailValidacaoPlainTextReenvio->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}

	/**
	 * Retorna o objeto carregado com a categoria SISTEMA_EMAIL
	 * 
	 * @return Integer
	 */
    public static function retornaIdCategoriaEmailSistema()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailSistema = self::retornaObjetoCategoriaEmailSistema();
	    
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
    public static function retornaIdCategoriaDestinatario()
	{
		// recuperando objeto categoria
		$objCategoriaDestinatario = self::retornaObjetoCategoriaDestinatario();
		
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
	public static function retornaIdCategoriaRemetente()
	{
		// recuperando objeto categoria
		$objCategoriaRemetente = self::retornaObjetoCategoriaRemetente();

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
	public static function retornaIdCategoriaEmailValidacaoPlainText()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainText = self::retornaObjetoCategoriaEmailValidacaoPlainText();;

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
	public static function retornaIdCategoriaEmailPrimario()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailPrimario = self::retornaObjetoCategoriaEmailPrimario();
	    
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
    public static function retornaIdCategoriaEmailValidacaoPlainTextTemplate()
	{
		// recuperando objeto categoria
	    $objCategoriaEmailValidacaoPlainTextTemplate = self::retornaObjetoCategoriaEmailValidacaoPlainTextTemplate();
	    
	    // verificando se o objeto foi recuperado
	    if (isset($objCategoriaEmailValidacaoPlainTextTemplate))
	    	// retornando o id objeto
    	    return (Int) $objCategoriaEmailValidacaoPlainTextTemplate->id;

    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}

	/**
	 * Retorna o id da categoria da linguagem
	 *
	 * @param String $constanteLinguagem
	 * 
	 * @return Integer
	 */
	static public function retornaIdCategoriaLinguagem($constanteLinguagem)
	{
		// recuperando o objeto categoria
		$objCategoriaLinguagem = self::retornaObjetoCategoriaLinguagem($constanteLinguagem);

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
	public static function retornaIdCategoriaLogValidacaoUsuario()
	{
		// recuperando objeto categoria
		$objCategoriaLogValidacaoUsuario = self::retornaObjetoCategoriaLogValidacaoUsuario();

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
	public static function retornaIdCategoriaLogNovaPessoa()
	{
		// recuperando objeto categoria
		$objCategoriaLogNovaPessoa = self::retornaObjetoCategoriaLogNovaPessoa();
		
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
		$objCategoriaLogNovaPessoaPerfilMensagemCategoria = self::retornaObjetoCategoriaLogNovaPessoaPerfilMensagemCategoria();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfilMensagemCategoria))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoaPerfilMensagemCategoria->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL_MENSAGEM_CATEGORIA);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * 
	 * @return Basico_Model_Categoria
	 */
	public static function retornaIdCategoriaLogNovaPessoaPerfil()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaPessoaPerfil = self::retornaObjetoCategoriaLogNovaPessoaPerfil();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaPessoaPerfil))
			// retornando o id da categoria
			return (Int) $objCategoriaLogNovaPessoaPerfil->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoDadosPessoais = self::retornaObjetoCategoriaLogNovoDadosPessoais();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_UPDATE_DADOS_PESSOAIS
	 * 
	 * @return integer
	 */
	public static function retornaIdCategoriaLogUpdateDadosPessoais()
	{
		// recuperando o objeto categoria
		$objCategoriaLogUpdateDadosPessoais = self::retornaObjetoCategoriaLogUpdateDadosPessoais();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogUpdateDadosPessoais))
			// retornando o id do objeto
			return (Int) $objCategoriaLogUpdateDadosPessoais->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_UPDATE_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_LOGIN
	 * 
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoLogin()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoLogin = self::retornaObjetoCategoriaLogNovoLogin();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoLogin))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoLogin->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_LOGIN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoEmail()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoEmail = self::retornaObjetoCategoriaLogNovoEmail();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoEmail))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoEmail->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * 
	 * @return Basico_Model_Categoria
	 */
    public static function retornaIdCategoriaLogNovoToken()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoToken = self::retornaObjetoCategoriaLogNovoToken();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoToken))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoToken->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovaMensagem()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovaMensagem = self::retornaObjetoCategoriaLogNovaMensagem();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovaMensagem))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovaMensagem->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormulario()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormulario = self::retornaObjetoCategoriaLogNovoFormulario();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormulario))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormulario->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElemento = self::retornaObjetoCategoriaLogNovoFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFilter()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFilter = self::retornaObjetoCategoriaLogNovoFormularioElementoFilter();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFilter))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoFilter->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoFormularioElementoValidador = self::retornaObjetoCategoriaLogNovoFormularioElementoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoFormularioElementoValidador))
			// retornando o id do objeto
			return (int) $objCategoriaLogNovoFormularioElementoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoValidador()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioElementoValidador = self::retornaObjetoCategoriaLogNovoFormularioElementoValidador();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioElementoValidador))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioElementoValidador->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioFormularioElemento()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioFormularioElemento = self::retornaObjetoCategoriaLogNovoFormularioFormularioElemento();
		
		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoFormularioFormularioElemento))
			// retornando o id do objeto
			return (Int) $objCategoriaLogNovoFormularioFormularioElemento->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * 
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioTemplate()
	{
		// recuperando o objeto categoria
		$objCategoriaLogNovoFormularioTemplate = self::retornaObjetoCategoriaLogNovoFormularioTemplate();

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
		$objCategoriaLogNovoOutput = self::retornaObjetoCategoriaLogNovoOutput();

		// verificando se o objeto foi recuperado
		if (isset($objCategoriaLogNovoOutput))
			// retorna o id do objeto
			return (Int) $objCategoriaLogNovoOutput->id;

		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna um array de objetos Basico_Model_Categoria contendo as linguas ativas no sistema
	 * 
	 * @return null|Array
	 */
	public static function retornaCategoriasLinguasAtivas()
	{
		// instanciando modelos
		$modeloCategoria = new Basico_Model_Categoria();
		
		// recuperando o id do tipo categoria LINGUAGEM
		$idTipoCategoriaLinguagem = Basico_TipoCategoriaControllerController::retornaIdTipoCategoriaLinguagem();
		
		// recuperando booleano especifico para o banco de dados em uso
		$booleanAtivo = Basico_PersistenceControllerController::bdRetornaBoolean(true);
		
		if (is_bool($booleanAtivo))
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = true";
		else
			$condicao = "id_tipo_categoria = {$idTipoCategoriaLinguagem} and ativo = 1";

		// recuperando categorias de liguas ativas
		$objsCategoriasLinguasAtivas = $modeloCategoria->fetchList($condicao);
		
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
	public static function retornaArrayNomesCategoriasComponentesNaoZFFormulario($idFormulario)
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