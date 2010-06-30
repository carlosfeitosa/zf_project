<?php 
			  $labelSubformTabTitleDadosPessoais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PESSOAIS, DEFAULT_USER_LANGUAGE);
			  
              $dadosPessoaisForm = new Zend_Dojo_Form_SubForm();
              $dadosPessoaisForm->setName('CadastrarDadosPessoais');
              
              $dadosPessoaisForm->setAttribs(array(
                  'legend' => 'Dados Pessoais',
                  'dijitParams' => array(
                      'title' => $labelSubformTabTitleDadosPessoais,
                  ),
              ));
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
                  );
                  $this->addSubForm($dadosPessoaisForm, 'CadastrarDadosPessoais');