<?php
require_once ('IndexController.php');
class Admin_TermCategoryController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=103 id=_16_5_1_40d01a2_1250796837055_124877_421_#_0

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=103

	}

	public function indexAction()
	{
		//list all existing termcategory items
		$termcategory = new Default_Model_TermCategory();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->termcategory_items = $termcategory->fetchList("name LIKE '%".$this->getRequest()->getParam("search")."%' ", "name");
        }
        else
            $this->view->termcategory_items = $termcategory->fetchList(null, "name");
		$form = new Admin_Form_TermCategorySearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=104 id=_16_5_1_40d01a2_1250796837055_124877_421_#_1

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=104

	}

	public function addAction()
	{
		$this->view->title = ": Add new termcategory";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);
	}

	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/termcategory/index');
        $this->view->title = ": Modify a termcategory item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_TermCategory();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;
        $this->showForm('Modify', $item);
	}

	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_TermCategory($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->termcategoryid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost())
        {
            $formData = $this->getRequest()->getPost();
            if ($form->isValid($formData))
            {
                $termcategory = new Default_Model_TermCategory($formData);
                $termcategory->save();

                $this->_redirect('/admin/termcategory/index');
            }
            else
                $form->populate($formData);
        }
	}

	public function deleteAction()
	{
		$model = new Default_Model_TermCategory();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/termcategory/index');
	}


//#BlockStart number=105 id=_16_5_1_40d01a2_1250796837055_124877_421_#_2

    //start block for manually written code

    //end block for manually written code

//#BlockEnd number=105

}
