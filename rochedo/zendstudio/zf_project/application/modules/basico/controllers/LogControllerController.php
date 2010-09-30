<?php

/**
 * Controlador Log
 *
 */

/**
 * Inclui arquivos do sistema.
 */

// include dos controladores e modelos
require_once("GeradorControllerController.php");
require_once(APPLICATION_PATH . "/modules/basico/models/Log.php");

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
	 * Construtor do Controlador de Log.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// recuperando o modelo de log
		$this->log = new Basico_Model_Log();
		
		// verificando se existe a pasta de log
		if (!file_exists(LOG_PATH))
			// criando pasta de log
		    Basico_UtilControllerController::mkdirRecursive(LOG_PATH);

		// instanciando formatador de log
        $logFormatter = new Zend_Log_Formatter_Simple(LOG_FORMAT);

        // setando pasta de log
        $logWriterFS = new Zend_Log_Writer_Stream(LOG_FULL_FILENAME);
        // setando o formato do log      
        $logWriterFS->setFormatter($logFormatter);
		
        // instanciando a classe de log
		$this->logFS = new Zend_Log($logWriterFS); 
	}
	
	/**
	 * Retorna Instância do Controlador de log.
	 * 
	 * @return Basico_LogController
	 */
	static public function init()
	{
		// checando singleton
		if(self::$singleton == NULL){
			self::$singleton = new Basico_LogControllerController();
		}

		return self::$singleton;
	}
	
	/**
	 * Salva um log no sistema de arquivos
	 * 
	 * @param String $mensagem
	 * @param Integer $prioridade
	 * 
	 * @return void
	 */
	public function salvaLogFS($mensagem, $prioridade = LOG_PRIORITY_INFORMACAO)
	{
		// salvando o log no sistema de arquivos
	    $this->logFS->log($mensagem, $prioridade);
	}
	
	/**
	 * Retona o conteudo de um arquivo de log
	 * 
	 * @param Integer $ano
	 * @param Integer $mes
	 * 
	 * @return String
	 */
	public function leLogFS($ano = null, $mes = null)
	{
		// verificando se o ano e mes foram informados
	    if (!isset($ano) or !isset($mes))
	    	// abre o arquivo de log do mes/ano corrente
	        $arquivoLog = LOG_FULL_FILENAME;
	    else
	    	// abre o arquivo de log do mes/ano passados por parametro
	        $arquivoLog = LOG_FILENAME_PREFIX . (String) $ano . (String) $mes . LOG_FILENAME_SULFIX;

		// retorna o conteudo do arquivo
	    return Basico_UtilControllerController::getFileContent($arquivoLog);
	}
	
	/**
	 * Salva um log de operacoes
	 * 
	 * @param Integer $idPessoaPerfil
	 * @param Integer $idCategoriaLog
	 * @param String $mensagemLog
	 * 
	 * @return true
	 */	public static function salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog)
	{
		// verifica se existe pessoa perfil e categoria de log
		if ((!isset($idPessoaPerfil)) or (!isset($idCategoriaLog)))
			throw new Exception(MSG_ERRO_SAVE_SEM_PESSOAPERFIL_CATEGORIA);
		
		// instanciando controlador de log
		$logController = Basico_LogControllerController::init();
		
		// preenchendo o modelo de log
		$logController->log                 = new Basico_Model_Log();
	    $logController->log->pessoaperfil   = $idPessoaPerfil;
	    $logController->log->categoria      = $idCategoriaLog;
	    $logController->log->dataHoraEvento = Basico_UtilControllerController::retornaDateTimeAtual();
	    $logController->log->descricao      = $mensagemLog;
	    
	    // preparando o xml do log
	    $logController->log->xml = self::prepareXml($logController->log);

	    // salvando log
		$logController->log->save();

		return true;
	}
	
	/**
	* Prepara o xml
	* 
	* @param Object $modelo
	* 
	* @return string|null
	*/
	private function prepareXml($modelo)
	{
		try {
			// instanciando controlador de log
			$logController = Basico_LogControllerController::init();

			// setando data/hora e descricao do evento
			$logXml = new Basico_Model_LogXml(array("eventDateTime"    => $modelo->dataHoraEvento,
													"eventDescription" => $modelo->descricao,));

			// retornando XML
			return Basico_GeradorControllerController::geradorXmlGerarXml($logXml, NULL, NULL, 'log', 'xml_data', 'log', 'agilfap2_desenv/public/xsd/log_db.xsd');	
		} catch (Exception $e) {
			
			throw new Exception($e);
		}
	}
}