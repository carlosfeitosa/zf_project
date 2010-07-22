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

        	  //Define o Container de Abas para os formulários
              $this->setDecorators(array(
                  'FormElements',
                  array('TabContainer', array(
                      'id' => 'tabDadosUsuario',
                      'style' => 'width: 850px; height: 430px; position: relative; z-index: 3;',
                      'dijitParams' => array(
                          'tabPosition' => 'top'
                      ),
                  )),
                  
              	));
 
              	
              	
              //inclusão de SubForms
              require_once("DadosPessoais.php");
              require_once("DadosProfissionais.php");

              /*
              require_once("DadosAcademicos.php");
              require_once("DadosPj.php");              
              require_once("DadosBiometricos.php");
              require_once("InformacoesBancarias.php");              
              require_once("Perfil.php");              
              require_once("Resumo.php");
              */  
              
          }
}     