<?php

class Rochedo_Form_Decorator_AjaxForm extends Zend_Form_Decorator_Abstract
{
    private $possibleXhrArgs = array ('load','error','handle','headers','timeout','sync');
    public function render($content)
    {
        $form = $this->getElement();
        if (!$form instanceof Zend_Dojo_Form) {
            return $content;
        }

        if (!$this->getOption('load')) {   
            return $content;
        }
        
        
        if (!$form->getAction()) {
            $form->setAction('.');
        } 

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
            'form'     => new Zend_Json_Expr('this.domNode'),
            'handleAs' => 'text',
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
if (this.validate()) {
    dojo.xhrPost($xhrArgs);
}
return false;
</script>
EOQ;
        return $content;
    }
}
