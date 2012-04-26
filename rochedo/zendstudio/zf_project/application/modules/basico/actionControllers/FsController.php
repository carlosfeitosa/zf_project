<?php
class Basico_FsController extends Zend_Controller_Action
{
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }
    
    /**
     * Ação para realizacao de download de arquivos
     * 
     */
    public function downloadAction()
    {
    	//desabilitando layout e render
	    $this->_helper->layout()->disableLayout();
	    $this->_helper->viewRenderer->setNoRender(true);
    	
    	$post = $this->getRequest()->getParams();
    	// enviando arquivo para download
    	if (!Basico_OPController_FSOPController::getInstance()->enviaArquivoDownload($post['tipo'], $post['fileName'])) {
    		throw new Exception("Erro ao enviar arquivo: Arquivo não encontrado.");
    	}	 
    	
    }
    
    
}