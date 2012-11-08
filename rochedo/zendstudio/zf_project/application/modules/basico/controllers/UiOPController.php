<?php
/**
 * Controlador Ui
 * 
 * Controlador responsavel pelas UIs do sistema
 * 
 * @package Basico
 * 
 * @author João Vasconcelos (joao.vasconcelos@rochedoframework.com)
 * 
 * @since 08/11/2012
 */

class Basico_OPController_UiOPController
{
	/**
	 * Constante que contem a UI default do sistema
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const DEFAULT_UI = DEFAULT_SYSTEM_UI; 
	
	/**
	 * Constante que espelha no controller o valor da constante que define a UI DOJO pro sistema
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const DOJO = UI_DOJO;
	
	/**
	 * Constante que espelha no controller o valor da constante que define a UI JQUERY pro sistema
	 * 
	 * @var String
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	const JQUERY = UI_JQUERY;
	
	/**
	 * $listaUisDisponiveis
	 * 
	 * Atributo publico que contem um array com as UIs disponiveis no sistema
	 * 
	 * @var Array
	 * 
	 * @author Joao Vasconcelos (joao.vasconcelos@rochedoframework.com)
	 * @since 08/11/2012
	 */
	public static $listaUisDisponiveis = array(UI_DOJO, UI_JQUERY);
	
	/**
	 * Processa os elementos de um formulário de acordo com a UI padrão do sistema
	 * 
	 * @param Zend_View $view - objeto View para possivel adicao de includes
	 * @param Zend_Form $objFormulario - objeto do formulário (por referencia) que deve ser processado
	 * 
	 * @return Boolean
	 * 
	 * @author Carlos Feitosa / João Vasconcelos (carlos.feitosa@rochedoframework.com / joao.vasoncelos@rochedoframework.com)
	 * @since 07/11/2012
	 */
	public static function processaUiElementosFormulario(Zend_View $view, Zend_Form &$objFormulario)
	{
		// recuperando a UI padrao
		$defaultUI = self::DEFAULT_UI;

		// mapeamento dos elementos do dojo
		$arrayDojoTypeElements = Basico_OPController_UiDojoOPController::retornaArrayDojoTypeMapper();

		// loop para processar os elementos do formulário
		foreach ($objFormulario->getElements() as $objElement) {
			// verificando a UI padrão
			switch ($defaultUI) {
				case self::DOJO:
					// adicionando atributo ao elemento
					$objElement->setAttrib('dojoType', $arrayDojoTypeElements[$objElement->getType()]);

					// verificando se o elemento precisa adicionar o atributo label
					if ('Zend_Form_Element_Submit' === $objElement->getType()) {
						// adicionando o atributo label
						$objElement->setAttrib('label', $objElement->getLabel());
					}
				break;
				case self::JQUERY:
					
					// verificando o plugin de formularios da UI JQUERY setado na aplicacao
					switch (Basico_OPController_JqueryPluginOPController::DEFAULT_FORM_PLUGIN) {
						case Basico_OPController_JqueryPluginOPController::PLUGIN_UNIFORM:
							// adicionando arquivo javascript do plugin uniform
							$view->headScript()->appendFile($view->baseUrl(Basico_OPController_JqueryPluginOPController::JQUERY_PLUGIN_UNIFORM_JAVASCRIPT_PATH));
							// adicionando arquivo css do plugin uniform
							$view->headLink()->appendStylesheet($view->baseUrl(Basico_OPController_JqueryPluginOPController::JQUERY_PLUGIN_UNIFORM_CSS_PATH));
							
							// setando flag para insercao do script
							if (!isset($scriptPluginForm))
								$scriptPluginForm = "<script type='text/javascript'> $(function() { $(\x22select, input, button, textarea\x22).not('.helpButton').uniform();});</script>";
								 
							break;
						case Basico_OPController_JqueryPluginOPController::PLUGIN_IDEALFORM:
							// adicionando arquivo javascript do plugin IDEALFORM
							$view->headScript()->appendFile($view->baseUrl(Basico_OPController_JqueryPluginOPController::JQUERY_PLUGIN_IDEALFORM_JAVASCRIPT_PATH));
							// adicionando arquivo css do plugin IDEALFORM
							$view->headLink()->appendStylesheet($view->baseUrl(Basico_OPController_JqueryPluginOPController::JQUERY_PLUGIN_IDEALFORM_CSS_PATH));
							
							// setando flag para insercao do script
							if (!isset($scriptPluginForm))
								$scriptPluginForm = "<script type='text/javascript'> $(function() { var {$objFormulario->getName()} = $(\x22#{$objFormulario->getName()}\x22).idealforms({ options:null }).data(\x22idealforms\x22); });</script>";
							
							break;				
					}
					
					
				break;
			}
		}
		
		// verificando se existe script para insercao
		if (isset($scriptPluginForm)) {
			
			// verificando se a view não possui scripts
			if (!isset($view->scripts)) {
				// inserindo script na view
				$view->scripts = array($scriptPluginForm);
			}else{
				// adicionando script na view
				$view->scripts[] = $scriptPluginForm;
			}
		}
	}
	
	
}