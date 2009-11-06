<?php
require_once ('IndexController.php');
class Admin_PessoasPerfisController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=79 id=_nKZzkKoLEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=79

	}

	public function indexAction()
	{
		//list all existing pessoasperfis items
		$pessoasperfis = new Default_Model_PessoasPerfis();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->pessoasperfis_items = $pessoasperfis->fetchList("");
        }
        else
            $this->view->pessoasperfis_items = $pessoasperfis->fetchAll();
		$form = new Admin_Form_PessoasPerfisSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=80 id=_nKZzkKoLEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=80

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new pessoasperfis";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/pessoasperfis/index');
        $this->view->title = ": Modify a pessoasperfis item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_PessoasPerfis();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $model = new Default_Model_Log();
        $this->view->logs = $model->fetchList("(`log`.`pessoasperfis` = ".$item->id.")"); 

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_PessoasPerfis($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->pessoasperfisid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $pessoasperfis = new Default_Model_PessoasPerfis($formData);
                $pessoasperfis->save();

                $this->_redirect('/admin/pessoasperfis/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_PessoasPerfis();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/pessoasperfis/index');
	}
	

    public function addlogAction()
    {
        $this->showlogForm('Add');
    }
    
    public function modifylogAction()
    {
        $model = new Default_Model_Log();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showlogForm('Modify', $item);
    }
    
    public function showlogForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_PessoasPerfis();
        $this->view->pessoasperfis = $model->find($this->getRequest()->getParam("pessoasperfisid"));
        $model = new Default_Model_Log();
        $this->view->logs = $model->fetchList("(`log`.`pessoasperfis` = ".$this->view->pessoasperfis->id.")");
        $form = new Admin_Form_Log($item);
        $form->submit->setLabel($label);
        $form->pessoasperfis->setValue($this->getRequest()->getParam("pessoasperfisid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $log = new Default_Model_Log($formData);
                $log->save();
                $this->_redirect('/admin/pessoasperfis/modify/id/'.$this->view->pessoasperfis->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deletelogAction()
    {
        $model = new Default_Model_Log();
        $object = $model->find($this->getRequest()->getParam("id"));
        $pessoasperfisid = $object->pessoasperfis;
        $object->delete();
        $this->_redirect('/admin/pessoasperfis/modify/id/'.$pessoasperfisid.'/');
    }

//#BlockStart number=81 id=_nKZzkKoLEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=81

}
