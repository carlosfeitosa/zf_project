<?php

/**
 * Basico_Model_DbTable_Pessoa test case.
 */
class Basico_Model_DbTable_PessoaTest extends PHPUnit_Framework_TestCase {
	
	/**
	 * @var Basico_Model_DbTable_Pessoa
	 */
	private $Basico_Model_DbTable_Pessoa;
	
	/**
	 * Prepares the environment before running a test.
	 */
	protected function setUp() {
		parent::setUp ();
		
		// TODO Auto-generated Basico_Model_DbTable_PessoaTest::setUp()
		

		$this->Basico_Model_DbTable_Pessoa = new Basico_Model_DbTable_Pessoa(/* parameters */);
	
	}
	
	/**
	 * Cleans up the environment after running a test.
	 */
	protected function tearDown() {
		// TODO Auto-generated Basico_Model_DbTable_PessoaTest::tearDown()
		

		$this->Basico_Model_DbTable_Pessoa = null;
		
		parent::tearDown ();
	}
	
	/**
	 * Constructs the test case.
	 */
	public function __construct() {
		// TODO Auto-generated constructor
	}

}

