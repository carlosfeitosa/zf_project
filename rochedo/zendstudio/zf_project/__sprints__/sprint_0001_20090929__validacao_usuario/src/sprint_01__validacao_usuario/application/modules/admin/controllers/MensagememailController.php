<?php
require_once ('IndexController.php');
class Admin_MensagemEmailController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=154 id=_myPMYNOmEd6HgL0enKsn3Q_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=154

	}

	public function indexAction()
	{
		//list all existing mensagememail items
		$mensagememail = new Default_Model_MensagemEmail();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->mensagememail_items = $mensagememail->fetchList("destinatariosCopiaCarbonada LIKE '%".$this->getRequest()->getParam("search")."%'  OR destinatariosCopiaCarbonadaCega LIKE '%".$this->getRequest()->getParam("search")."%'  OR responderPara LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->mensagememail_items = $mensagememail->fetchAll();
		$form = new Admin_Form_MensagemEmailSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=155 id=_myPMYNOmEd6HgL0enKsn3Q_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=155

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new mensagememail";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/mensagememail/index');
        $this->view->title = ": Modify a mensagememail item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_MensagemEmail();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_MensagemEmail($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->mensagememailid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $mensagememail = new Default_Model_MensagemEmail($formData);
                $mensagememail->save();

                $this->_redirect('/admin/mensagememail/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_MensagemEmail();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/mensagememail/index');
	}
	

//#BlockStart number=156 id=_myPMYNOmEd6HgL0enKsn3Q_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=156

}
