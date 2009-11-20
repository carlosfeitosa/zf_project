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
	
	public function retornaCategoriaEmailPrimario()
	{
	    $catergoriaEmailPrimario = $this->retornaCategoria(EMAIL_PRIMARIO);
	    if (isset($catergoriaEmailPrimario))
    	    return $catergoriaEmailPrimario;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_PRIMARIO_NAO_ENCONTRADO);
	}
	
	public function retornaCategoriaEmailValidacaoPlainText()
	{
	    $catergoriaEmailValidacaoPlainText = $this->retornaCategoria(EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	    if (isset($catergoriaEmailValidacaoPlainText))
    	    return $catergoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT);
	}
	
    public function retornaCategoriaEmailValidacaoPlainTextTemplate()
	{
	    $catergoriaEmailValidacaoPlainText = $this->retornaCategoria(EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	    if (isset($catergoriaEmailValidacaoPlainText))
    	    return $catergoriaEmailValidacaoPlainText;
    	throw new Exception(MSG_ERRO_CATEGORIA_EMAIL_VALIDACAO_USUARIO_PLAINTEXT_TEMPLATE);
	}
}