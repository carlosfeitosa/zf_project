<?php
require_once ('IndexController.php');
class Admin_TermTranslationController extends Admin_IndexController
{
	public function init()
	{
		//use the parent initialization
		parent::init();

//#BlockStart number=112 id=_16_5_1_40d01a2_1250796841411_723745_449_#_0

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=112

	}

	public function indexAction()
	{
		//list all existing termtranslation items
		$termtranslation = new Default_Model_TermCategory();
		if($this->getRequest()->getParam("search")!=null)
        {
            $this->view->termtranslation_items = $termtranslation->fetchList("language LIKE '%".$this->getRequest()->getParam("search")."%'  OR translation LIKE '%".$this->getRequest()->getParam("search")."%' ");
        }
        else
            $this->view->termtranslation_items = $termtranslation->fetchList(null, "name");
		$form = new Admin_Form_TermTranslationSearch();
		$form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                array(array('data' => 'HtmlTag'), array('tag' => 'td', 'class' => 'element')),
                                array('Label', array('tag' => 'td'), array(array('row' => 'HtmlTag'), array('tag' => 'tr')))));
        $form->getElement('submit')->removeDecorator('Label');
        if($this->getRequest()->getParam("search")!=null)
            $form->search->setValue($this->getRequest()->getParam("search"));
        $this->view->form = $form;

//#BlockStart number=113 id=_16_5_1_40d01a2_1250796841411_723745_449_#_1

        //start block for manually written code

        //end block for manually written code

//#BlockEnd number=113

	}

	public function addAction()
	{
	    //should never happen!
	    /*
		$this->view->title = ": Add new termtranslation";
		$this->view->headTitle($this->view->title, 'APPEND');
		$this->showForm('Add', NULL);*/
	}

	public function modifyAction()
	{
	    if($this->getRequest()->getParam("id")==null)
            $this->_redirect('/admin/termtranslation/index');
        $this->view->title = ": Modify a termtranslation item";
        $this->view->headTitle($this->view->title, 'APPEND');
        $model = new Default_Model_TermTranslation();
        $item = $model->find($this->getRequest()->getParam("id"));
        $this->view->questionid = $item->id;

        $this->showForm('Modify', $item);
	}

	public function showForm($label='Add', $item=NULL)
	{
	    $form = new Admin_Form_TermTranslation($item);
        $form->submit->setLabel($label);
        $form->setDecorators(array('FormElements', array('HtmlTag', array('tag' => 'table')),'Form'));
        $form->setElementDecorators(array('ViewHelper', 'Errors',
                                    array('decorator' => array('td' => 'HtmlTag'), 'options' => array('tag' => 'td')),
                                    array('Label', array('tag' => 'td')),
                                    array('decorator' => array('tr' => 'HtmlTag'), 'options' => array('tag' => 'tr')),
        ));
        $form->getElement('submit')->removeDecorator('Label');
        if($item!=NULL)
            $this->view->termtranslationid = $item->id;
        $this->view->form = $form;
        if ($this->getRequest()->isPost())
        {
            $formData = $this->getRequest()->getPost();
            $keys = array_keys($formData);
            for($i = 1; $i<sizeof($keys)-2; $i++)
            {
                $termId = substr($keys[$i], 11);
                $model = new Default_Model_TermTranslation();
                $current = $model->fetchList("term=$termId AND language='".$this->getRequest()->getParam("language")."'");
                if(sizeof($current)!=0)
                    $model->find($current[0]->id);
                $model->setLanguage($formData['language']);
                $model->setTerm($termId);
                $model->setTranslation($formData[$keys[$i]]);
                $model->save();
            }
            $this->_redirect('/admin/termtranslation/index');
        }
	}

	public function deleteAction()
	{
		$model = new Default_Model_TermTranslation();
		$item = $model->find($this->getRequest()->getParam("id"));
		$item->delete();
		$this->_redirect('/admin/termtranslation/index');
	}


//#BlockStart number=114 id=_16_5_1_40d01a2_1250796841411_723745_449_#_2

    //start block for manually written code

    //end block for manually written code

//#BlockEnd number=114

}
