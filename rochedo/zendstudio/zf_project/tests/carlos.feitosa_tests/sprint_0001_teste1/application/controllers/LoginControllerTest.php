<?php

require_once TESTS_PATH . 'application/ControllerTestCase.php';
require_once APPLICATION_PATH . '/modules/basico/controllers/LoginController.php';

class Basico_LoginControllerTest extends ControllerTestCase
{
	public function testDefaultShouldInvokeIndexAction()
	{
		$this->dispatch('/');
		$this->assertController('index');
		$this->assertAction('index');
	}
	
	public function testViewObjectContainsStringProperty()
	{
		$this->dispatch('/');
		
		$controller = new Basico_LoginController(
			$this->request,
			$this->response,
			$this->getParams()
		);
		$controller->indexAction();
		
		$this->assertTrue(isset($controller->view->string));
	}
}