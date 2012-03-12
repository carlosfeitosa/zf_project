<?php

/**
 * Basico_Model_DbTable_Login test case.
 */
class Basico_Model_DbTable_LoginTest extends PHPUnit_Framework_TestCase {
	
	/**
	 * @var Basico_Model_DbTable_Login
	 */
	private $Basico_Model_DbTable_Login;
	
	/**
	 * Prepares the environment before running a test.
	 */
	protected function setUp() {
		parent::setUp ();
		
		// TODO Auto-generated Basico_Model_DbTable_LoginTest::setUp()
		

		$this->Basico_Model_DbTable_Login = new Basico_Model_DbTable_PessoaLogin(/* parameters */);
	
	}
	
	/**
	 * Cleans up the environment after running a test.
	 */
	protected function tearDown() {
		// TODO Auto-generated Basico_Model_DbTable_LoginTest::tearDown()
		

		$this->Basico_Model_DbTable_Login = null;
		
		parent::tearDown ();
	}
	
	/**
	 * Constructs the test case.
	 */
	public function __construct() {
		// TODO Auto-generated constructor
	}

}

