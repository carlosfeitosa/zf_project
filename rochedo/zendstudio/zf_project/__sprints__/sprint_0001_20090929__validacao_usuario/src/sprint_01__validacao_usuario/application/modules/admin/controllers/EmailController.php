<?php
require_once ('IndexController.php');
class Admin_EmailController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=28 id=_oQ1w0KoDEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=28

	}

	public function indexAction()
	{
		//list all existing email items
		$email = new Default_Model_Email();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->email_items = $email->fetchList("uniqueId LIKE '%".$this->getRequest()->getParam("search")."%'  OR email LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->email_items = $email->fetchAll();
		$form = new Admin_Form_EmailSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=29 id=_oQ1w0KoDEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=29

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new email";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/email/index');
        $this->view->title = ": Modify a email item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Email();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Email($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->emailid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $email = new Default_Model_Email($formData);
                $email->save();

                $this->_redirect('/admin/email/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Email();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/email/index');
	}
	

//#BlockStart number=30 id=_oQ1w0KoDEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=30

}
