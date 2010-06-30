<?php 		  $labelSubformTabTitlePerfil = $this->getView()->tradutor(SUBFORM_TABTITLE_PERFIL, DEFAULT_USER_LANGUAGE);	
              $perfilForm = new Zend_Dojo_Form_SubForm();
              $perfilForm->setName('CadastrarPerfil');
              $perfilForm->setAttribs(array(
                  'legend' => $labelSubformTabTitlePerfil,
              ));
			  $this->addSubForm($perfilForm, 'CadastrarPerfil'); 	