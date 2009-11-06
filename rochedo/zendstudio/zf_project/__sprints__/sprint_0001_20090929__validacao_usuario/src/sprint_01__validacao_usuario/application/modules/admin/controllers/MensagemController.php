<?php
require_once ('IndexController.php');
class Admin_MensagemController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=157 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=157

	}

	public function indexAction()
	{
		//list all existing mensagem items
		$mensagem = new Default_Model_Mensagem();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->mensagem_items = $mensagem->fetchList("remetente LIKE '%".$this->getRequest()->getParam("search")."%'  OR destinatario LIKE '%".$this->getRequest()->getParam("search")."%'  OR assunto LIKE '%".$this->getRequest()->getParam("search")."%'  OR mensagem LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->mensagem_items = $mensagem->fetchAll();
		$form = new Admin_Form_MensagemSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=158 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=158

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new mensagem";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/mensagem/index');
        $this->view->title = ": Modify a mensagem item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Mensagem();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $model = new Default_Model_AnexoMensagem();
        $this->view->anexoMensagems = $model->fetchList("(`anexoMensagem`.`mensagem` = ".$item->id.")"); 

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Mensagem($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->mensagemid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $mensagem = new Default_Model_Mensagem($formData);
                $mensagem->save();

                $this->_redirect('/admin/mensagem/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Mensagem();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/mensagem/index');
	}
	

    public function addanexoMensagemAction()
    {
        $this->showanexoMensagemForm('Add');
    }
    
    public function modifyanexoMensagemAction()
    {
        $model = new Default_Model_AnexoMensagem();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showanexoMensagemForm('Modify', $item);
    }
    
    public function showanexoMensagemForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Mensagem();
        $this->view->mensagem = $model->find($this->getRequest()->getParam("mensagemid"));
        $model = new Default_Model_AnexoMensagem();
        $this->view->anexoMensagems = $model->fetchList("(`anexoMensagem`.`mensagem` = ".$this->view->mensagem->id.")");
        $form = new Admin_Form_AnexoMensagem($item);
        $form->submit->setLabel($label);
        $form->mensagem->setValue($this->getRequest()->getParam("mensagemid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $anexoMensagem = new Default_Model_AnexoMensagem($formData);
                $anexoMensagem->save();
                $this->_redirect('/admin/mensagem/modify/id/'.$this->view->mensagem->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deleteanexoMensagemAction()
    {
        $model = new Default_Model_AnexoMensagem();
        $object = $model->find($this->getRequest()->getParam("id"));
        $mensagemid = $object->mensagem;
        $object->delete();
        $this->_redirect('/admin/mensagem/modify/id/'.$mensagemid.'/');
    }

//#BlockStart number=159 id=_kDO0oMIwEd6r_uu4CwoKLQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=159

}
