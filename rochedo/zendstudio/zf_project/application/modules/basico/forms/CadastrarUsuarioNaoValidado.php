<?php
/**
* Rochedo Framework
*
* Formulário gerado automáticamente pelo Gerador rochedo
* em: 13/07/2010 17:30:43
*
* LICENÇA DE USO
*
* (implementar licença)
*
*
* @category   RochedoProject
* @package    BASICO
* @copyright  Copyright (c) 2010 Rochedo Project. (http://www.rochedoproject.com)
* @license    (implementar)
* @version    0.1: 2010-07-09 17:00:00
*/
class Basico_Form_CadastrarUsuarioNaoValidado extends Zend_Dojo_Form
{
    /**
    * Constructor do Form
    * @param array $options
    * @return Basico_Form_CadastrarUsuarioNaoValidado
    */
    public function __construct($options = null)
    {
        /**
        * Inicializando o formulário.
        */
        parent::__construct($options);

        $this->setName('CadastrarUsuarioNaoValidado');
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
        $this->setDecorators(array('FormElements',
                array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_form_dojo')),
                array('DijitForm', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),));

        /**
        * Adicionando array de elementos.
        */

        $elements = array();

        $elements[0] = $this->createElement('ValidationTextBox', 'nome');
        $elements[0]->setAttribs(array('size' => 100));
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addValidator('NotEmpty');
        $elements[0]->AddDecorator('Label', array('escape' => false));
        $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_NOME', DEFAULT_USER_LANGUAGE).'<a href="javascript:showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'Ajuda\', \'Digite neste campo o seu nome completo, sem abreviações.\', 1)"> (?)</a>');
        $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('ValidationTextBox', 'email');
        $elements[1]->setAttribs(array('size' => 80));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty');
        $elements[1]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
        $elements[1]->AddDecorator('Label', array('escape' => false));
        $elements[1]->setLabel($this->getView()->tradutor('FORM_FIELD_EMAIL', DEFAULT_USER_LANGUAGE).'<a href="javascript:showDialogAlert(\'CadastrarUsuarioNaoValidado\', \'Ajuda\', \'Digite neste campo o seu e-mail. Digite apenas 1 (um) endereço, sem espaços.\', 1)"> (?)</a>');
        $elements[1]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_EMAIL_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[1]->setValue($options->email);

        if (!Basico_Model_Util::ambienteDesenvolvimento()){
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
                                             'gcFreq' => 100),));
            $elements[2]->setRequired(true);
            $elements[2]->AddDecorator('Label', array('escape' => false));
            $elements[2]->setLabel($this->getView()->tradutor('FORM_FIELD_CAPTCHA_6', DEFAULT_USER_LANGUAGE).'');
        }

        $elements[3] = $this->createElement('hash', 'csrf', array('ignore' => true, 'salt' => 'unique',));
        $elements[3]->setRequired(true);

        $elements[4] = $this->createElement('submit', 'enviar', array('label' => 'Enviar',));
        $elements[4]->setRequired(true);

        $this->addElements($elements);
    }
}
?>