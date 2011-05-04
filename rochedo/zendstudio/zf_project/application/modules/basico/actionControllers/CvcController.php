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
		// carregando array do cabecalho da view
		$cabecalho =  array('tituloView' => $this->view->tradutor('FORM_TITLE_RESOLVEDOR_CONFLITO_VERSAO_OBJETO'));

	    // setando o cabecalho na view
		$this->view->cabecalho = $cabecalho;

    	// recuperando o formulario de resolucao de conflito de versao
    	$formResolucaoConflitoVersao = $this->retornaFormResolvedorConflitoVersaoObjeto();

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