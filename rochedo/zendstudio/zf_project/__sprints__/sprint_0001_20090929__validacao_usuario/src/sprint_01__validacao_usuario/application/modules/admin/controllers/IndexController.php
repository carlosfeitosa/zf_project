<?php
class Admin_IndexController extends Zend_Controller_Action
{
		public function init()
		{
			$auth = Zend_Auth::getInstance();
			if (!$auth->hasIdentity())
			{
				$this->_redirect('/admin/login/');
			}
			$adminmenu = new Default_Model_AdminMenu();
			$this->view->adminmenus = $adminmenu->fetchList("parent=0", "order");
			$controller = $this->getRequest()->getControllerName();
			$this->view->controller = $controller;
			$this->view->action = $this->getRequest()->getActionName();
			$this->view->adminsubmenus = $adminmenu->fetchList("parent<>0 AND controller='$controller'", "order");
			$this->view->id = $this->getRequest()->getParam("id");
			$this->view->headMeta('text/html; charset=ISO-8859-1','Content-Type','http-equiv', array(), 'SET');
            $this->view->headTitle("Admin Console");
            $this->view->headLink()->setStylesheet('/public/admin/css/admin_style.css');
            $this->view->headLink()->appendStylesheet('/public/admin/css/ui.datepicker.css');
            $this->view->headScript()->setFile('/public/admin/js/jquery-1.2.6.js');
            $this->view->headScript()->appendFile('/public/admin/js/jquery-ui.js');
            $this->view->headScript()->appendFile('/public/admin/js/my_jquery_file.js');
            $this->view->headScript()->appendFile('/public/admin/js/menu_effect.js');
            /*
            $this->view->headScript()->appendFile('/public/admin/js/custom.js');
            $this->view->headScript()->appendFile('/public/admin/js/fckeditor/fckeditor.js');*/
            $this->view->headScript()->appendFile('/public/admin/js/ckeditor/ckeditor.js');
            $this->view->headScript()->appendFile('/public/admin/js/ckfinder/ckfinder.js');
		    $session = new Zend_Session_Namespace('language');
            if(isset($session->language))
                $this->view->language = $session->language;
            else
            {
                $session->language = 'nl';
                $this->view->language = 'nl';
            }
            if($this->getRequest()->getParam("language")!="")
            {
                $this->view->language = $this->getRequest()->getParam("language");
                $session->language = $this->getRequest()->getParam("language");
            }
		}

    public function indexAction()
    {
    }

    public function setsessionAction()
    {
        if(!is_numeric($this->getRequest()->getParam("showing")))
            $this->_redirect('/admin/index/');
        $_SESSION["showing"] = $this->getRequest()->getParam("showing");
        $this->_redirect('/admin/index/');
    }
}
?>