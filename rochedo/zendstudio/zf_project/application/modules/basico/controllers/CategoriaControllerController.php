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
	 * @return Basico_Model_Categoria $categoria
	 */
	private function __construct()
	{
		$this->categoria = new Basico_Model_Categoria();
	}
	
	/**
	 * Inicializador do Controlador Categoria
	 * @return Basico_CategoriaController $singleton
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_CategoriaControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro ou NULL se
	 * ela não existir no banco.
	 * @param String $nomeCategoria
	 * @return Basico_Model_Categoria or NULL
	 */
	public function retornaCategoria($nomeCategoria)
	{
		$auxCategoria = self::$singleton->categoria->fetchList("nome = '{$nomeCategoria}'", null, 1, 0);
		if (isset($auxCategoria[0]))
    	    return $auxCategoria[0];
    	return NULL;
    	
	}
	
    /**
	 * Retorna o objeto categoria carregado com os dados da categoria passada como parâmetro se esta estiver ATIVA
	 * ou NULL se ela não existir no banco.
	 * Permite a indicacao do tipo de categoria
	 * @param String $nomeCategoria
	 * @param integer $tipoCategoria
	 * @return Basico_Model_Categoria or NULL
	 */
	public function retornaCategoriaAtiva($nomeCategoria, $tipoCategoria = null)
	{
		if ((isset($tipoCategoria)) and ($tipoCategoria >= 1))
			$whereSQL = "nome = '{$nomeCategoria}' and id_tipo_categoria = {$tipoCategoria}";
		else
			$whereSQL = "nome = '{$nomeCategoria}'";
		 
		$auxCategoria = self::$singleton->categoria->fetchList($whereSQL, null, 1, 0);
		if (isset($auxCategoria[0])) {
			
			if ($auxCategoria[0]->ativo == 1)
			   return $auxCategoria[0];	
		    throw new Exception(MSG_ERRO_CATEGORIA_NAO_ATIVA);
		    
		}else{
    	    return NULL;
		}
    	
	}
	
	/** CATEGORIAS DE E-MAIL */
	
	/**
	 * Retorna o objeto carregado com a categoria EMAIL_PRIMARIO
	 * @return Basico_Model_Categoria $categoriaEmailPrimario
	 */
	public function retornaCategoriaEmailPrimario()
	{
	    $categoriaEmailPrimario = $this->retornaCategoriaAtiva(EMAIL_PRIMARIO);
	    if (isset($categoriaEmailPrimario))
    	    return $categoriaEmailPrimario;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO);
	}
	
	
	/**
	 * Retorna o objeto carregado com a categoria MENSAGEM_EMAIL_VALIDACAO_USUARIO
	 * @return Basico_Model_Categoria $categoriaEmailValidacaoPlainText
	 */
	public function retornaCategoriaEmailValidacaoPlainText()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoriaAtiva(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO
	 * @return Basico_Model_Categoria $categoriaEmailValidacaoPlainTextReenvio
	 */
    public function retornaCategoriaEmailTemplateValidacaoPlainTextReenvio()
	{
	    $categoriaEmailValidacaoPlainTextReenvio = $this->retornaCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	    if (isset($categoriaEmailValidacaoPlainTextReenvio))
    	    return $categoriaEmailValidacaoPlainTextReenvio;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria REMETENTE
	 * @return Basico_Model_Categoria $categoriaRemetente
	 */
	public function retornaCategoriaRemetente()
	{
		$categoriaRemetente = $this->retornaCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
	    if (isset($categoriaRemetente))
    	    return $categoriaRemetente;
    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria DESTINATARIO
	 * @return Basico_Model_Categoria $categoriaDestinatario
	 */
    public function retornaCategoriaDestinatario()
	{
		$categoriaDestinatario = $this->retornaCategoriaAtiva(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
	    if (isset($categoriaDestinatario))
    	    return $categoriaDestinatario;
    	throw new Exception(MSG_ERRO_CATEGORIA_MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT
	 * @return Basico_Model_Categoria $categoriaEmailValidacaoPlainText
	 */
    public function retornaCategoriaEmailValidacaoPlainTextTemplate()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoriaAtiva(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria SISTEMA_EMAIL
	 * @return Basico_Model_Categoria $categoriaEmailValidacaoPlainText
	 */
    public function retornaCategoriaEmailSistema()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoriaAtiva(SISTEMA_EMAIL);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_SISTEMA_EMAIL);
	}
	
	/** CATEGORIAS DE LOG */
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * @return Basico_Model_Categoria $categoriaLogValidacaoUsuario
	 */
	public function retornaCategoriaLogValidacaoUsuario()
	{
		$categoriaLogValidacaoUsuario = $this->retornaCategoriaAtiva(LOG_VALIDACAO_USUARIO);
		if (isset($categoriaLogValidacaoUsuario))
			return $categoriaLogValidacaoUsuario;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_VALIDACAO_USUARIO
	 * @return Basico_Model_Categoria $categoriaLogValidacaoUsuario
	 */
	public static function retornaIdCategoriaLogValidacaoUsuario()
	{
		$categoriaLogValidacaoUsuario = self::retornaCategoriaAtiva(LOG_VALIDACAO_USUARIO);
		if (isset($categoriaLogValidacaoUsuario))
			return (Int) $categoriaLogValidacaoUsuario->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA
	 * @return Basico_Model_Categoria $categoriaLogNovaPessoa
	 */
	public function retornaCategoriaLogNovaPessoa()
	{
		$categoriaLogNovaPessoa = $this->retornaCategoriaAtiva(LOG_NOVA_PESSOA);
		if (isset($categoriaLogNovaPessoa))
			return $categoriaLogNovaPessoa;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
	/**
	 * Retorna o id da categoria LOG_NOVA_PESSOA
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovaPessoa()
	{
		$categoriaLogNovaPessoa = self::retornaCategoriaAtiva(LOG_NOVA_PESSOA);
		if (isset($categoriaLogNovaPessoa))
			return (Int) $categoriaLogNovaPessoa->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * @return Basico_Model_Categoria $categoriaLogNovaPessoaPerfil
	 */
	public function retornaCategoriaLogNovaPessoaPerfil()
	{
		$categoriaLogNovaPessoaPerfil = $this->retornaCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL);
		if (isset($categoriaLogNovaPessoaPerfil))
			return $categoriaLogNovaPessoaPerfil;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * @return Basico_Model_Categoria $categoriaLogNovaPessoaPerfil
	 */
	public static function retornaIdCategoriaLogNovaPessoaPerfil()
	{
		$categoriaLogNovaPessoaPerfil = self::retornaCategoriaAtiva(LOG_NOVA_PESSOA_PERFIL);
		if (isset($categoriaLogNovaPessoaPerfil))
			return (Int) $categoriaLogNovaPessoaPerfil->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * @return Basico_Model_Categoria $categoriaLogNovoDadosPessoais
	 */
	public function retornaCategoriaLogNovoDadosPessoais()
	{
		$categoriaLogNovoDadosPessoais = $this->retornaCategoriaAtiva(LOG_NOVO_DADOS_PESSOAIS);
		if (isset($categoriaLogNovoDadosPessoais))
			return $categoriaLogNovoDadosPessoais;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoDadosPessoais()
	{
		$categoriaLogNovoDadosPessoais = self::retornaCategoriaAtiva(LOG_NOVO_DADOS_PESSOAIS);
		if (isset($categoriaLogNovoDadosPessoais))
			return (Int) $categoriaLogNovoDadosPessoais->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * @return Basico_Model_Categoria $categoriaLogNovoEmail
	 */
	public function retornaCategoriaLogNovoEmail()
	{
		$categoriaLogNovoEmail = $this->retornaCategoriaAtiva(LOG_NOVO_EMAIL);
		if (isset($categoriaLogNovoEmail))
			return $categoriaLogNovoEmail;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoEmail()
	{
		$categoriaLogNovoEmail = self::retornaCategoriaAtiva(LOG_NOVO_EMAIL);
		if (isset($categoriaLogNovoEmail))
			return (Int) $categoriaLogNovoEmail->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * @return Basico_Model_Categoria $categoriaLogNovoToken
	 */
    public function retornaCategoriaLogNovoToken()
	{
		$categoriaLogNovoToken = $this->retornaCategoriaAtiva(LOG_TOKEN_VALIDACAO_USUARIO);
		if (isset($categoriaLogNovoToken))
			return $categoriaLogNovoToken;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_TOKEN_VALIDACAO_USUARIO
	 * @return Basico_Model_Categoria $categoriaLogNovoToken
	 */
    public static function retornaIdCategoriaLogNovoToken()
	{
		$categoriaLogNovoToken = self::retornaCategoriaAtiva(LOG_TOKEN_VALIDACAO_USUARIO);
		if (isset($categoriaLogNovoToken))
			return (Int) $categoriaLogNovoToken->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * @return Basico_Model_Categoria $categoriaLogNovaMensagem
	 */
	public function retornaCategoriaLogNovaMensagem()
	{
		$categoriaLogNovaMensagem = $this->retornaCategoriaAtiva(LOG_NOVA_MENSAGEM);
		if (isset($categoriaLogNovaMensagem))
			return $categoriaLogNovaMensagem;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * @return Basico_Model_Categoria $categoriaLogNovaMensagem
	 */
	public static function retornaIdCategoriaLogNovaMensagem()
	{
		$categoriaLogNovaMensagem = self::retornaCategoriaAtiva(LOG_NOVA_MENSAGEM);
		if (isset($categoriaLogNovaMensagem))
			return (Int) $categoriaLogNovaMensagem->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * @return Basico_Model_Categoria $categoriaLinguagem
	 */
	public function retornaCategoriaLinguagem($constanteLinguagem)
	{
		$categoriaLinguagem = $this->retornaCategoriaAtiva($constanteLinguagem);
		if (isset($categoriaLinguagem))
			return $categoriaLinguagem;
		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * @return Basico_Model_Categoria $categoriaLogNovoFormulario
	 */
	public function retornaCategoriaLogNovoFormulario()
	{
		$categoriaLogNovoFormulario = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO);
		if (isset($categoriaLogNovoFormulario))
			return $categoriaLogNovoFormulario;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormulario()
	{
		$categoriaLogNovoFormulario = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO);
		if (isset($categoriaLogNovoFormulario))
			return (Int) $categoriaLogNovoFormulario->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElemento
	 */
	public function retornaCategoriaLogNovoFormularioElemento()
	{
		$categoriaLogNovoFormularioElemento = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO);
		if (isset($categoriaLogNovoFormularioElemento))
			return $categoriaLogNovoFormularioElemento;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElemento()
	{
		$categoriaLogNovoFormularioElemento = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO);
		if (isset($categoriaLogNovoFormularioElemento))
			return (Int) $categoriaLogNovoFormularioElemento->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FILTER
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFilter
	 */
	public function retornaCategoriaLogNovoFormularioElementoFilter()
	{
		$categoriaLogNovoFormularioElementoFilter = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
		if (isset($categoriaLogNovoFormularioElementoFilter))
			return $categoriaLogNovoFormularioElementoFilter;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFilter()
	{
		$categoriaLogNovoFormularioElementoFilter = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
		if (isset($categoriaLogNovoFormularioElementoFilter))
			return (Int) $categoriaLogNovoFormularioElementoFilter->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FILTER);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoFormularioElementoValidador
	 */
	public function retornaCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		$categoriaLogNovoFormularioElementoFormularioElementoValidador = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
		if (isset($categoriaLogNovoFormularioElementoFormularioElementoValidador))
			return $categoriaLogNovoFormularioElementoFormularioElementoValidador;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR
	 * @return integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoFormularioElementoValidador()
	{
		$categoriaLogNovoFormularioElementoFormularioElementoValidador = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
		if (isset($categoriaLogNovoFormularioElementoFormularioElementoValidador))
			return (int) $categoriaLogNovoFormularioElementoFormularioElementoValidador->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public function retornaCategoriaLogNovoFormularioElementoValidador()
	{
		$categoriaLogNovoFormularioElementoValidador = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
		if (isset($categoriaLogNovoFormularioElementoValidador))
			return $categoriaLogNovoFormularioElementoValidador;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public static function retornaIdCategoriaLogNovoFormularioElementoValidador()
	{
		$categoriaLogNovoFormularioElementoValidador = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
		if (isset($categoriaLogNovoFormularioElementoValidador))
			return (Int) $categoriaLogNovoFormularioElementoValidador->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public function retornaCategoriaLogNovoFormularioFormularioElemento()
	{
		$categoriaLogNovoFormularioFormularioElemento = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
		if (isset($categoriaLogNovoFormularioFormularioElemento))
			return $categoriaLogNovoFormularioFormularioElemento;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}
	
	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_ELEMENTO_VALIDADOR
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioElementoValidador
	 */
	public static function retornaIdCategoriaLogNovoFormularioFormularioElemento()
	{
		$categoriaLogNovoFormularioFormularioElemento = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
		if (isset($categoriaLogNovoFormularioFormularioElemento))
			return (Int) $categoriaLogNovoFormularioFormularioElemento->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_FORMULARIO_ELEMENTO);
	}

	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * @return Basico_Model_Categoria $categoriaLogNovoFormularioTemplate
	 */
	public function retornaCategoriaLogNovoFormularioTemplate()
	{
		$categoriaLogNovoFormularioTemplate = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);
		if (isset($categoriaLogNovoFormularioTemplate))
			return $categoriaLogNovoFormularioTemplate;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_FORMULARIO_TEMPLATE
	 * @return Integer
	 */
	public static function retornaIdCategoriaLogNovoFormularioTemplate()
	{
		$categoriaLogNovoFormularioTemplate = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);
		if (isset($categoriaLogNovoFormularioTemplate))
			return (Int) $categoriaLogNovoFormularioTemplate->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_OUTPUT
	 * @return Basico_Model_Categoria $categoriaLogNovoOutput
	 */
	public function retornaCategoriaLogNovoOutput()
	{
		$categoriaLogNovoOutput = $this->retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);
		if (isset($categoriaLogNovoOutput))
			return $categoriaLogNovoOutput;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}

	/**
	 * Retorna o id do objeto carregado com a categoria LOG_NOVO_OUTPUT
	 * @return Basico_Model_Categoria $categoriaLogNovoOutput
	 */
	public function retornaIdCategoriaLogNovoOutput()
	{
		$categoriaLogNovoOutput = self::retornaCategoriaAtiva(LOG_NOVO_FORMULARIO_TEMPLATE);
		if (isset($categoriaLogNovoOutput))
			return (Int) $categoriaLogNovoOutput->id;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_FORMULARIO_TEMPLATE);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria CVC
	 * @return Basico_Model_Categoria $categoriaCVC
	 */
	public function retornaCategoriaCVC()
	{
		// recuperando o id do tipo categoria CVC
		$modelTipoCategoria = new Basico_Model_TipoCategoria();
		$nomeTipoCategoriaCVC = TIPO_CATEGORIA_CVC;
		$objTipoCategoriaCVC = $modelTipoCategoria->fetchList("nome = '{$nomeTipoCategoriaCVC}'", null, 1, 0);
		if (isset($objTipoCategoriaCVC[0]))
			$idTipoCategoriaCVC = $objTipoCategoriaCVC[0]->id;
		else
			throw new Exception(MSG_ERRO_TIPO_CATEGORIA_CVC);
		
		$categoriaCVC = $this->retornaCategoriaAtiva(CATEGORIA_CVC, $objTipoCategoriaCVC[0]->id);
		if (isset($categoriaCVC))
			return $categoriaCVC;
		throw new Exception(MSG_ERRO_CATEGORIA_CVC);
	}
	
}