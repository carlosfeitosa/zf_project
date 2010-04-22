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
          {
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
              
              
              $textForm = new Zend_Dojo_Form_SubForm();
              $textForm->setName('CadastrarDadosPessoais');
              
              $textForm->setAttribs(array(
                  'legend' => 'Dados Pessoais',
                  'dijitParams' => array(
                      'title' => 'Dados Pessoais',
                  ),
              ));
              $textForm->addElement(
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
              $editorForm = new Zend_Dojo_Form_SubForm();
              $editorForm->setName('CadastrarDadosProfissionais');
              $editorForm->setAttribs(array(
                  'legend' => 'Dados Profissionais',
                  'dijitParams' => array(
                      'title' => 'Dados Profissionais'
                  ),
              ));
              $editorForm->addElement(
                  'Editor',
                  'wysiwyg',
                  array(
                      'label'        => 'Editor',
                      'inheritWidth' => 'true',
                  )
              );
       
              $toggleForm = new Zend_Dojo_Form_SubForm();
              $editorForm->setName('CadastrarDadosAcademicos');
              $toggleForm->setAttribs(array(
                  'legend' => 'Dados Acadêmicos',
              ));
              
              $toggleForm->addElement(
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
                //  protected $_selectOptions = array(
                  
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
              $selectForm = new Zend_Dojo_Form_SubForm();
              $selectForm->setName('CadastrarOutrosDados');
              $selectForm->setAttribs(array(
                  'legend' => 'Outros dados',
              ));
                            
              $selectForm->addElement(
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
              
              	  $button = new Zend_Form_Element_Submit('enviar', array('label' => 'Enviar',));
                  
              	  $selectForm->addElement($button);
                  

                                
              $sliderForm = new Zend_Dojo_Form_SubForm();
              $selectForm->setName('CadastrarDadosBiometricos');
              $sliderForm->setAttribs(array(
                  'legend' => 'Dados Biométricos',
              ));
              $sliderForm->addElement(
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
       
              $this->addSubForm($textForm, 'CadastrarDadosPessoais')
                   ->addSubForm($editorForm, 'CadastrarDadosProfissionais')
                   ->addSubForm($toggleForm, 'CadastrarDadosAcademicos')
                   ->addSubForm($selectForm, 'CadastrarOutrosDados')
                   ->addSubForm($sliderForm, 'CadastrarDadosBiometricos');
          }
      }
