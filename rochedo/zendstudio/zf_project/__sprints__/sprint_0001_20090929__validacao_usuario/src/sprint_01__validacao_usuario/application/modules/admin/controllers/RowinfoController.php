<?php
require_once ('IndexController.php');
class Admin_RowInfoController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=37 id=_09ynwKoHEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=37

	}

	public function indexAction()
	{
		//list all existing rowinfo items
		$rowinfo = new Default_Model_RowInfo();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->rowinfo_items = $rowinfo->fetchList("xml LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->rowinfo_items = $rowinfo->fetchAll();
		$form = new Admin_Form_RowInfoSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=38 id=_09ynwKoHEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=38

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new rowinfo";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/rowinfo/index');
        $this->view->title = ": Modify a rowinfo item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_RowInfo();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_RowInfo($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->rowinfoid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $rowinfo = new Default_Model_RowInfo($formData);
                $rowinfo->save();

                $this->_redirect('/admin/rowinfo/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_RowInfo();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/rowinfo/index');
	}
	

//#BlockStart number=39 id=_09ynwKoHEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=39

}
