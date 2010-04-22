<?php         $labelSubformTabTitleDadosPJ = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PJ, DEFAULT_USER_LANGUAGE);  
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
              
                  $this->addSubForm($dadosPjForm, 'CadastrarDadosPJ');

                          