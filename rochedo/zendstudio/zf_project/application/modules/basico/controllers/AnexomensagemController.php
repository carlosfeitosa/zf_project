<?php
require_once ('IndexController.php');
class Admin_AnexoMensagemController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=145 id=_bDB3EMSvEd6vnL5X62mZVw_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=145

	}

	public function indexAction()
	{
		//list all existing anexomensagem items
		$anexomensagem = new Default_Model_AnexoMensagem();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->anexomensagem_items = $anexomensagem->fetchList("nomeOriginal LIKE '%".$this->getRequest()->getParam("search")."%'  OR nomeSugestao LIKE '%".$this->getRequest()->getParam("search")."%'  OR descricao LIKE '%".$this->getRequest()->getParam("search")."%'  OR mimeType LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->anexomensagem_items = $anexomensagem->fetchAll();
		$form = new Admin_Form_AnexoMensagemSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=146 id=_bDB3EMSvEd6vnL5X62mZVw_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=146

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new anexomensagem";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/anexomensagem/index');
        $this->view->title = ": Modify a anexomensagem item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_AnexoMensagem();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_AnexoMensagem($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->anexomensagemid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $anexomensagem = new Default_Model_AnexoMensagem($formData);
                $anexomensagem->save();

                $this->_redirect('/admin/anexomensagem/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_AnexoMensagem();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/anexomensagem/index');
	}
	

//#BlockStart number=147 id=_bDB3EMSvEd6vnL5X62mZVw_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=147

}
