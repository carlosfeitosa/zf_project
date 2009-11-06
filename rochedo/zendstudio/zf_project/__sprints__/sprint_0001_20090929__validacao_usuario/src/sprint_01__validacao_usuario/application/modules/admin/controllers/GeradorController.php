<?php
require_once ('IndexController.php');
class Admin_GeradorController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=127 id=_bPfn4K0YEd6Tgc0yakCadQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=127

	}

	public function indexAction()
	{
		//list all existing gerador items
		$gerador = new Default_Model_Gerador();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->gerador_items = $gerador->fetchList("");
        }
        else
            $this->view->gerador_items = $gerador->fetchAll();
		$form = new Admin_Form_GeradorSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=128 id=_bPfn4K0YEd6Tgc0yakCadQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=128

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new gerador";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/gerador/index');
        $this->view->title = ": Modify a gerador item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Gerador();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Gerador($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->geradorid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $gerador = new Default_Model_Gerador($formData);
                $gerador->save();

                $this->_redirect('/admin/gerador/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Gerador();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/gerador/index');
	}
	

//#BlockStart number=129 id=_bPfn4K0YEd6Tgc0yakCadQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=129

}
