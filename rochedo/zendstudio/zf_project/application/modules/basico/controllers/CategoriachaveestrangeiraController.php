<?php

class Basico_CategoriaChaveEstrangeiraController
{
	public function init()
	{
		

	}

/*
	public function indexAction()
	{
		//list all existing categoriachaveestrangeira items
		$categoriachaveestrangeira = new Default_Model_CategoriaChaveEstrangeira();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->categoriachaveestrangeira_items = $categoriachaveestrangeira->fetchList("tabela_estrangeira LIKE '%".$this->getRequest()->getParam("search")."%'  OR campo_estrangeiro LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->categoriachaveestrangeira_items = $categoriachaveestrangeira->fetchAll();
		$form = new Admin_Form_CategoriaChaveEstrangeiraSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=203 id=_ck4mAAtpEd-pV_5Ujd3W9A_#_1
      
        //start block for manually written code
        
        //end block for manually written code

//#BlockEnd number=203

	}
    
	public function addAction()
	{
		$this->view->title = ": Add new categoriachaveestrangeira";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}
    
	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/categoriachaveestrangeira/index');
        $this->view->title = ": Modify a categoriachaveestrangeira item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_CategoriaChaveEstrangeira();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}
	
	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_CategoriaChaveEstrangeira($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->categoriachaveestrangeiraid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost()) 
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $categoriachaveestrangeira = new Default_Model_CategoriaChaveEstrangeira($formData);
                $categoriachaveestrangeira->save();

                $this->_redirect('/admin/categoriachaveestrangeira/index');
            }
            else
                $form->populate($formData);
        }
	}
	
	public function deleteAction()
	{
		$model = new Default_Model_CategoriaChaveEstrangeira();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/categoriachaveestrangeira/index');
	}
	

//#BlockStart number=204 id=_ck4mAAtpEd-pV_5Ujd3W9A_#_2
      
    //start block for manually written code
        
    //end block for manually written code

//#BlockEnd number=204
*/
	
}
