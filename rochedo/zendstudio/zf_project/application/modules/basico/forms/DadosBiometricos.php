<?php 		  $labelSubformTabTitleDadosBiometricos = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_BIOMETRICOS, DEFAULT_USER_LANGUAGE); 	
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
                          'topDecorationDijit' => ' HorizontalRuleLabels',
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

				  $this->addSubForm($dadosBiometricosForm, 'CadastrarDadosBiometricos');	