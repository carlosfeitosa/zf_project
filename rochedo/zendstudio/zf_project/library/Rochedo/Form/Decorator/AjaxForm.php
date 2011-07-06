<?php

class Rochedo_Form_Decorator_AjaxForm extends Zend_Form_Decorator_Abstract
{
    private $possibleXhrArgs = array ('load','error','handle','headers','timeout','sync');
    private $formName;
    private $idRequestSource;
    
    
    public function render($content)
    {
        $form = $this->getElement();
        if (!$form instanceof Zend_Form) {
        	echo 'not instanceof Zend_Form';
        	exit;
            return $content;
        }

        if (!$this->getOption('load')) {
		   	//echo "getOption('load')";
        	//exit;   
            return $content;
        }
        
        
        if (!$form->getAction()) {
            $form->setAction('.');
            echo "no getAction()";
        	exit;
        } 

        // setando o nome do formulario no id para poder ser identific
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
    	
$handle = <<<HANDLE
function(error, ioargs) {
	var message = "";
    switch (ioargs.xhr.status) {
    	case 200:
        	message = "Good request.";
        	console.debug(this.form.id);
            break;
        case 404:
        	message = "The requested page was not found";
            break;
        case 500:
            message = "The server reported an error.";
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
    		
    		// content deve receber um objeto javaScript de pares nome/valor. 
    		'content'  => new Zend_Json_Expr("{idRequestSource: '{$this->idRequestSource}',
    										  key1: 'value1',
					    					  key2: 'value2',
					    					  key3: 'value3'
    										 }"),
    	
            'form'     => new Zend_Json_Expr('this.domNode'),
            'handleAs' => 'json',
    		'handle'   => new Zend_Json_Expr($handle),

        );
        
        if (is_array($userArgs))  {
            $args = array_merge($standardArgs,$userArgs);
        }
        else {
            $args = $standardArgs;
        }
        $xhrArgs = Zend_Json::encode($args,false,array('enableJsonExprFinder' => true));

        
        $titulo = Basico_View_Helper_Tradutor::tradutor('FORM_VALIDATION_TITLE');    
        $mensagem = Basico_View_Helper_Tradutor::tradutor('FORM_VALIDATION_MESSAGE');
        
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