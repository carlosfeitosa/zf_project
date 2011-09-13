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
    private $formName;
    private $idRequestSource;
    
    
    public function render($content)
    {
        $form = $this->getElement();
        if (!$form instanceof Zend_Form) {
            return $content;
        } 
         
        if (!$form->getAction()) {
            //$form->setAction('.');
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
$load = <<<LOAD
function(data,args){
	console.debug('------------------------------ AJAX LOAD....');
	processaResponseDojoFormRequest(data);
}
LOAD;

$handle = <<<HANDLE
function(error, ioargs) {
	console.debug('------------------------------ AJAX HANDLE....');
	var message = "";
    switch (ioargs.xhr.status) {
    	case 200:
        	message = "Good request.";
            break;
        case 404:
        	message = "The requested page was not found";
            break;
        case 500:
            message = "The server reported an error.";
            
            // parseando a resposta enviada via json. Quando erro 500, a resposta enviada no formato JSON não é parseada automaticamente.
            resposta = JSON.parse(ioargs.xhr.responseText);
            processaResponseDojoFormRequest(resposta);
            break;
        case 407:
			message = "You need to authenticate with a proxy.";
            break;
        default:
            message = "Unknown error.";
     }
     console.debug(message);
     
     console.debug('desativando underlay....');
     underlay.hide();
     console.debug('underlay desativado');   
}
HANDLE;
    	$standardArgs = array(
    		
    		// content deve receber um objeto javaScript, de pares, nome/valor. 
    		'content'  => new Zend_Json_Expr("{idRequestSource: '{$this->idRequestSource}',
    										 }"),
    	
            'form'     => new Zend_Json_Expr('this.domNode'),
    		'load'     => new Zend_Json_Expr($load),
    		'handle'   => new Zend_Json_Expr($handle),
    		'handleAs' => 'json',
    		'preventCache' => true,

        );
        
        if (is_array($userArgs))  {
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
	    dojo.xhrPost($xhrArgs);
	}
	return false;
}
return false;
</script>
EOQ;

        return $content;
    }
}