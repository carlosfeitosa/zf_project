<?php

class Basico_LogController
{
	static private $singleton;
	private $log;
	private $logFS;
	private $gerador;
	
	private function __construct()
	{
		$this->log = new Basico_Model_Log();
//		$this->gerador = new Basico_Model_Gerador();
		
		if (!file_exists(LOG_PATH))
		    Basico_Model_Util::mkdir_recursive(LOG_PATH);
		
        $logFormatter = new Zend_Log_Formatter_Simple(LOG_FORMAT);

        $logWriterFS = new Zend_Log_Writer_Stream(LOG_FULL_FILENAME);      
        $logWriterFS->setFormatter($logFormatter);
		
		$this->logFS = new Zend_Log($logWriterFS); 
	}
	
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_LogController();
		}
		return self::$singleton;
	}
	
	public function salvaLogFS($mensagem, $prioridade = LOG_PRIORITY_INFORMACAO)
	{
	    $this->logFS->log($mensagem, $prioridade);
	}
	
	public function leLogFS($ano = null, $mes = null)
	{
	    if (!isset($ano) or !isset($mes))
	        $arquivoLog = LOG_FULL_FILENAME;
	    else
	        $arquivoLog = LOG_FILENAME_PREFIX . (String) $ano . (String) $mes . LOG_FILENAME_SULFIX;
	    
	    Basico_Model_Util::getFileContent($arquivoLog);
	}
	
	public function getXml()
	{
        return $this->gerador->getGeradorXmlObject()->gerar($this, NULL, NULL, 'log', 'xml_data', 'log', 'agilfap2_desenv/public/xsd/log_db.xsd');
	}
	
	public function salvarLog($novoLog)
	{
		try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	try{
	    		$this->log = $novoLog;
				$this->log->save();
				$auxDb->commit();
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->log = $novoLog;
			$this->log->save();
	    }
	}
	
	/**
	* Prepare xml
	* 
	* @return null|Boolean
	*/
	public function prepareXml($modelo)
	{
		try {
		        if (!isset($modelo->id))
		        {
		            $this->rowinfo->setGenericDateTimeCreation(Zend_Date::now());
		            $this->rowinfo->setGenericIdLoginCreation($idPessoaPerfil);
		        }
		        $this->rowinfo->setGenericDateTimeLastModified(Zend_Date::now());
		        $this->rowinfo->setGenericIdLoginLastModified($idPessoaPerfil);
		        
		        return true;	
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}