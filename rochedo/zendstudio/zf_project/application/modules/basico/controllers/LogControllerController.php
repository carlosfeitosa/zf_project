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
	 * @var Basico_LogControllerController
	 */
	private static $_singleton;

	/**
	 * Instância do Modelo de Log.
	 * @var Basico_Model_Log
	 */
	private $_log;

	/**
	 * Instância da classe Zend_Log.
	 * @var Zend_Log
	 */
	private $_logFS;

	/**
	 * Construtor do Controlador Basico_LogControllerController.
	 * 
	 * @return void
	 */
	private function __construct()
	{
		// instanciado o modelo
		$this->_log = $this->retornaNovoObjetoLog();
		
        // instanciando a classe de log
		$this->_logFS = $this->retornaZendLog();

		// inicializando o controlador
		$this->init();
	}

	/**
	 * Inicializa o controlador Basico_LogControllerController
	 * 
	 * @return void
	 */
	private function init()
	{
		return;
	}

	/**
	 * Retorna Instância do Controlador de log.
	 * 
	 * @return Basico_LogControllerController
	 */
	public static function getInstance()
	{
		// checando singleton
		if(self::$_singleton == NULL){
			// instanciando pela primeira vez
			self::$_singleton = new Basico_LogControllerController();
		}
		// retornando instancia
		return self::$_singleton;
	}

	/**
	 * Retorna um modelo Basico_Model_Log vazio
	 * 
	 * @return Basico_Model_Log
	 */
	public function retornaNovoObjetoLog()
	{
		// retornando um modelo vazio
		return new Basico_Model_Log();
	}

	/**
	 * Retorna o objeto Zend_Log, carregado com o formatador padrao
	 * 
	 * @return Zend_Log
	 */
	private function retornaZendLog()
	{
		// verificando o caminho do log
		$this->verificaPathLog();

		// instanciando formatador de log
        $logFormatter = new Zend_Log_Formatter_Simple(LOG_FORMAT);

        // setando pasta de log
        $logWriterFS = new Zend_Log_Writer_Stream(LOG_FULL_FILENAME);

        // setando o formato do log      
        $logWriterFS->setFormatter($logFormatter);

        // retornando o objeto Zend_Log
        return new Zend_Log($logWriterFS);
	}

	/**
	 * Verifica se o caminho para salvar os log de texto existe.
	 * Cria o caminho se nao existir.
	 * 
	 * @param String $caminhoDoLog
	 * 
	 * @return void;
	 */
	private function verificaPathLog($caminhoDoLog = LOG_PATH)
	{
		// verificando se existe a pasta de log
		if (!file_exists($caminhoDoLog))
			// criando pasta de log
		    Basico_UtilControllerController::mkdirRecursive($caminhoDoLog);
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
	    $this->_logFS->log($mensagem, $prioridade);
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
	 */	
	public function salvarLog($idPessoaPerfil, $idCategoriaLog, $mensagemLog)
	{
		// verifica se existe pessoa perfil e categoria de log
		if ((!isset($idPessoaPerfil)) or (!isset($idCategoriaLog)))
			throw new Exception(MSG_ERRO_SAVE_SEM_PESSOAPERFIL_CATEGORIA);

		// instanciando um novo modelo de log
		$this->_log = $this->retornaNovoObjetoLog();

		// preenchendo o modelo de log
	    $this->_log->pessoaperfil   = $idPessoaPerfil;
	    $this->_log->categoria      = $idCategoriaLog;
	    $this->_log->dataHoraEvento = Basico_UtilControllerController::retornaDateTimeAtual();
	    $this->_log->descricao      = $mensagemLog;

	    // preparando o xml do log
	    $this->_log->xml = $this->prepareXml($this->_log);

	    // salvando log
		$this->_log->getMapper()->save($this->_log);

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