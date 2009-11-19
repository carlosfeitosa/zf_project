<?php
require_once ('IndexController.php');
class Admin_UtilController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=163 id=_ddFv4NUwEd6QYqXIpZyWbg_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=163

	}

	public function indexAction()
	{
		//list all existing util items
		$util = new Default_Model_Util();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->util_items = $util->fetchList("");
        }
        else
            $this->view->util_items = $util->fetchAll();
		$form = new Admin_Form_UtilSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=164 id=_ddFv4NUwEd6QYqXIpZyWbg_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=164

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new util";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/util/index');
        $this->view->title = ": Modify a util item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Util();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Util($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->utilid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $util = new Default_Model_Util($formData);
                $util->save();

                $this->_redirect('/admin/util/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Util();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/util/index');
	}
	

//#BlockStart number=165 id=_ddFv4NUwEd6QYqXIpZyWbg_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=165

}
