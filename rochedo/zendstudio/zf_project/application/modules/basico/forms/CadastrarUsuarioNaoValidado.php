<?php
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
    public function __construct($options = null)
    {      
        parent::__construct($options);
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->setName('CadastrarUsuarioNaoValidado');
        $this->addAttribs(array('onSubmit'=>'return validate(this)'));
        
        $elements = array();
        
        $elements[0] = $this->createElement('ValidationTextBox', 'nome');
		$elements[0]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage('Preencha o campo Nome!')
                    ->setRequired(true)
                    ->setLabel('Nome:')
 					->setAttrib('size', 80);

        if($options!=null)
           $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('ValidationTextBox', 'email');
		$elements[1]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage('Preencha o campo e-mail!')
                    ->setRequired(true)
                    ->setLabel('E-mail:')
    				->addValidator('EmailAddress')
 //   				->addValidator('EmailAddress', true, array('mx' => true,
   // 				                                           'deep' => true,));
 					->setAttrib('size', 80);
           
        if($options!=null)
           $elements[1]->setValue($options->email);

        $elements[2] = new Zend_Form_Element_Captcha('captcha', array(
                                                     'label' => "Por favor digite o código de 6 caracteres abaixo:",
                                                     'required' => true,
        											 'captcha' => array(
                                                         'captcha' => 'image',
                                                         'imgDir' => '../public/images/captcha/',
                                                         'imgUrl' => '../../../../public/images/captcha/',
                                                         'wordLen' => 6,
        												 'width' => 250,
        												 'height' => 80,
														 'font' => '../public/fonts/typewcond_bold.otf',
                                                         'fontSize' => 50,        
                                                         'expiration' => 300,
                                                         'gcFreq' => 100,),));
        
        $elements[3] = new Zend_Form_Element_Submit('enviar', array('label' => 'Enviar',));
        
        $elements[4] = new Zend_Form_Element_Hash('token', 'csrf', array('ignore' => true, 'salt' => 'unique',));

        $this->addElements($elements);
    }
}