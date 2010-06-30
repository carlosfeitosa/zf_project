<?php 		  $labelSubformTabTitleResumo = $this->getView()->tradutor(SUBFORM_TABTITLE_RESUMO, DEFAULT_USER_LANGUAGE);	
              $resumoForm = new Zend_Dojo_Form_SubForm();
              $resumoForm->setName('CadastrarResumo');
              $resumoForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleResumo,
              ));
			  $this->addSubForm($resumoForm, 'CadastrarResumo'); 	