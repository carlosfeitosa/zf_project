<?php 
      		  $labelSubformTabTitleInformacoesBancarias = $this->getView()->tradutor(SUBFORM_TABTITLE_INFORMACOES_BANCARIAS, DEFAULT_USER_LANGUAGE);	
              $informacoesBancariasForm = new Zend_Dojo_Form_SubForm();
              $informacoesBancariasForm->setName('CadastrarInformacoesBancarias');
              $informacoesBancariasForm->setAttribs(array(
                  'legend' => $labelSubformTabTitleInformacoesBancarias,
              ));
              $this->addSubForm($informacoesBancariasForm, 'CadastrarInformacoesBancarias');