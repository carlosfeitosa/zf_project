<?php

// INCLUDES

class Basico_LogController
{
	static private $singleton;
	private $log;
	private $logFS;
	
	private function __construct()
	{
		$this->log = new Basico_Model_Log();
		
		if (!file_exists(LOG_PATH))
		    Basico_Model_Util::mkdir_recursive(LOG_PATH);
		
        $logFormatter = new Zend_Log_Formatter_Simple('[%timestamp% - %priorityName% (%priority%)]: %message%' . PHP_EOL);

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
}
