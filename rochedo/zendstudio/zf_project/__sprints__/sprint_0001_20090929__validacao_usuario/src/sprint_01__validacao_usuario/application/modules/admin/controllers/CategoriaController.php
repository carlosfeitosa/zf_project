<?php
require_once ('IndexController.php');
class Admin_CategoriaController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=58 id=_0N60kKoIEd687LtTWUTtuQ_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=58

	}

	public function indexAction()
	{
		//list all existing categoria items
		$categoria = new Default_Model_Categoria();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->categoria_items = $categoria->fetchList("nome LIKE '%".$this->getRequest()->getParam("search")."%'  OR descricao LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->categoria_items = $categoria->fetchAll();
		$form = new Admin_Form_CategoriaSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=59 id=_0N60kKoIEd687LtTWUTtuQ_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=59

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new categoria";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/categoria/index');
        $this->view->title = ": Modify a categoria item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Categoria();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $model = new Default_Model_Email();
        $this->view->emails = $model->fetchList("(`email`.`categoria` = ".$item->id.")"); 

        $model = new Default_Model_Categoria();
        $this->view->categoriaFilhas = $model->fetchList("(`categoriaFilha`.`categoria` = ".$item->id.")"); 

        $model = new Default_Model_Log();
        $this->view->logs = $model->fetchList("(`log`.`categoria` = ".$item->id.")"); 

        $model = new Default_Model_Perfil();
        $this->view->perfils = $model->fetchList("(`perfil`.`categoria` = ".$item->id.")"); 

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Categoria($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->categoriaid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $categoria = new Default_Model_Categoria($formData);
                $categoria->save();

                $this->_redirect('/admin/categoria/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_Categoria();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/categoria/index');
	}
	

    public function addemailAction()
    {
        $this->showemailForm('Add');
    }
    
    public function modifyemailAction()
    {
        $model = new Default_Model_Email();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showemailForm('Modify', $item);
    }
    
    public function showemailForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Categoria();
        $this->view->categoria = $model->find($this->getRequest()->getParam("categoriaid"));
        $model = new Default_Model_Email();
        $this->view->emails = $model->fetchList("(`email`.`categoria` = ".$this->view->categoria->id.")");
        $form = new Admin_Form_Email($item);
        $form->submit->setLabel($label);
        $form->categoria->setValue($this->getRequest()->getParam("categoriaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $email = new Default_Model_Email($formData);
                $email->save();
                $this->_redirect('/admin/categoria/modify/id/'.$this->view->categoria->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deleteemailAction()
    {
        $model = new Default_Model_Email();
        $object = $model->find($this->getRequest()->getParam("id"));
        $categoriaid = $object->categoria;
        $object->delete();
        $this->_redirect('/admin/categoria/modify/id/'.$categoriaid.'/');
    }

    public function addcategoriaFilhaAction()
    {
        $this->showcategoriaFilhaForm('Add');
    }
    
    public function modifycategoriaFilhaAction()
    {
        $model = new Default_Model_Categoria();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showcategoriaFilhaForm('Modify', $item);
    }
    
    public function showcategoriaFilhaForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Categoria();
        $this->view->categoria = $model->find($this->getRequest()->getParam("categoriaid"));
        $model = new Default_Model_Categoria();
        $this->view->categoriaFilhas = $model->fetchList("(`categoriaFilha`.`categoria` = ".$this->view->categoria->id.")");
        $form = new Admin_Form_Categoria($item);
        $form->submit->setLabel($label);
        $form->categoria->setValue($this->getRequest()->getParam("categoriaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $categoriaFilha = new Default_Model_Categoria($formData);
                $categoriaFilha->save();
                $this->_redirect('/admin/categoria/modify/id/'.$this->view->categoria->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deletecategoriaFilhaAction()
    {
        $model = new Default_Model_Categoria();
        $object = $model->find($this->getRequest()->getParam("id"));
        $categoriaid = $object->categoria;
        $object->delete();
        $this->_redirect('/admin/categoria/modify/id/'.$categoriaid.'/');
    }

    public function addlogAction()
    {
        $this->showlogForm('Add');
    }
    
    public function modifylogAction()
    {
        $model = new Default_Model_Log();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showlogForm('Modify', $item);
    }
    
    public function showlogForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Categoria();
        $this->view->categoria = $model->find($this->getRequest()->getParam("categoriaid"));
        $model = new Default_Model_Log();
        $this->view->logs = $model->fetchList("(`log`.`categoria` = ".$this->view->categoria->id.")");
        $form = new Admin_Form_Log($item);
        $form->submit->setLabel($label);
        $form->categoria->setValue($this->getRequest()->getParam("categoriaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $log = new Default_Model_Log($formData);
                $log->save();
                $this->_redirect('/admin/categoria/modify/id/'.$this->view->categoria->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deletelogAction()
    {
        $model = new Default_Model_Log();
        $object = $model->find($this->getRequest()->getParam("id"));
        $categoriaid = $object->categoria;
        $object->delete();
        $this->_redirect('/admin/categoria/modify/id/'.$categoriaid.'/');
    }

    public function addperfilAction()
    {
        $this->showperfilForm('Add');
    }
    
    public function modifyperfilAction()
    {
        $model = new Default_Model_Perfil();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showperfilForm('Modify', $item);
    }
    
    public function showperfilForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_Categoria();
        $this->view->categoria = $model->find($this->getRequest()->getParam("categoriaid"));
        $model = new Default_Model_Perfil();
        $this->view->perfils = $model->fetchList("(`perfil`.`categoria` = ".$this->view->categoria->id.")");
        $form = new Admin_Form_Perfil($item);
        $form->submit->setLabel($label);
        $form->categoria->setValue($this->getRequest()->getParam("categoriaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $perfil = new Default_Model_Perfil($formData);
                $perfil->save();
                $this->_redirect('/admin/categoria/modify/id/'.$this->view->categoria->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deleteperfilAction()
    {
        $model = new Default_Model_Perfil();
        $object = $model->find($this->getRequest()->getParam("id"));
        $categoriaid = $object->categoria;
        $object->delete();
        $this->_redirect('/admin/categoria/modify/id/'.$categoriaid.'/');
    }

//#BlockStart number=60 id=_0N60kKoIEd687LtTWUTtuQ_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=60

}
