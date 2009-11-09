<?php
/**
 * This is automatically generated file using the BOZA Framework generator
 * version 1.0
 */
 
/**
 * Log model
 *
 * Utilizes the Data Mapper pattern to persist data.
 * 
 * @uses       Default_Model_LogMapper
 * @subpackage Model
 */
class Basico_Model_Util
{
    public function mkdir_recursive($caminho, $folderRights=0777)
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
    }
}