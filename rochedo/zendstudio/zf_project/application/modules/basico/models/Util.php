<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Util model
 *
 * @subpackage Model
 */
class Basico_Model_Util
{
    public static function mkdir_recursive($caminho, $folderRights = 0777)
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
    
    public static function getFileContent($filename)
    {        
        return file_get_contents($filename);
    }
    
    public static function getUrlContent($uri)
    {
        $encodedUri = urldecode($uri);
        
        return file_get_contents($encodedUri);
    }
    
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
	
	public static function retornaUserConnectionType()
	{
		return $_SERVER["HTTP_CONNECTION"];
	}
	
	public static function retornaUserAgent()
	{
		return $_SERVER["HTTP_USER_AGENT"];
	}
	
	public static function retornaUserRequest()
	{
		return Zend_Controller_Front::getInstance()->getRequest();
	}
}