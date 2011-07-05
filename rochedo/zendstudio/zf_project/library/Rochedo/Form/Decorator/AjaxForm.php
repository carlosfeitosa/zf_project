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
    	$standardArgs = array(
    		
    		// content deve ser um objeto javaScript de pares nome/valor
    		'content' => new Zend_Json_Expr("{idRequestSource: '{$this->idRequestSource}',
    										  key1: 'value1',
					    					  key2: 'value2',
					    					  key3: 'value3'
    										 }"),
    		'testeArgs' => 'xxxxxxxxxxxxxxxxxxxx',
    		//'postData' => 'data postado....',
    	
            'form'     => new Zend_Json_Expr('this.domNode'),
            'handleAs' => 'json',

        );
        
        if (is_array($userArgs))  {
            $args = array_merge($standardArgs,$userArgs);
        }
        else {
            $args = $standardArgs;
        }
        $xhrArgs = Zend_Json::encode($args,false,array('enableJsonExprFinder' => true));

        $content =<<<EOQ
<script type="dojo/method" event="onSubmit">
//loading();
validateForm('CadastrarUsuarioValidado', 'titulo', 'mensagem....', '');
return;
if (validateForm('CadastrarUsuarioValidado', 'titulo', 'mensagem....', '')){
	if (this.validate()) {
	    dojo.xhrPost($xhrArgs);
	}
	return false;
}
//loading('hide');
return false;
</script>
EOQ;

        return $content;
    }
}