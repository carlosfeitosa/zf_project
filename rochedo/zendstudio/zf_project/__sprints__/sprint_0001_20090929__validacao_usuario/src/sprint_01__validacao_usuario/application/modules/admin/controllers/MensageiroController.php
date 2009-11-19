<?php
require_once ('IndexController.php');
class Admin_MensageiroController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=106 id=_b8TuAKx9Ed6l74B_OiRrsA_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=106

	}

	public function indexAction()
	{
		//list all existing mensageiro items
		$mensageiro = new Default_Model_Mensageiro();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->mensageiro_items = $mensageiro->fetchList("");
        }
        else
            $this->view->mensageiro_items = $mensageiro->fetchAll();
		$form = new Admin_Form_MensageiroSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=107 id=_b8TuAKx9Ed6l74B_OiRrsA_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=107

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new mensageiro";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/mensageiro/index');
        $this->view->title = ": Modify a mensageiro item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Mensageiro();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Mensageiro($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->mensageiroid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $mensageiro = new Default_Model_Mensageiro($formData);
                $mensageiro->save();

                $this->_redirect('/admin/mensageiro/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Mensageiro();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/mensageiro/index');
	}
	

//#BlockStart number=108 id=_b8TuAKx9Ed6l74B_OiRrsA_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=108

}
