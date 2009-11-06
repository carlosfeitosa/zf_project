<?php
require_once ('IndexController.php');
class Admin_PessoaController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=10 id=_ej5KYKoDEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=10

	}

	public function indexAction()
	{
		//list all existing pessoa items
		$pessoa = new Default_Model_Pessoa();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->pessoa_items = $pessoa->fetchList("");
        }
        else
            $this->view->pessoa_items = $pessoa->fetchAll();
		$form = new Admin_Form_PessoaSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=11 id=_ej5KYKoDEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=11

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new pessoa";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/pessoa/index');
        $this->view->title = ": Modify a pessoa item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Pessoa();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $model = new Default_Model_Email();
        $this->view->emailss = $model->fetchList("(`emails`.`pessoa` = ".$item->id.")"); 

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Pessoa($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->pessoaid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $pessoa = new Default_Model_Pessoa($formData);
                $pessoa->save();

                $this->_redirect('/admin/pessoa/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Pessoa();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/pessoa/index');
	}
	

    public function addemailsAction()
    {
        $this->showemailsForm('Add');
    }
    
    public function modifyemailsAction()
    {
        $model = new Default_Model_Email();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showemailsForm('Modify', $item);
    }
    
    public function showemailsForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Pessoa();
        $this->view->pessoa = $model->find($this->getRequest()->getParam("pessoaid"));
        $model = new Default_Model_Email();
        $this->view->emailss = $model->fetchList("(`emails`.`pessoa` = ".$this->view->pessoa->id.")");
        $form = new Admin_Form_Email($item);
        $form->submit->setLabel($label);
        $form->pessoa->setValue($this->getRequest()->getParam("pessoaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $emails = new Default_Model_Email($formData);
                $emails->save();
                $this->_redirect('/admin/pessoa/modify/id/'.$this->view->pessoa->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deleteemailsAction()
    {
        $model = new Default_Model_Email();
        $object = $model->find($this->getRequest()->getParam("id"));
        $pessoaid = $object->pessoa;
        $object->delete();
        $this->_redirect('/admin/pessoa/modify/id/'.$pessoaid.'/');
    }

//#BlockStart number=12 id=_ej5KYKoDEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=12

}
