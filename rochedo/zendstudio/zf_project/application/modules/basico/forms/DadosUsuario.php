<?php 

class Basico_Form_DadosUsuario extends Zend_Dojo_Form
{
          /**
           * Form initialization
           *
           * @return void
           */
          public function __construct($options = null)
          {	  	
          	  
          	  parent::__construct($options);
          	            	  
              $this->setMethod('post');
              $this->setName('CadastrarDadosUsuario');
              $this->setAction('dadosusuario');
              $this->setDecorators(array(
                  'FormElements',
                  array('TabContainer', array(
                      'id' => 'tabDadosUsuario',
                      'style' => 'width: 850px; height: 430px; position: relative;',
                      'dijitParams' => array(
                          'tabPosition' => 'top'
                      ),
                  )),  array('DijitForm', 
					          array("postOnBackgroundOptions"=> 
					                 array('successHandler'=>"dojo.eval(data);")
					          )
					   )
              	));
              	
              $this->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarDadosUsuario'))"));
              
              $button = new Zend_Form_Element_Submit('salvar', array('label' => 'Salvar',));
                  
              $this->addElement($button);

              //inclusão de SubForms
              require_once("DadosPessoais.php");
              require_once("DadosProfissionais.php");              
              require_once("DadosAcademicos.php");
              require_once("DadosPj.php");              
              require_once("DadosBiometricos.php");
              require_once("InformacoesBancarias.php");              
              require_once("Perfil.php");              
              require_once("Resumo.php");
                            
              
          }
}     