<?php
class Basico_FsController extends Basico_AbstractActionController_RochedoGenericActionController
{
    /**
	 * Inicializa controlador de controle de acesso
	 * 
	 * @return void
	 */
	public function init()
    {
    	return;
    }

	/**
	 * Inicializa os controladores necessários para operação deste action controller
	 * 
	 * (non-PHPdoc)
	 * @see Basico_AbstractActionController_RochedoGenericActionController::_initControllers()
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	protected function _initControllers()
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