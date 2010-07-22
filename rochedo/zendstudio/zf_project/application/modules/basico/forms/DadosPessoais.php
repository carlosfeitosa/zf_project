<?php 
			  $labelSubformTabTitleDadosPessoais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PESSOAIS, DEFAULT_USER_LANGUAGE);
			  
              $dadosPessoaisForm = new Zend_Dojo_Form_SubForm();
              //$dadosPessoaisForm->setName('CadastrarDadosPessoais');
              
              $dadosPessoaisForm->setAttribs(array(
                  //'name'   => 'CadastrarDadosPessoais',
                  'action' => 'index.php',
                  'method' => 'post',
                  'title'  => $labelSubformTabTitleDadosPessoais,
              ));
              $dadosPessoaisForm->addAttribs(array('onSubmit'=>"loading();return(validateForm('CadastrarUsuarioNaoValidado'))"));
              
              
              $dadosPessoaisForm->setDecorators(array(
				    'FormElements',
				    array('HtmlTag', array('tag' => 'dl')),
				    'DijitForm'
				));

				
				
				
		
              // início dos elementos              
              $dadosPessoaisForm->addElement(
                      'TextBox',
                      'textbox',
                      array(
                          'value'      => 'some text',
                          'label'      => 'TextBox',
                          'trim'       => true,
                          'propercase' => true,
                      )
                  )
                  
                  
                  ->addElement(
                      'DateTextBox',
                      'datebox',
                      array(
                          'value' => '2008-07-05',
                          'label' => 'DateTextBox',
                          'required'  => true,
                      )
                  )
                  ->addElement(
                      'TimeTextBox',
                      'timebox',
                      array(
                          'label' => 'TimeTextBox',
                          'required'  => true,
                      )
                  )
                  ->addElement(
                      'CurrencyTextBox',
                      'currencybox',
                      array(
                          'label' => 'CurrencyTextBox',
                          'required'  => true,
                          // 'currency' => 'USD',
                          'invalidMessage' => 'Invalid amount. ' .
                                              'Include dollar sign, commas, ' .
                                              'and cents.',
                          // 'fractional' => true,
                          // 'symbol' => 'USD',
                          // 'type' => 'currency',
                      )
                  )
                  ->addElement(
                      'NumberTextBox',
                      'numberbox',
                      array(
                          'label' => 'NumberTextBox',
                          'required'  => true,
                          'invalidMessage' => 'Invalid elevation.',
                          'constraints' => array(
                              'min' => -20000,
                              'max' => 20000,
                              'places' => 0,
                          )
                      )
                  )
                  ->addElement(
                      'ValidationTextBox',
                      'validationbox',
                      array(
                          'label' => 'ValidationTextBox',
                          'required'  => true,
                          'regExp' => '[\w]+',
                          'invalidMessage' => 'Invalid non-space text.',
                      )
                  )
                  
                  ->addElement(
                      'Textarea',
                      'textarea',
                      array(
                          'label'    => 'Textarea',
                          'required' => true,
                          'style'    => 'width: 200px;',
                      )
                  )
                  
                  ->addElement(
                      'Submit',
                      'submit',
                      array(
                          'label' => 'Salvar',
                          'required'  => true,
                      )
                  );
                  $this->addSubForm($dadosPessoaisForm, 'CadastrarDadosPessoais');