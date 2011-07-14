<?php
/**
 * Decorator Mascara JQuery Elementos
 * 
 * Decorator responsável por incluir bloco de código javaScript, que adiciona mascaras jquery nos elementos
 * 
 * @package Basico
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @since 14/07/2011
 */
class Rochedo_Form_Decorator_MascaraJQueryElementos extends Zend_Form_Decorator_Abstract
{

    public function render($content)
    {

        if (!$this->getOption('modulo') and !$this->getOption('formulario') ) {
            return $content;
        }
        
        $modulo = $this->getOption('modulo');
        $formulario = $this->getOption('formulario');
        
   		$script = Basico_OPController_UtilOPController::escreveJavaScriptEvento('onLoad', Basico_OPController_UtilOPController::retornaScriptAplicacaoMascarasPorModuloFormulario($modulo, $formulario));

        $separator = $this->getSeparator();
        switch ($this->getPlacement()) {
            case 'PREPEND':
                return $script . $separator . $content;
            case 'APPEND':
            default:
                return $content . $separator . $script;
        }
    }
}