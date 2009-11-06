<?php

class IndexController extends Zend_Controller_Action
{

    public function init()
    {
        /* Initialize action controller here */
        /*
        $auth = Zend_Auth::getInstance();
        if (!$auth->hasIdentity())
        {
            //standard initial language is english
            $this->view->session = $this->initTranslations('en');
            $this->_redirect('/login/index/');
        }
        $user = $auth->getIdentity();
        $this->view->role = $user->role;
        $this->view->name = $user->name." ".$user->surname;
        $this->view->userid = $user->id;
        $this->view->language = $user->language;
        $this->view->headMeta('text/html; charset=ISO-8859-1','Content-Type','http-equiv', array(), 'SET');
        $this->view->headTitle("APES Online learning platform");
        $this->view->headLink()->appendStylesheet('/public/default/css/Hypertree.css');
        $this->view->headLink()->appendStylesheet('/public/default/css/global.css');
        $this->view->headScript()->appendFile('/public/default/js/jit.js');
        $this->view->headScript()->appendFile('/public/default/js/hypertree.js');
        //populate translations
        $this->view->session = $this->initTranslations($user->language);*/
    }

    /*
    //uncomment this if you would like to have translations module initialized
    public function initTranslations($lang, $reload = false)
    {
        $session = new Zend_Session_Namespace('translations');
        if(!isset($session->initialized) or $reload)
        {
            $model = new Default_Model_TermTranslation();
            $terms = $model->fetchList("language='$lang'");
            $session->terms = array();
            foreach($terms as $term)
            {
                $m = new Default_Model_Term();
                $t = $m->find($term->term);
                $session->__set($t->name, $term->translation);
            }
            $session->initialized = true;
        }
        return $session;
    }*/


    public function indexAction()
    {
        //fetch all menus
        //$menu = new Default_Model_Menu();
        //$this->view->menus = $menu->fetchAll();
    }

    function __call($method, $args) {
        $this->_forward('index', 'index', 'default');
    }

}

