<?php
/**
 * Form para iniciar cadastro de novos usuarios.
 * 
 *
 */
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
	/**
	 * Construtor do Form.
	 * @param array $options
	 * @return Basico_Form_CadastrarUsuarioNaoValidado
	 */
    public function __construct($options = null)
    {
        $labelCampoNome  = $this->getView()->tradutor(FORM_FIELD_NOME, DEFAULT_USER_LANGUAGE);
        $labelCampoNomeHint = $this->getView()->tradutor(FORM_FIELD_NOME_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoEmail = $this->getView()->tradutor(FORM_FIELD_EMAIL, DEFAULT_USER_LANGUAGE);
        $labelCampoEmailHint = $this->getView()->tradutor(FORM_FIELD_EMAIL_HINT, DEFAULT_USER_LANGUAGE);
        parent::__construct($options);
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->setName('CadastrarUsuarioNaoValidado');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
        
        $elements = array();
        
        $elements[0] = $this->createElement('ValidationTextBox', 'nome');
		$elements[0]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoNomeHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoNome)
 					->setAttrib('size', 100);

        if($options!=null)
           $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('ValidationTextBox', 'email');
		$elements[1]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoEmailHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoEmail)
 					->setAttrib('size', 80);

        if (FORM_VALIDATOR_EMAILADDRESS_CHECK_DEEP_MX)
            $elements[1]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
        else
            $elements[1]->addValidator('EmailAddress');

        if($options!=null)
            $elements[1]->setValue($options->email);

//        if (!Basico_Model_Util::ambienteDesenvolvimento())
            $elements[2] = $this->createElement('captcha', 'captcha', 
                                                array('required'=>true,
                                                'captcha'=>array('captcha'=>'Image',
                                                                 'imgDir' => CAPTCHA_IMAGE_DIR,
                                                                 'imgUrl' => CAPTCHA_IMAGE_URL,
                                                                 'wordLen'=> 6,
                                                                 'width'  => 250,
                                                                 'height' => 80,
                                                                 'font'   => CAPTCHA_FONT_PATH,
                                                                 'fontSize' => 50,
                                            	                 'expiration' => 300,
                                                                 'gcFreq'     => 100 
                                                                ),))
                                                ->setLabel("Por favor digite o código de 6 caracteres abaixo:");
                                                    
        $elements[3] = $this->createElement('submit', 'enviar', array('label' => 'Enviar',));
        
        $elements[4] = $this->createElement('hash', 'csrf', array('ignore' => true, 'salt' => 'unique',));

        $this->addElements($elements);

		/*Submit via backgroung.(ajax)
		 * parametro boleano postOnBackground
		*/
		$this->setDecorators(array(
		    'FormElements',
		    array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form_dojo')),
		    //array('DijitForm', array("postOnBackground"=> true, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),
			array('DijitForm', array("postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),
		));	
        

    }
}