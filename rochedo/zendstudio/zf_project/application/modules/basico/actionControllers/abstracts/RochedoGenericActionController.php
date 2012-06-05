<?php

/**
 * Classe abstrata modelo de actionController
 * 
 * Todas as classes que implementam esta classe devem conter todos os metodos e atributos do pai
 * 
 * @package Basico
 * 
 * @author Carlos Feitosa (carlos.feitosa@rochedoproject.com)
 * @since 05/06/2012
 */

abstract class Basico_AbstractActionController_RochedoGenericActionController extends Zend_Controller_Action
{
	/**
	 * Contrutor do controlador.
	 * 
	 * @param Zend_Controller_Request_Abstract $request
	 * 
	 * Deve-se tambem chamar o metodo _init(), que deve inicializar o controlador.
	 */
	public function __construct(Zend_Controller_Request_Abstract $request, Zend_Controller_Response_Abstract $response, array $invokeArgs = array())
	{
		// chamando construtor do pai
		parent::__construct($request, $response, $invokeArgs);

		// inicializando o controlador
		$this->_init();
	}

	/**
	 * Inicializacao do controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar o controlador.
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	protected function _init()
	{
		// inicializando controladores
		$this->_initControllers();
	}

	/**
	 * Inicializacao dos controladores utilizados pelo controlador
	 * 
	 * Este metodo deve ser utilizado para inicializar os controladores utilizados pelo controlador
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 25/04/2012
	 */
	abstract protected function _initControllers();

	
	public function metainfoAction()
	{
		// carregando titulo e subtitulo da view
        $content[] = 'teste';

        // enviado conteúdo para a view
        $this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
	}
}