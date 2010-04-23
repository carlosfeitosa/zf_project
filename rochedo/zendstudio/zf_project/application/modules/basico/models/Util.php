<?php
/**
 * Util model
 *
 * @subpackage Model
 */
class Basico_Model_Util
{
	/**
	 * Cria diretorios recursivamente.
	 * @param String $caminho
	 * @param int $folderRights
	 * @return Boolean
	 */
    public static function mkdirRecursive($caminho, $folderRights = 0777)
    {
        try {
    	    $dirs = explode('/', $caminho);
    	    $dir='';
    	    foreach ($dirs as $part) 
    	    {
    	        $dir.=$part.'/';
    	        if (!is_dir($dir) && strlen($dir)>0)
                    mkdir($dir, $folderRights);
    	    }
    	    return true;
        }
        catch (Exception $e) {
            throw new Exception($e->getMessage());
        }
        return false;
    }
    
    /**
     * Retorna Conteúdo de Arquivo.
     * @param String $filename
     * @return String
     */
    public static function getFileContent($filename)
    {        
        return file_get_contents($filename);
    }
    
    /**
     * Retorna conteúdo de uma uri passada como parametro.
     * @param String $uri
     * @return String
     */
    public static function getUrlContent($uri)
    {
        $encodedUri = urldecode($uri);
        
        return file_get_contents($encodedUri);
    }
    
    /**
     * Retorna o id da PessoaPefil do sistema.
     * @return Int
     */
	public static function retornaIdPessoaPerfilSistema()
	{
	    $login = new Basico_Model_Login();
	    $perfil = new Basico_Model_Perfil();
	    $pessoaPerfil = new Basico_Model_PessoaPerfil();

	    $applicationSystemLogin = APPLICATION_SYSTEM_LOGIN;
	    $applicationSystemPerfil = APPLICATION_SYSTEM_PERFIL;
	    
	    $loginSistema = $login->fetchList("login = '{$applicationSystemLogin}'", null, 1, 0);
	       
	    if (count($loginSistema) === 0)
	        throw new Exception(MSG_ERRO_USUARIO_MASTER_NAO_ENCONTRADO);
	        
        $perfilSistema = $perfil->fetchList("nome = '{$applicationSystemPerfil}'", null, 1, 0);
        
        if (count($perfilSistema) === 0)
	        throw new Exception(MSG_ERROR_PERFIL_SISTEMA_NAO_ENCONTRADO);
	        
        $pessoaPerfilSistema = $pessoaPerfil->fetchList("id_pessoa = {$loginSistema[0]->pessoa} and id_perfil = {$perfilSistema[0]->id}", null, 1, 0);
        
        if (!$pessoaPerfilSistema[0]->id)
            throw new Exception(MSG_ERROR_PESSOAPERFIL_SISTEMA_NAO_ENCONTRADO);

        return $pessoaPerfilSistema[0]->id;
	}
	
	/**
	 * Retorna IP do usuário.
	 * @return String
	 */
	public static function retornaUserIp()
	{
		if (!empty($_SERVER["HTTP_CLIENT_IP"]))
			$userIp = $_SERVER["HTTP_CLIENT_IP"];
		else if (!empty($_SERVER["HTTP_X_FORWARDED_FOR"]))
			$userIp = $_SERVER["HTTP_X_FORWARDED_FOR"];
		else
			$userIp = $_SERVER["REMOTE_ADDR"];
			
		return $userIp;
	}
	
	/**
	 * Retorna tipo da conexão do usuário.
	 * @return String
	 */
	public static function retornaUserConnectionType()
	{
		return $_SERVER["HTTP_CONNECTION"];
	}
	
	/**
	 * Retorna o nome do browser, sistema operacional utilizado.
	 * @return String
	 */
	public static function retornaUserAgent()
	{
		return $_SERVER["HTTP_USER_AGENT"];
	}
	
	/**
	 * Retorna requisição do usuário.
	 * @return Array
	 */
	public static function retornaUserRequest()
	{
		return Zend_Controller_Front::getInstance()->getRequest();
	}
	
	/**
	 * Checa se está no ambiente de desenvolvimento
	 * @return Boolean
	 */
	public static function ambienteDesenvolvimento()
	{
		return (strpos(APPLICATION_ENV, 'development') !== false);
	}
	
	/**
	 * Retorna a data passada em timestamp ou timestamp atual se não for passado nenhum parametro
	 * @param $data
	 * @return Integer
	 */
	public static function retornaTimestamp($data = null)
	{
		if ($data != null) {
			return strtotime($data);
		}else{
		    return Zend_Date::now()->getTimestamp();	
		}
	}
	
	/**
	 * Retorna a datetime atual
	 * @param $data
	 * @return Integer
	 */
	public static function retornaDateTimeAtual()
	{
	    return Zend_Date::now('en-us');
	}
}