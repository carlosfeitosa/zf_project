<?php
			  $labelSubformTabTitleDadosAcademicos = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_ACADEMICOS, DEFAULT_USER_LANGUAGE);	 
     		  $dadosAcademicosForm = new Zend_Dojo_Form_SubForm();
              $dadosAcademicosForm->setName('CadastrarDadosAcademicos');
              $dadosAcademicosForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleDadosAcademicos,
              )); 
              
              $dadosAcademicosForm->addElement(
                      'NumberSpinner',
                      'ns',
                      array(
                          'value'             => '7',
                          'label'             => 'NumberSpinner',
                          'smallDelta'        => 5,
                          'largeDelta'        => 25,
                          'defaultTimeout'    => 1000,
                          'timeoutChangeRate' => 100,
                          'min'               => 9,
                          'max'               => 1550,
                          'places'            => 0,
                          'maxlength'         => 20,
                      )
                  )
                  ->addElement(
                      'Button',
                      'dijitButton',
                      array(
                          'label' => 'Button',
                      )
                  )         
                  ->addElement(
                      'CheckBox',
                      'checkbox',
                      array(
                          'label' => 'CheckBox',
                          'checkedValue'  => 'foo',
                          'uncheckedValue'  => 'bar',
                          'checked' => true,
                      )
                  )
                  ->addElement(
                      'RadioButton',
                      'radiobutton',
                      array(
                          'label' => 'RadioButton',
                          'multiOptions'  => array (
                              'foo' => 'Foo',
                              'bar' => 'Bar',
                              'baz' => 'Baz',
                          ),
                          'value' => 'bar',
                      )
                  );
                  
                  $this->addSubForm($dadosAcademicosForm, 'CadastrarDadosAcademicos');