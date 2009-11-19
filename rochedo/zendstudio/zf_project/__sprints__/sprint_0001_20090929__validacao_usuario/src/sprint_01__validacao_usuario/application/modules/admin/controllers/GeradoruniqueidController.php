<?php
require_once ('IndexController.php');
class Admin_GeradorUniqueIdController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=124 id=_SQ_mYK0ZEd6Tgc0yakCadQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=124

	}

	public function indexAction()
	{
		//list all existing geradoruniqueid items
		$geradoruniqueid = new Default_Model_GeradorUniqueId();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->geradoruniqueid_items = $geradoruniqueid->fetchList("");
        }
        else
            $this->view->geradoruniqueid_items = $geradoruniqueid->fetchAll();
		$form = new Admin_Form_GeradorUniqueIdSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=125 id=_SQ_mYK0ZEd6Tgc0yakCadQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=125

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new geradoruniqueid";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/geradoruniqueid/index');
        $this->view->title = ": Modify a geradoruniqueid item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_GeradorUniqueId();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_GeradorUniqueId($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->geradoruniqueidid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $geradoruniqueid = new Default_Model_GeradorUniqueId($formData);
                $geradoruniqueid->save();

                $this->_redirect('/admin/geradoruniqueid/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_GeradorUniqueId();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/geradoruniqueid/index');
	}
	

//#BlockStart number=126 id=_SQ_mYK0ZEd6Tgc0yakCadQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=126

}
