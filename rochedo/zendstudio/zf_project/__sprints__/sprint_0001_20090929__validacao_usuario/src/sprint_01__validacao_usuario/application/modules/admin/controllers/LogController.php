<?php
require_once ('IndexController.php');
class Admin_LogController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=76 id=_ahwT0Kw2Ed6jTJH7GgbZHg_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=76

	}

	public function indexAction()
	{
		//list all existing log items
		$log = new Default_Model_Log();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->log_items = $log->fetchList("xml LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->log_items = $log->fetchAll();
		$form = new Admin_Form_LogSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=77 id=_ahwT0Kw2Ed6jTJH7GgbZHg_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=77

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new log";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/log/index');
        $this->view->title = ": Modify a log item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Log();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Log($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->logid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $log = new Default_Model_Log($formData);
                $log->save();

                $this->_redirect('/admin/log/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Log();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/log/index');
	}
	

//#BlockStart number=78 id=_ahwT0Kw2Ed6jTJH7GgbZHg_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=78

}
