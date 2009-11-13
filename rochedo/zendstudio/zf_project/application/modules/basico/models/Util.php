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
}