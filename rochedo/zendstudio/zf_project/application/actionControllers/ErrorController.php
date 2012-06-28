<?php
/**
 * 
 * Controlador de Erros do sistema.
 *
 */
class ErrorController extends Zend_Controller_Action
{
	/**
	 * Ação default para erros do sistema.
	 * @return unknown_type
	 */
    public function errorAction()
    {
    	// gerando token para erro
    	$token = Basico_OPController_GeradorTokenOPController::gerarToken();
        $errors = $this->_getParam('error_handler');
        
        $bootstrap = $this->getInvokeArg('bootstrap');
        $requestString = var_export($errors->request->getParams(), true);
        $bootstrap->logger->salvaLogFS("EXCEPTION[{$token}]: {$errors->exception} | " . PHP_EOL . "REQUEST: {$requestString}", LOG_PRIORITY_ERRO);
        
        switch ($errors->type) { 
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_CONTROLLER:
            case Zend_Controller_Plugin_ErrorHandler::EXCEPTION_NO_ACTION:

                // 404 error -- controller or action not found
                $this->getResponse()->setHttpResponseCode(404);
                $message = MSG_ERRO_PAGINA_NAO_ENCONTRADA;
                break;
            default:
                // application error 
                $this->getResponse()->setHttpResponseCode(500);
                $message = MSG_ERRO_APLICACAO;
                break;
        }
        
		// carregando informacoes que serão enviadas para a view
		$searchImageLocalPath = PUBLIC_PATH . '/images/temp/';
		$applicationHttpImagesHomeTemp = $this->view->baseUrl('/images/temp/');
		$nomeArquivoAleatorioErrorImage = Basico_OPController_UtilOPController::retornaNomeArquivoAleatorio($searchImageLocalPath);
		$nomeCompletoArquivoAleatorioErrorImage = $applicationHttpImagesHomeTemp . $nomeArquivoAleatorioErrorImage;
		$dataHoraAtual = date('d/m/Y H:i:s');
		$supportEmail = SUPPORT_EMAIL;
		$assuntoEmail = SUPPORT_EMAIL_SUBJECT;
		$corpoEmail = "data e hora do erro: {$dataHoraAtual} | token: {$token}";
		// iniciando output buffer
		ob_start();
		var_dump($errors->request->getParams());
		// recuperando e limpando o buffer de output
		$requestParams = ob_get_clean();
		
		// inicializando variaveis
		$debugInfo = null;

		// verificando se o sistema esta rodando em ambiente de desenvolvimento
		if (Basico_OPController_UtilOPController::ambienteDesenvolvimento()) {

		// carregando informacoes de debug
		$debugInfo = <<<TEXT
<hr />
<h1>** DEBUG INFO **</h1>

<h3>Informa&ccedil;&otilde;es do Exception:</h3>
<p>
  <b>Message:</b> {$errors->exception->getMessage()}
</p>
<h3>Stack trace:</h3>
<pre>{$errors->exception->getTraceAsString()}
</pre>
<h3>Parametros do Request:</h3>
<pre>{$requestParams}</pre>
<h3>Error image:</h3>
<img alt="Crocro error!" src="{$nomeCompletoArquivoAleatorioErrorImage}"/>
<pre>{$nomeArquivoAleatorioErrorImage}</pre>
TEXT;

		}

		$localContent = <<<TEXT
<h1>Infelizmente aconteceu um erro.</h1>
<h2>{$message}</h2>
<pre>Informe ao <a href="mailto:{$supportEmail}?subject={$assuntoEmail}&body={$corpoEmail}">suporte</a> seu <b>login</b>, data/hora do erro (<b>{$dataHoraAtual}</b>) e este token: <b>{$token}</b></pre>
{$debugInfo}
TEXT;

		// enviando conteúdo do erro para a view
		$this->view->content = $localContent;

		// renderizando a view
       	$this->getHelper('renderizar')->renderizar();
    }
}