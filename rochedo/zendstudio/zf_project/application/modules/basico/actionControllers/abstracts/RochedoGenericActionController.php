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
	 * @param Zend_Controller_Response_Abstract $response
	 * @param Array $invokeArgs
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

	/**
	 * Exibe meta dados a respeito do controlador de ação
	 * 
	 * @author Carlos Feitosa (carlos.feitosa@rochedoframework.com)
	 * @since 05/06/2012
	 */
	public function metainfoAction()
	{
		// inicializando variáveis
		$content = array();
		$arrayReflection = array();

		// recuperando métodos da classe
		$arrayMetodos = $this->_classMethods;

		// removendo o metainfo do array de métodos
		unset($arrayMetodos[array_search('metainfoAction', $arrayMetodos)]);

		// tirando do array todos os elementos que não terminem com "Action"
		$arrayMetodos = Basico_OPController_UtilOPController::filtraArray($arrayMetodos, array(Basico_OPController_UtilOPController::retornaArrayFiltroIncludeElementosTerminadasCom('Action')));

		// recuperando informações sobre a visão (ação aplicacação)
		$arrayMetaDadosVisao = Basico_OPController_AcaoAplicacaoAssocVisaoOPController::getInstance()->retornaArrayMetaDadosVisaoPorNomeModuloNomeControlador(strtoupper($this->getRequest()->getModuleName()), $this->getRequest()->getControllerName());

		// loop para recuperar os reflections de cada método
		foreach ($arrayMetodos as $metodo) {
			// setando informações sobre a ação aplicação e visão no arrayReflection (cabeçalho)
			$arrayReflection[] = Basico_OPController_UtilOPController::retornaCabecalhoHtmlRefletionMethodViaMetodoArrayMetaDadosAcaoAplicacaoVisao($metodo, $arrayMetaDadosVisao);

			// recuperando resultado do reflection do método
			$arrayReflection[] = Basico_OPController_ReflectionOPController::retornaReflectionClassMethod(get_class($this), $metodo);

			// limpando memória
			unset($metodo);
		}

    	// setando o titulo da view
    	$content[] = Basico_OPController_UtilOPController::retornaTextoFormatadoTitulo('Reflection do controlador de ação ' . get_class($this));

		// juntando os arrays
		$content = array_merge($content, $arrayReflection);

		// limpando memória
		unset($arrayReflection, $arrayMetodos);

        // enviado conteúdo para a view
        $this->view->content = $content;

		// renderizando a view
		$this->_helper->Renderizar->renderizar();
	}
}