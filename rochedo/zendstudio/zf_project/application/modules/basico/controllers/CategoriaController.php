<?php

class Basico_CategoriaController 
{
	static private $singleton;
	private $categoria;
	
	private function __construct()
	{
		$this->categoria = new Basico_Model_Categoria();
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_CategoriaController();
		}
		return self::$singleton;
	}
	
	public function retornaCategoria($nomeCategoria)
	{
		$auxCategoria = self::$singleton->categoria->fetchList("nome = '{$nomeCategoria}'", null, 1, 0);
		if (isset($auxCategoria[0]))
    	    return $auxCategoria[0];
    	return NULL;
    	
	}
	
	// CATEGORIAS DE E-MAIL
	public function retornaCategoriaEmailPrimario()
	{
	    $categoriaEmailPrimario = $this->retornaCategoria(EMAIL_PRIMARIO);
	    if (isset($categoriaEmailPrimario))
    	    return $categoriaEmailPrimario;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO);
	}
	
	public function retornaCategoriaEmailValidacaoPlainText()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	}
	
    public function retornaCategoriaEmailValidacaoPlainTextReenvio()
	{
	    $categoriaEmailValidacaoPlainTextReenvio = $this->retornaCategoria(MENSAGEM_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	    if (isset($categoriaEmailValidacaoPlainTextReenvio))
    	    return $categoriaEmailValidacaoPlainTextReenvio;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_REENVIO);
	}
	
	public function retornaCategoriaRemetente()
	{
		$categoriaRemetente = $this->retornaCategoria(REMETENTE);
	    if (isset($categoriaRemetente))
    	    return $categoriaRemetente;
    	throw new Exception(MSG_ERRO_REMETENTE);
	}
	
    public function retornaCategoriaDestinatario()
	{
		$categoriaDestinatario = $this->retornaCategoria(DESTINATARIO);
	    if (isset($categoriaDestinatario))
    	    return $categoriaDestinatario;
    	throw new Exception(MSG_ERRO_DESTINATARIO);
	}
	
    public function retornaCategoriaEmailValidacaoPlainTextTemplate()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(SISTEMA_MENSAGEM_EMAIL_TEMPLATE_VALIDACAO_USUARIO_PLAINTEXT);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}
	
    public function retornaCategoriaEmailSistema()
	{
	    $categoriaEmailValidacaoPlainText = $this->retornaCategoria(SISTEMA_EMAIL);
	    if (isset($categoriaEmailValidacaoPlainText))
    	    return $categoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_SISTEMA_EMAIL);
	}
	
	// CATEGORIAS DE LOG
	
	public function retornaCategoriaLogValidacaoUsuario()
	{
		$categoriaLogValidacaoUsuario = $this->retornaCategoria(LOG_VALIDACAO_USUARIO);
		if (isset($categoriaLogValidacaoUsuario))
			return $categoriaLogValidacaoUsuario;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_VALIDACAO_USUARIO);
	}
	
	public function retornaCategoriaLogNovaPessoa()
	{
		$categoriaLogNovaPessoa = $this->retornaCategoria(LOG_NOVA_PESSOA);
		if (isset($categoriaLogNovaPessoa))
			return $categoriaLogNovaPessoa;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA);
	}
	
	public function retornaCategoriaLogNovaPessoaPerfil()
	{
		$categoriaLogNovaPessoaPerfil = $this->retornaCategoria(LOG_NOVA_PESSOA_PERFIL);
		if (isset($categoriaLogNovaPessoaPerfil))
			return $categoriaLogNovaPessoaPerfil;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_PESSOA_PERFIL);
	}
	
	public function retornaCategoriaLogNovoDadosPessoais()
	{
		$categoriaLogNovoDadosPessoais = $this->retornaCategoria(LOG_NOVO_DADOS_PESSOAIS);
		if (isset($categoriaLogNovoDadosPessoais))
			return $categoriaLogNovoDadosPessoais;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_DADOS_PESSOAIS);
	}
	
	public function retornaCategoriaLogNovoEmail()
	{
		$categoriaLogNovoEmail = $this->retornaCategoria(LOG_NOVO_EMAIL);
		if (isset($categoriaLogNovoEmail))
			return $categoriaLogNovoEmail;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVO_EMAIL);
	}
	
	public function retornaCategoriaLogNovaMensagem()
	{
		$categoriaLogNovaMensagem = $this->retornaCategoria(LOG_NOVA_MENSAGEM);
		if (isset($categoriaLogNovaMensagem))
			return $categoriaLogNovaMensagem;
		throw new Exception(MSG_ERRO_CATEGORIA_LOG_NOVA_MENSAGEM);
	}
}