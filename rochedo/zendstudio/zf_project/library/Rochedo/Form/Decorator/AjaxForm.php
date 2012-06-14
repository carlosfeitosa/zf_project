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
            'form'     => new Zend_Json_Expr("'{$this->getElement()->getName()}'"),
            'loadFunctionData' => 'processaResponseDojoFormRequest',
    		'errorFunctionData'   => 'processaResponseDojoFormRequest',
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
        $titulo = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('FORM_VALIDATION_TITLE');    
        $mensagem = Basico_OPController_DicionarioExpressaoOPController::retornaTraducaoViaSQL('FORM_VALIDATION_MESSAGE');
        
        $content = <<<EOQ
<script type="dojo/method">
function formBackgroundSubmit() {
console.debug('funcao formBackgroundSubmit processada');

	var form = dojo.byId("{$this->getElement()->getName()}");

	dojo.connect(form, "onsubmit", function(event) {
		console.debug('conectando ao evento:', event);
		
		//Parando o evento Submit
	    console.debug('Parando o evento:', event);
		dojo.stopEvent(event);
		
		// validando o formulario
		if (validateForm('{$this->getElement()->getName()}', '{$titulo}', '{$mensagem}')){
			console.debug('formulario validado....');
			
			var deferred = dojoRequestAjaxAbstract('post', {$xhrArgs});
		}
	});
}
dojo.addOnLoad(formBackgroundSubmit);
console.debug('dojo.addOnLoad(formBackgroundSubmit): "{$this->getElement()->getName()}"');
</script>
EOQ;

        return $content;
    }
}