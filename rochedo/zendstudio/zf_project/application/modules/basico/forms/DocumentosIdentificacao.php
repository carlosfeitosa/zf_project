<?php

class Basico_Form_DocumentosIdentificacao extends Zend_Dojo_Form
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

        $this->setName('DocumentosIdentificacao');
        $this->setMethod('post');
        $this->setAction('verificaNovoLogin');
        $this->addAttribs(array('onSubmit'=>"loading();return(validateForm(\"DocumentosIdentificacao\"))"));
        $this->setDecorators(array('FormElements',
                array('HtmlTag', array('tag' => 'dl', 'class' => 'zend_dojo_form')),
                array('DijitForm', array("postOnBackground"=> false, "postOnBackgroundOptions"=> array('successHandler'=>"dojo.eval(data);"))),));
        /**
        * Adicionando array de elementos.
        */

        $elements = array();

        $elements[0] = $this->createElement('ValidationTextBox', 'nome');
        $elements[0]->setAttribs(array('size' => 50));
        $elements[0]->setRequired(true);
        $elements[0]->addFilters(array('StringTrim', 'StripTags'));
        $elements[0]->addValidator('NotEmpty');
        $elements[0]->AddDecorator('Label', array('escape' => false));
        $elements[0]->setLabel($this->getView()->tradutor('FORM_FIELD_NOME', DEFAULT_USER_LANGUAGE));
        $elements[0]->setInvalidMessage($this->getView()->tradutor('FORM_FIELD_NOME_HINT', DEFAULT_USER_LANGUAGE));
        if ($options!=null)
            $elements[0]->setValue($options->nome);

        $elements[1] = $this->createElement('ValidationTextBox', 'email');
        $elements[1]->setAttribs(array('size' => 50));
        $elements[1]->setRequired(true);
        $elements[1]->addFilters(array('StringTrim', 'StripTags'));
        $elements[1]->addValidator('NotEmpty');
        $elements[1]->addValidator('EmailAddress', true, array('mx' => true, 'deep' => true,));
        $elements[1]->AddDecorator('Label', array('escape' => false));
        $elements[1]->setLabel($this->getView()->tradutor('FORM_FIELD_EMAIL', DEFAULT_USER_LANGUAGE));
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

<!-- 
<form dojoType="dijit.form.Form" id="documentosIdentificacao" name="documentosIdentificacao" method="post" action="salvarDocumentos">
<table>
<tr>
<td colspan="2"> Preencha pelo menos um dos campos abaixo.</td>

</tr>
        <tr>
            <td>
                <label for="cpf">
                    CPF:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="cpf" id="cpf" style="width: 200;" maxlength="11">
            </td>
        </tr>
        <tr>
            <td>
                <label for="rg">
                    RG:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="rg" id="rg" style="width: 200;">
            </td>
        </tr>
        <tr>
            <td>
                <label for="cnh">
                    CNH:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="cnh" id="cnh" style="width: 200;">
            </td>
        </tr>
        <tr>
            <td>
                <label for="passaporte">
                    Passaporte:
                </label>
            </td>
            <td>
                <input dojoType="dijit.form.ValidationTextBox" type="text" name="passaporte" id="passaporte" style="width: 200;">
            </td>
        </tr>
    
     
        <tr>
            <td align="center" colspan="2">
                <button dojoType="dijit.form.Button" type="submit" onClick="return dijit.byId('formDocumentos').isValid();">
                    OK
                </button>
                <button dojoType="dijit.form.Button" type="button" onClick="hideDialog('formDocumentos');">
                    Cancel
                </button>
            </td>
        </tr>
       
    </table>
 </form>
  -->