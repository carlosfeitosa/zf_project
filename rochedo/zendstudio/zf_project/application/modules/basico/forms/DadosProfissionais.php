<?php 		  
			  $labelSubformTabTitleDadosProfissionais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PROFISSIONAIS, DEFAULT_USER_LANGUAGE);		
              
			  $dadosProfissionaisForm = new Zend_Dojo_Form_SubForm();
                        
              
              //$dadosProfissionaisForm->addDecorators(array('Form'));
              
              $dadosProfissionaisForm->setName('CadastrarDadosProfissionais');
              
              
              $dadosProfissionaisForm->setAttribs(array(
                  //'name'   => 'CadastrarDadosPessoais',
                  'action' => 'index2.php',
                  'method' => 'post',
                  'title'  => $labelSubformTabTitleDadosProfissionais,
              ));
              $dadosProfissionaisForm->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
              
              
              $dadosProfissionaisForm->setDecorators(array(
                    'FormElements',
                    array('HtmlTag', array('tag' => 'dl')),
                    'DijitForm'
                ));
              
              
              
              
              
              
              $dadosProfissionaisForm->addElement(
                  'Editor',
                  'wysiwyg',
                  array(
                      'label'        => 'Editor',
                      'inheritWidth' => 'true',
                  )
              );
              
              
              
              $dadosProfissionaisForm->addElement(
                      'Submit',
                      'submit',
                      array(
                          'label' => 'Salvar',
                          'required'  => true,
                      )
                  );
              
       		  $this->addSubForm($dadosProfissionaisForm, 'CadastrarDadosProfissionais');