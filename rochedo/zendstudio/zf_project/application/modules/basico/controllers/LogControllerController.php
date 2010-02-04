<?php
/**
 * Inclui arquivos do sistema.
 */
require_once(APPLICATION_PATH . "/modules/basico/models/Gerador.php");

/**
 * 
 * Controlador de Logs do sistema.
 *
 */
class Basico_LogControllerController
{
	/**
	 * Instância do controlador Log.
	 * @var Basico_LogController
	 */
	static private $singleton;
	
	/**
	 * Instância do Modelo de Log.
	 * @var Basico_Model_Log
	 */
	private $log;
	
	/**
	 * Instância da classe Zend_Log.
	 * @var unknown_type
	 */
	private $logFS;
	
	/**
	 * Instância do Modelo Gerador
	 * @var Basico_Model_Gerador
	 */
	private $gerador;
	
	/**
	 * Construtor do Controlador de Log.
	 * @return void
	 */
	private function __construct()
	{
		$this->log = new Basico_Model_Log();
		$this->gerador = new Basico_Model_Gerador();
		
		if (!file_exists(LOG_PATH))
		    Basico_Model_Util::mkdirRecursive(LOG_PATH);
		
        $logFormatter = new Zend_Log_Formatter_Simple(LOG_FORMAT);

        $logWriterFS = new Zend_Log_Writer_Stream(LOG_FULL_FILENAME);      
        $logWriterFS->setFormatter($logFormatter);
		
		$this->logFS = new Zend_Log($logWriterFS); 
	}
	
	/**
	 * Retorna Instância do Controlador de log.
	 * @return Basico_LogController
	 */
	static public function init()
	{
		if(self::$singleton == NULL){
			self::$singleton = new Basico_LogControllerController();
		}
		return self::$singleton;
	}
	
	/**
	 * 
	 * @param $mensagem
	 * @param $prioridade
	 * @return unknown_type
	 */
	public function salvaLogFS($mensagem, $prioridade = LOG_PRIORITY_INFORMACAO)
	{
	    $this->logFS->log($mensagem, $prioridade);
	}
	
	/**
	 * 
	 * @param $ano
	 * @param $mes
	 * @return unknown_type
	 */
	public function leLogFS($ano = null, $mes = null)
	{
	    if (!isset($ano) or !isset($mes))
	        $arquivoLog = LOG_FULL_FILENAME;
	    else
	        $arquivoLog = LOG_FILENAME_PREFIX . (String) $ano . (String) $mes . LOG_FILENAME_SULFIX;
	    
	    Basico_Model_Util::getFileContent($arquivoLog);
	}
	
	/**
	 * 
	 * @param $novoLog
	 * @return unknown_type
	 */
	public function salvarLog($novoLog)
	{
		try {
	    	$auxDb = Zend_Registry::get('db');
	    	$auxDb->beginTransaction();
	    	try{
	    		$this->log = $novoLog;
	    		$this->prepareXml($novoLog);
				$this->log->save();
				$auxDb->commit();
	    	} catch (Exception $e) {
	    		$auxDb->rollback();
	    	}
	    } catch (Exception $e) {
	    	$this->log = $novoLog;
	    	$this->prepareXml($novoLog);
			$this->log->save();
	    }
	}
	
	/**
	* Prepare xml
	* 
	* @return null|Boolean
	*/
	private function prepareXml($modelo)
	{
		try {
				$logXml = new Basico_Model_LogXml(array("eventDateTime"    => $modelo->dataHoraEvento,
														"eventDescription" => $modelo->descricao,));
				
				$this->log->xml = $this->gerador->getGeradorXmlObject()->gerar($logXml, NULL, NULL, 'log', 'xml_data', 'log', 'agilfap2_desenv/public/xsd/log_db.xsd');

		        return true;	
		} catch (Exception $e) {
			throw new Exception($e);
		}
	}
}