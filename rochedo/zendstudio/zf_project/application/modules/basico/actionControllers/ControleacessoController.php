<?php
class Basico_ControleacessoController extends Zend_Controller_Action
{
	/**
	* @var object
	*/
	private $request;
	
    /**
	 * Inicializa controlador Administrador
	 * 
	 * @return void
	 */
	public function init()
    {
    	// recuperando a requisicao
        $this->request = Zend_Controller_Front::getInstance()->getRequest();

		// definindo o contexto
		$pdfParametros = array('suffix' => 'pdf', 'headers' => array('Content-Type' => 'application/pdf'));
		$xlsParametros = array('suffix' => 'xls', 'headers' => array('Content-Type' => 'application/xls'));
		$plaintextParametros = array('suffix' => 'plaintext', 'headers' => array('Content-Type' => 'application/plaintext'));
		$impressaoParametros = array('suffix' => 'impressao', 'headers' => array('Content-Type' => 'application/impressao'));
        
		// adicionando os contextos e definindo as permissoes por acao
    	$this->_helper->contextSwitch()
    					->addContext('pdf', $pdfParametros)
    					->addContext('xls', $xlsParametros)
    					->addContext('plaintext', $plaintextParametros)
    					->addContext('impressao', $impressaoParametros)
        	            ->addActionContext('cadastrarusuarionaovalidado', array('pdf', 'plaintext', 'impressao'))
						->setAutoJsonSerialization(true)
						->initContext();
    }
    
    /**
     * Ação para mostrar mensagem de acao aplicacao desativada
     * 
     * @return void
     */
    public function acaoaplicacaodesativadaAction() 
    {
    	// carregando o titulo, subtitulo e mensagem da view
    	$tituloView = 'Acao desativada';
        $subtituloView = 'esta acao foi desativada';
        $mensagemView = 'clique aqui para voltar para onde voce estava';

    	// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $tituloView, 'subtituloView' => $subtituloView, 'mensagemView' => $mensagemView);
	            
	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;
		
		// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }
    

}