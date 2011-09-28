<?php
/**
 * Decorator Ajax Form
 * 
 * Decorator responsável por submeter formulario via ajax
 * 
 * @package Basico
 * 
 * @author Igor Pinho Costa Souza (igor.pinho.souza@rochedoframework.com)
 * 
 * @since 14/07/2011
 */
class Rochedo_Form_Decorator_AjaxForm extends Zend_Form_Decorator_Abstract
{
    private $possibleXhrArgs = array ('load','error','handle','headers','timeout','sync');
    private $idRequestSource;
    
    public function render($content)
    {
        $form = $this->getElement();
        if (!$form instanceof Zend_Form) {
            return $content;
        } 
         
        if (!$form->getAction()) {
            return $content;
        } 

        // setando o nome do formulario no idRequestSource para poder ser identificado pelo controller
        $this->idRequestSource = $form->getName();

        $xhrPostArgs = array ( );
        
        foreach($this->getOptions() as $key => $value) {
            if (in_array($key,$this->possibleXhrArgs)) {
                $xhrPostArgs[$key] = $value;
            }
        }
        
        $script = $this->_renderHandler($xhrPostArgs);

        $separator = $this->getSeparator();
        switch ($this->getPlacement()) {
            case 'PREPEND':
                return $script . $separator . $content;
            case 'APPEND':
            default:
                return $content . $separator . $script;
        }
    }

    protected function _renderHandler($userArgs)
    {

    	$standardArgs = array(    		
    		// content deve receber um objeto javaScript, de pares, nome/valor. 
    		'content'  => new Zend_Json_Expr("{idRequestSource: '{$this->idRequestSource}'}"),
            'form'     => new Zend_Json_Expr('this.domNode'),
    		'loadFunctionData' => 'processaResponseDojoFormRequest',
    		'handleFunctionData'   => 'processaResponseDojoFormRequest',
    		'handleAs' => 'json',
    		'preventCache' => true,
        );
        
        if (is_array($userArgs)) {
            $args = array_merge($standardArgs,$userArgs);
        }
        else {
            $args = $standardArgs;
        }
        $xhrArgs = Zend_Json::encode($args,false,array('enableJsonExprFinder' => true));

        // carrega título e mensagem da validação
        $titulo = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_VALIDATION_TITLE');    
        $mensagem = Basico_OPController_TradutorOPController::retornaTraducaoViaSQL('FORM_VALIDATION_MESSAGE');
        
        $content = <<<EOQ
<script type="dojo/method" event="onSubmit">
loading();
if (validateForm(this, '{$titulo}', '{$mensagem}')){
	if (this.validate()) {
	    dojoRequestAjaxAbstract('post', {$xhrArgs});
	}
}
underlay.hide();
return false;
</script>
EOQ;

        return $content;
    }
}