<?php 		  
			  $labelSubformTabTitleDadosProfissionais = $this->getView()->tradutor(SUBFORM_TABTITLE_DADOS_PROFISSIONAIS, DEFAULT_USER_LANGUAGE);		
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
       		  $this->addSubForm($dadosProfissionaisForm, 'CadastrarDadosProfissionais');