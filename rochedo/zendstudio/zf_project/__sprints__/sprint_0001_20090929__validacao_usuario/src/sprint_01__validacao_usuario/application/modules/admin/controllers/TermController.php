<?php
require_once ('IndexController.php');
class Admin_TermController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=94 id=_16_5_1_40d01a2_1250796831463_513356_393_#_0

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=94

	}

	public function indexAction()
	{
		//list all existing term items
		$term = new Default_Model_Term();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->term_items = $term->fetchList("name LIKE '%".$this->getRequest()->getParam("search")."%' ", "name");
        }
        else
            $this->view->term_items = $term->fetchList(null, "name");
		$form = new Admin_Form_TermSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=95 id=_16_5_1_40d01a2_1250796831463_513356_393_#_1

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=95

	}

	public function addAction()
	{
		$this->view->title = ": Add new term";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}

	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/term/index');
        $this->view->title = ": Modify a term item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_Term();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}

	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_Term($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->termid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost())
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $term = new Default_Model_Term($formData);
                $term->save();

                $this->_redirect('/admin/term/index');
            }
            else
                $form->populate($formData);
        }
	}

	public function deleteAction()
	{
		$model = new Default_Model_Term();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/term/index');
	}


//#BlockStart number=96 id=_16_5_1_40d01a2_1250796831463_513356_393_#_2

    //start block for manually written code

    //end block for manually written code

//#BlockEnd number=96

}
