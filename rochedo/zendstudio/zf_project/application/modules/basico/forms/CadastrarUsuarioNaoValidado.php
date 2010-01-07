<?php
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
    public function __construct($options = null)
    {      
        parent::__construct($options);
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->setName('CadastrarUsuarioNaoValidado');
        $this->addAttribs(array('onSubmit'=>"return(validateForm('CadastrarUsuarioNaoValidado'))"));
        
        $elements = array();
        
        $elements[0] = $this->createElement('ValidationTextBox', 'nome');
		$elements[0]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage('Preencha o campo Nome!')
                    ->setRequired(true)
                    ->setLabel('Nome:')
 					->setAttrib('size', 100);

        if($options!=null)
           $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('ValidationTextBox', 'email');
		$elements[1]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage('Preencha o campo e-mail!')
                    ->setRequired(true)
                    ->setLabel('E-mail:')
 					->setAttrib('size', 80);

        if (FORM_VALIDATOR_EMAILADDRESS_CHECK_DEEP_MX)
            $elements[1]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
        else
            $elements[1]->addValidator('EmailAddress');

        if($options!=null)
           $elements[1]->setValue($options->email);

        if (!Basico_Model_Util::ambienteDesenvolvimento())
            $elements[2] = new Zend_Form_Element_Captcha('captcha', array(
                                                         'label' => "Por favor digite o código de 6 caracteres abaixo:",
                                                         'required' => true,
            											 'captcha' => array(
                                                             'captcha' => 'image',
                                                             'imgDir' => CAPTCHA_IMAGE_DIR,
                                                             'imgUrl' => CAPTCHA_IMAGE_URL,
                                                             'wordLen' => 6,
            												 'width' => 250,
            												 'height' => 80,
    														 'font' => CAPTCHA_FONT_PATH,
                                                             'fontSize' => 50,        
                                                             'expiration' => 300,
                                                             'gcFreq' => 100,),));
        
        $elements[3] = new Zend_Form_Element_Submit('enviar', array('label' => 'Enviar',));
        
        $elements[4] = new Zend_Form_Element_Hash('token', 'csrf', array('ignore' => true, 'salt' => 'unique',));

        $this->addElements($elements);
    }
}