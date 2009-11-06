<?php
require_once ('IndexController.php');
class Admin_TipoCategoriaController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=100 id=_Cx0PkKw9Ed68D_d-n4iFew_#_0
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=100

	}

	public function indexAction()
	{
		//list all existing tipocategoria items
		$tipocategoria = new Default_Model_TipoCategoria();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->tipocategoria_items = $tipocategoria->fetchList("nome LIKE '%".$this->getRequest()->getParam("search")."%'  OR descricao LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->tipocategoria_items = $tipocategoria->fetchAll();
		$form = new Admin_Form_TipoCategoriaSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=101 id=_Cx0PkKw9Ed68D_d-n4iFew_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=101

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new tipocategoria";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/tipocategoria/index');
        $this->view->title = ": Modify a tipocategoria item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_TipoCategoria();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $model = new Default_Model_Categoria();
        $this->view->categorias = $model->fetchList("(`categoria`.`tipocategoria` = ".$item->id.")"); 

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_TipoCategoria($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->tipocategoriaid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $tipocategoria = new Default_Model_TipoCategoria($formData);
                $tipocategoria->save();

                $this->_redirect('/admin/tipocategoria/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_TipoCategoria();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/tipocategoria/index');
	}
	

    public function addcategoriaAction()
    {
        $this->showcategoriaForm('Add');
    }
    
    public function modifycategoriaAction()
    {
        $model = new Default_Model_Categoria();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->showcategoriaForm('Modify', $item);
    }
    
    public function showcategoriaForm($label='Add', $item=NULL)
    {
        $model = new Default_Model_TipoCategoria();
        $this->view->tipocategoria = $model->find($this->getRequest()->getParam("tipocategoriaid"));
        $model = new Default_Model_Categoria();
        $this->view->categorias = $model->fetchList("(`categoria`.`tipocategoria` = ".$this->view->tipocategoria->id.")");
        $form = new Admin_Form_Categoria($item);
        $form->submit->setLabel($label);
        $form->tipocategoria->setValue($this->getRequest()->getParam("tipocategoriaid"));
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $categoria = new Default_Model_Categoria($formData);
                $categoria->save();
                $this->_redirect('/admin/tipocategoria/modify/id/'.$this->view->tipocategoria->id.'/');
            }
            else
                $form->populate($formData);
        }
    }
    
    public function deletecategoriaAction()
    {
        $model = new Default_Model_Categoria();
        $object = $model->find($this->getRequest()->getParam("id"));
        $tipocategoriaid = $object->tipocategoria;
        $object->delete();
        $this->_redirect('/admin/tipocategoria/modify/id/'.$tipocategoriaid.'/');
    }

//#BlockStart number=102 id=_Cx0PkKw9Ed68D_d-n4iFew_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=102

}
