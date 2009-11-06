<?php
require_once ('IndexController.php');
class Admin_DadosPessoaisController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=109 id=_-kOg4KxUEd68D_d-n4iFew_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=109

	}

	public function indexAction()
	{
		//list all existing dadospessoais items
		$dadospessoais = new Default_Model_DadosPessoais();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->dadospessoais_items = $dadospessoais->fetchList("nome LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->dadospessoais_items = $dadospessoais->fetchAll();
		$form = new Admin_Form_DadosPessoaisSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=110 id=_-kOg4KxUEd68D_d-n4iFew_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=110

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new dadospessoais";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/dadospessoais/index');
        $this->view->title = ": Modify a dadospessoais item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_DadosPessoais();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_DadosPessoais($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->dadospessoaisid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $dadospessoais = new Default_Model_DadosPessoais($formData);
                $dadospessoais->save();

                $this->_redirect('/admin/dadospessoais/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_DadosPessoais();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/dadospessoais/index');
	}
	

//#BlockStart number=111 id=_-kOg4KxUEd68D_d-n4iFew_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=111

}
