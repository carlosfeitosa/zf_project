<?php
class Basico_TokenController
{
	public function init()
	{
		
	}

	/*
	public function indexAction()
	{
		//list all existing token items
		$token = new Default_Model_Token();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->token_items = $token->fetchList("token LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->token_items = $token->fetchAll();
		$form = new Admin_Form_TokenSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=194 id=_AuCKAAtgEd-pV_5Ujd3W9A_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=194

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new token";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/token/index');
        $this->view->title = ": Modify a token item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Token();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Token($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->tokenid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $token = new Default_Model_Token($formData);
                $token->save();

                $this->_redirect('/admin/token/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Token();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/token/index');
	}
	

//#BlockStart number=195 id=_AuCKAAtgEd-pV_5Ujd3W9A_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=195
*/
	
}
