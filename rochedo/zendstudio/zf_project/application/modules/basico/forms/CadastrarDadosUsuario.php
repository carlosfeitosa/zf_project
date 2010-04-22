<?php 
     class Basico_Form_CadastrarDadosUsuario extends Zend_Dojo_Form
      {
          /**
           * Options to use with select elements
           */
          protected $_selectOptions = array(
              'red'    => 'Rouge',
              'blue'   => 'Bleu',
              'white'  => 'Blanc',
              'orange' => 'Orange',
              'black'  => 'Noir',
              'green'  => 'Vert',
          );
       
          /**
           * Form initialization
           *
           * @return void
           */
          public function init()
          {	  //contantes	
          	  $labelSubformTabTitleDadosPessoais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PESSOAIS, DEFAULT_USER_LANGUAGE);
          	  $labelSubformTabTitleDadosProfissionais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PROFISSIONAIS, DEFAULT_USER_LANGUAGE);          	  
          	  $labelSubformTabTitleDadosAcademicos = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_ACADEMICOS, DEFAULT_USER_LANGUAGE);
          	  $labelSubformTabTitleDadosBiometricos = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_BIOMETRICOS, DEFAULT_USER_LANGUAGE);
          	  $labelSubformTabTitleInformacoesBancarias = $this->getView()->tradutor(SUBFORM_TABTITLE_INFORMACOES_BANCARIAS, DEFAULT_USER_LANGUAGE);          	  
          	  $labelSubformTabTitleDadosPJ = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PJ, DEFAULT_USER_LANGUAGE);
          	  $labelSubformTabTitlePerfil = $this->getView()->tradutor(SUBFORM_TABTITLE_PERFIL, DEFAULT_USER_LANGUAGE);
			  $labelSubformTabTitleResumo = $this->getView()->tradutor(SUBFORM_TABTITLE_RESUMO, DEFAULT_USER_LANGUAGE);
          	            	  
              $this->setMethod('post');
              $this->setName('CadastrarDadosUsuario');
              $this->setAction('verificaNovoLogin');
              $this->setDecorators(array(
                  'FormElements',
                  array('TabContainer', array(
                      'id' => 'tabDadosUsuario',
                      'style' => 'width: 850px; height: 600px;',
                      'dijitParams' => array(
                          'tabPosition' => 'top'
                      ),
                  )),
                  'DijitForm',
              ));
              
              
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
              $dadosProfissionaisForm = new Zend_Dojo_Form_SubForm();
              $dadosProfissionaisForm->setName('CadastrarDadosProfissionais');
              $dadosProfissionaisForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleDadosProfissionais,
              ));
              $dadosProfissionaisForm->addElement(
                  'Editor',
                  'wysiwyg',
                  array(
                      'label'        => 'Editor',
                      'inheritWidth' => 'true',
                  )
              );
       
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
                          'multiOptions'  => array(
                              'foo' => 'Foo',
                              'bar' => 'Bar',
                              'baz' => 'Baz',
                          ),
                          'value' => 'bar',
                      )
                  );
              $dadosPjForm = new Zend_Dojo_Form_SubForm();
              $dadosPjForm->setName('CadastrarDadosPJ');
              $dadosPjForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleDadosPJ,
              ));
                            
              $dadosPjForm->addElement(
                      'ComboBox',
                      'comboboxselect',
                      array(
                          'label' => 'ComboBox (select)',
                          'value' => 'blue',
                          'autocomplete' => false,
                          'multiOptions' => $this->_selectOptions,
                      )
                  )
                  ->addElement(
                      'ComboBox',
                      'comboboxremote',
                      array(
                          'label' => 'ComboBox (remoter)',
                          'storeId' => 'stateStore',
                          'storeType' => 'dojo.data.ItemFileReadStore',
                          'storeParams' => array(
                              'url' => '/js/states.txt',
                          ),
                          'dijitParams' => array(
                              'searchAttr' => 'name',
                          ),
                      )
                  )
                  ->addElement(
                      'FilteringSelect',
                      'filterselect',
                      array(
                          'label' => 'FilteringSelect (select)',
                          'value' => 'blue',
                          'autocomplete' => false,
                          'multiOptions' => $this->_selectOptions,
                      )
                  )
                  ->addElement(
                      'FilteringSelect',
                      'filterselectremote',
                      array(
                          'label' => 'FilteringSelect (remoter)',
                          'storeId' => 'stateStore',
                          'storeType' => 'dojo.data.ItemFileReadStore',
                          'storeParams' => array(
                              'url' => '/js/states.txt',
                          ),
                          'dijitParams' => array(
                              'searchAttr' => 'name',
                          ),
                      )
                  );
              
                  

                                
              $dadosBiometricosForm = new Zend_Dojo_Form_SubForm();
              $dadosBiometricosForm->setName('CadastrarDadosBiometricos');
              $dadosBiometricosForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleDadosBiometricos,
              ));
              $dadosBiometricosForm->addElement(
                      'HorizontalSlider',
                      'horizontal',
                      array(
                          'label' => 'HorizontalSlider',
                          'value' => 5,
                          'minimum' => -10,
                          'maximum' => 10,
                          'discreteValues' => 11,
                          'intermediateChanges' => true,
                          'showButtons' => true,
                          'topDecorationDijit' => 'HorizontalRuleLabels',
                          'topDecorationContainer' => 'topContainer',
                          'topDecorationLabels' => array(
                                  ' ',
                                  '20%',
                                  '40%',
                                  '60%',
                                  '80%',
                                  ' ',
                          ),
                          'topDecorationParams' => array(
                              'container' => array(
                                  'style' => 'height:1.2em; ' .
                                             'font-size=75%;color:gray;',
                              ),
                              'list' => array(
                                  'style' => 'height:1em; ' .
                                             'font-size=75%;color:gray;',
                              ),
                          ),
                          'bottomDecorationDijit' => 'HorizontalRule',
                          'bottomDecorationContainer' => 'bottomContainer',
                          'bottomDecorationLabels' => array(
                                  '0%',
                                  '50%',
                                  '100%',
                          ),
                          'bottomDecorationParams' => array(
                              'list' => array(
                                  'style' => 'height:1em; ' .
                                             'font-size=75%;color:gray;',
                              ),
                          ),
                      )
                  )
                  ->addElement(
                      'VerticalSlider',
                      'vertical',
                      array(
                          'label' => 'VerticalSlider',
                          'value' => 5,
                          'style' => 'height: 200px; width: 3em;',
                          'minimum' => -10,
                          'maximum' => 10,
                          'discreteValues' => 11,
                          'intermediateChanges' => true,
                          'showButtons' => true,
                          'leftDecorationDijit' => 'VerticalRuleLabels',
                          'leftDecorationContainer' => 'leftContainer',
                          'leftDecorationLabels' => array(
                                  ' ',
                                  '20%',
                                  '40%',
                                  '60%',
                                  '80%',
                                  ' ',
                          ),
                          'rightDecorationDijit' => 'VerticalRule',
                          'rightDecorationContainer' => 'rightContainer',
                          'rightDecorationLabels' => array(
                                  '0%',
                                  '50%',
                                  '100%',
                          ),
                      )
                  );

              $informacoesBancariasForm = new Zend_Dojo_Form_SubForm();
              $informacoesBancariasForm->setName('CadastrarInformacoesBancarias');
              $informacoesBancariasForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleInformacoesBancarias,
              ));
              
              
              $perfilForm = new Zend_Dojo_Form_SubForm();
              $perfilForm->setName('CadastrarPerfil');
              $perfilForm->setAttribs(array(
                  'legend' => $labelSubformTabTitlePerfil,
              ));
              
              $resumoForm = new Zend_Dojo_Form_SubForm();
              $resumoForm->setName('CadastrarResumo');
              $resumoForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleResumo,
              ));
              
              $button = new Zend_Form_Element_Submit('enviar', array('label' => 'Enviar',));
                  
              $this->addElement($button);
              
              $this->addSubForm($dadosPessoaisForm, 'CadastrarDadosPessoais')
                   ->addSubForm($dadosProfissionaisForm, 'CadastrarDadosProfissionais')
                   ->addSubForm($dadosAcademicosForm, 'CadastrarDadosAcademicos')
                   ->addSubForm($dadosPjForm, 'CadastrarDadosPJ')
                   ->addSubForm($dadosBiometricosForm, 'CadastrarDadosBiometricos')
				   ->addSubForm($informacoesBancariasForm, 'CadastrarInformacoesBancarias')
				   ->addSubForm($perfilForm, 'CadastrarPerfil')
				   ->addSubForm($resumoForm, 'CadastrarResumo');                   
          }
      }
