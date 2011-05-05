<?php

/**
 * Action Controller do Controle de Versao de Objetos.
 * 
 * @author fumato
 * @since 02/05/2011
 *
 */

class Basico_CvcController extends Zend_Controller_Action
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
     * Acao principal do controlador de acoes
     *
     * @return void
     */
    public function indexAction()
    {
    	// redirecionando para a acao de resolucao de conflitos de versao
    	$this->_helper->redirector('resolveconflitoversaoobjeto');
    }

    /**
     * Acao para resolucao de conflitos de versao
     *
     * @return void
     */
    public function resolveconflitoversaoobjetoAction()
    {
    	// carregando informacoes do request
    	$nomeObjetoConflito = $this->_request->getParam('nomeObjetoEmConflito');
    	$idObjetoConflito   = $this->_request->getParam('idObjetoEmConflito');


		// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $this->view->tradutor('FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'));

	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;

    	// recuperando o formulario de resolucao de conflito de versao
    	$formResolucaoConflitoVersao = $this->retornaFormResolvedorConflitoVersaoObjeto();

    	// recuperando chamada javascript que abre um dialog contendo os dados atuais do objeto
    	$jsVisualizarDadosAtuais = Basico_OPController_UtilOPController::retornaJavaScriptDialogMensagemViaArrayInfo('resolvedorConflitoObjetosVisualizarDados', Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('DIALOG_FORM_RESOLVEDOR_CONFLITO_VISUALIZAR_DADOS_ATUAIS_TITLE'), Basico_OPController_CVCOPController::getInstance()->retornaArrayAtributosObjeto($nomeObjetoConflito, $idObjetoConflito));

    	// vinculando o evento "onClick" do botao "visualizar dados atuais" com a chamada javascript que abre um dialog contendo os atributos do objeto
    	$formResolucaoConflitoVersao->BasicoResolvedorConflitoVersaoObjetoHtmlButtonVisualizarDadosAtuaisFormResolvedorConflitoVersaoObjeto->setAttrib('onClick', $jsVisualizarDadosAtuais);

    	// setando o form na view
    	$this->view->form = $formResolucaoConflitoVersao;

    	// renderizando a view
		$this->_helper->Renderizar->renderizar();
    }

    /**
     * Retorna o formulario de resolucao de conflitos de versao
     * 
     */
    private function retornaFormResolvedorConflitoVersaoObjeto()
    {
    	// retornando o formulario de resolucacao de conflitos
    	return new Basico_Form_ResolvedorConflitoVersaoObjeto();
    }
}