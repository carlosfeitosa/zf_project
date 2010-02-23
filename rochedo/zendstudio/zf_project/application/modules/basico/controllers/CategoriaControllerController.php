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
	
	/** CATEGORIAS DE E-MAIL */
	
	/**
	 * Retorna o objeto carregado com a categoria EMAIL_PRIMARIO
	 * @return Basico_Model_Categoria $categoriaEmailPrimario
	 */
	public function retornaCategoriaEmailPrimario()
	{
	    $categoriaEmailPrimario = $this->retornaCategoria(EMAIL_PRIMARIO);
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
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
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
	    $categoriaEmailValidacaoPlainTextReenvio = $this->retornaCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
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
		$categoriaRemetente = $this->retornaCategoria(MENSAGEM_PESSOAS_ENVOLVIDAS_REMETENTE);
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
		$categoriaDestinatario = $this->retornaCategoria(MENSAGEM_PESSOAS_ENVOLVIDAS_DESTINATARIO);
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
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
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
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(SISTEMA_EMAIL);
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
		$categoriaLogValidacaoUsuario = $this->retornaCategoria(LOG_VALIDACAO_USUARIO);
		if (isset($categoriaLogValidacaoUsuario))
			return $categoriaLogValidacaoUsuario;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA
	 * @return Basico_Model_Categoria $categoriaLogNovaPessoa
	 */
	public function retornaCategoriaLogNovaPessoa()
	{
		$categoriaLogNovaPessoa = $this->retornaCategoria(LOG_NOVA_PESSOA);
		if (isset($categoriaLogNovaPessoa))
			return $categoriaLogNovaPessoa;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_PESSOA_PERFIL
	 * @return Basico_Model_Categoria $categoriaLogNovaPessoaPerfil
	 */
	public function retornaCategoriaLogNovaPessoaPerfil()
	{
		$categoriaLogNovaPessoaPerfil = $this->retornaCategoria(LOG_NOVA_PESSOA_PERFIL);
		if (isset($categoriaLogNovaPessoaPerfil))
			return $categoriaLogNovaPessoaPerfil;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_DADOS_PESSOAIS
	 * @return Basico_Model_Categoria $categoriaLogNovoDadosPessoais
	 */
	public function retornaCategoriaLogNovoDadosPessoais()
	{
		$categoriaLogNovoDadosPessoais = $this->retornaCategoria(LOG_NOVO_DADOS_PESSOAIS);
		if (isset($categoriaLogNovoDadosPessoais))
			return $categoriaLogNovoDadosPessoais;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVO_EMAIL
	 * @return Basico_Model_Categoria $categoriaLogNovoEmail
	 */
	public function retornaCategoriaLogNovoEmail()
	{
		$categoriaLogNovoEmail = $this->retornaCategoria(LOG_NOVO_EMAIL);
		if (isset($categoriaLogNovoEmail))
			return $categoriaLogNovoEmail;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
    public function retornaCategoriaLogNovoToken()
	{
		$categoriaLogNovoToken = $this->retornaCategoria(LOG_TOKEN_VALIDACAO_USUARIO);
		if (isset($categoriaLogNovoToken))
			return $categoriaLogNovoToken;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_TOKEN);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria LOG_NOVA_MENSAGEM
	 * @return Basico_Model_Categoria $categoriaLogNovaMensagem
	 */
	public function retornaCategoriaLogNovaMensagem()
	{
		$categoriaLogNovaMensagem = $this->retornaCategoria(LOG_NOVA_MENSAGEM);
		if (isset($categoriaLogNovaMensagem))
			return $categoriaLogNovaMensagem;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}
	
	/**
	 * Retorna o objeto carregado com a categoria da linguagem 
	 * @return Basico_Model_Categoria $categoriaLinguagem
	 */
	public function retornaCategoriaLinguagem($constanteLinguagem)
	{
		$categoriaLinguagem = $this->retornaCategoria($constanteLinguagem);
		if (isset($categoriaLinguagem))
			return $categoriaLinguagem;
		throw new Exception(MSG_ERRO_CATEGORIA_LINGUAGEM);
	}
}