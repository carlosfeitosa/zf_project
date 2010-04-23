<?php
/**
 * Form de continuação do cadastro de novos usuarios.
 * 
 *
 */
class Basico_Form_CadastrarUsuarioValidado extends Zend_Dojo_Form
{
	/**
	 * Construtor do Form.
	 * @param array $options
	 * @return Basico_Form_CadastrarUsuarioValidado
	 */
    public function __construct($options = null)
    {
    	
    	//pegando os labels e hints dos campos do formulario
        $labelCampoNomeConfirmacao  = $this->getView()->tradutor(FORM_FIELD_NOME_CONFIRMACAO, DEFAULT_USER_LANGUAGE);
        $labelCampoNomeConfirmacaoHint = $this->getView()->tradutor(FORM_FIELD_NOME_CONFIRMACAO_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoNomeUsuario = $this->getView()->tradutor(FORM_FIELD_NOME_USUARIO, DEFAULT_USER_LANGUAGE);
        $labelCampoNomeUsuarioHint = $this->getView()->tradutor(FORM_FIELD_NOME_USUARIO_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoSenha = $this->getView()->tradutor(FORM_FIELD_SENHA, DEFAULT_USER_LANGUAGE);
        $labelCampoSenhaHint = $this->getView()->tradutor(FORM_FIELD_SENHA_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoSenhaConfirmacao = $this->getView()->tradutor(FORM_FIELD_SENHA_CONFIRMACAO, DEFAULT_USER_LANGUAGE);
        $labelCampoSenhaConfirmacaoHint = $this->getView()->tradutor(FORM_FIELD_SENHA_CONFIRMACAO_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoSenhaForca = $this->getView()->tradutor(FORM_FIELD_SENHA_FORCA, DEFAULT_USER_LANGUAGE);
        $labelCampoSenhaForcaHint = $this->getView()->tradutor(FORM_FIELD_SENHA_FORCA_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoDataNascimento = $this->getView()->tradutor(FORM_FIELD_DATA_NASCIMENTO, DEFAULT_USER_LANGUAGE);
        $labelCampoDataNascimentoHint = $this->getView()->tradutor(FORM_FIELD_DATA_NASCIMENTO_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoSexo = $this->getView()->tradutor(FORM_FIELD_SEXO, DEFAULT_USER_LANGUAGE);
        $labelCampoSexoHint = $this->getView()->tradutor(FORM_FIELD_SEXO_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoRg = $this->getView()->tradutor(FORM_FIELD_RG, DEFAULT_USER_LANGUAGE);
        $labelCampoRgHint = $this->getView()->tradutor(FORM_FIELD_RG_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoCpf = $this->getView()->tradutor(FORM_FIELD_CPF, DEFAULT_USER_LANGUAGE);
        $labelCampoCpfHint = $this->getView()->tradutor(FORM_FIELD_CPF_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoPassaporte = $this->getView()->tradutor(FORM_FIELD_PASSAPORTE, DEFAULT_USER_LANGUAGE);
        $labelCampoPassaporteHint = $this->getView()->tradutor(FORM_FIELD_PASSAPORTE_HINT, DEFAULT_USER_LANGUAGE);
        $labelCampoCnh = $this->getView()->tradutor(FORM_FIELD_CNH, DEFAULT_USER_LANGUAGE);
        $labelCampoCnhHint = $this->getView()->tradutor(FORM_FIELD_CNH_HINT, DEFAULT_USER_LANGUAGE);
        
        parent::__construct($options);
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->setName('CadastrarUsuarioValidado');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioValidado'))"));
        
        $this->setDecorators(array(
                  'FormElements',
                  array('TitlePane', array(
                      'id' => 'tabDadosUsuario',
                      'style' => 'width: 850px; height: 600px;',
                      'dijitParams' => array(
                          'tabPosition' => 'top'
                      ),
                  )),
                  'DijitForm',
              ));
        
              
        $elements = array();
       
        $elements[0] = $this->createElement('ValidationTextBox', 'nomeConfirmacao');
		$elements[0]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoNomeConfirmacaoHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoNomeConfirmacao)
 					->setAttrib('size', 100);

        if($options!=null)
           $elements[0]->setValue($options->nomeConfirmacao);
           
        $elements[1] = $this->createElement('RadioButton','sexo');
        $elements[1]->setLabel('Sexo:')
                    ->setMultiOptions(array('M' => 'Masculino', 'F' => 'Feminino'))
                    ->setValue('M');
                    
        if($options!=null)
           $elements[1]->setValue($options->sexo);

        $elements[2] = $this->createElement('DateTextBox', 'dataNascimento');
		$elements[2]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoDataNascimentoHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoDataNascimento)
 					->setAttrib('size', 80);
 		if($options!=null)
           $elements[2]->setValue($options->dataNascimento);

        $formDocumentosFileUrl      = "http://localhost/rochedo_project/application/modules/basico/forms/DocumentosIdentificacao.php";   
        $tokenFileUrl = $this->getView()->urlEncrypt($formDocumentosFileUrl);
 
        $elements[3] = $this->createElement('Button', 'documentos');
        $elements[3]->setLabel('Adicionar Documento de Identificação')
                    ->setAttrib('onClick', "exibirFormDocumentos('$tokenFileUrl')"); 
           
        $elements[4] = $this->createElement('ValidationTextBox', 'nomeUsuario');
		$elements[4]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoNomeUsuarioHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoNomeUsuario)
 					->setAttrib('size', 80);
 		if($options!=null)
           $elements[4]->setValue($options->nomeUsuario);  

        $elements[5] = $this->createElement('PasswordTextBox', 'senha');
        $elements[5]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->setInvalidMessage($labelCampoSenhaHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoSenha)
 					->setAttrib('size', 80);
 		if($options!=null)
           $elements[5]->setValue($options->senha);
           
          
        $elements[6] = $this->createElement('PasswordTextBox', 'senhaConfirmacao');
        $elements[6]->addFilters(array('StringTrim', 'StripTags'))
                    ->addValidator('NotEmpty')
                    ->addValidator(new Zend_Validate_StringLength(6,12))
                    ->addValidator(new Zend_Validate_Identical(Zend_Controller_Front::getInstance()->getRequest()->getParam('senha')))
                    ->setInvalidMessage($labelCampoSenhaConfirmacaoHint)
                    ->setRequired(true)
                    ->setLabel($labelCampoSenhaConfirmacao)
 					->setAttrib('size', 80);
 		if($options!=null)
           $elements[6]->setValue($options->senha);
 					
        if (!Basico_Model_Util::ambienteDesenvolvimento())
            $elements[7] = new Zend_Form_Element_Captcha('captcha', array(
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
        
        $elements[8] = new Zend_Form_Element_Submit('enviar', array('label' => 'Enviar',));
        
        $elements[9] = new Zend_Form_Element_Hash('token', 'csrf', array('ignore' => true, 'salt' => 'unique',));

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