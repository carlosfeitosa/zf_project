<?php
require_once ('IndexController.php');
class Admin_LoginController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=19 id=_nhohcKoDEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=19

	}

	public function indexAction()
	{
		//list all existing login items
		$login = new Default_Model_Login();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->login_items = $login->fetchList("login LIKE '%".$this->getRequest()->getParam("search")."%'  OR senha LIKE '%".$this->getRequest()->getParam("search")."%'  OR observacoes LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->login_items = $login->fetchAll();
		$form = new Admin_Form_LoginSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=20 id=_nhohcKoDEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=20

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new login";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/login/index');
        $this->view->title = ": Modify a login item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Login();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Login($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->loginid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $login = new Default_Model_Login($formData);
                $login->save();

                $this->_redirect('/admin/login/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Login();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/login/index');
	}
	

//#BlockStart number=21 id=_nhohcKoDEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=21

}
