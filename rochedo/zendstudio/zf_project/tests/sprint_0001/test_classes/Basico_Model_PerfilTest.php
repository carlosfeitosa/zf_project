<?php

set_include_path(get_include_path()
				 . PATH_SEPARATOR . '/usr/local/zend/apache2/htdocs/rochedo_project'
                 . PATH_SEPARATOR . '/usr/local/zend/apache2/htdocs/rochedo_project/library'
                 //. PATH_SEPARATOR . '/usr/local/zend/apache2/htdocs/rochedo_project/tests/library'
);

require_once 'application/modules/basico/models/Perfil.php';


/**
 * Basico_Model_Perfil test case.
 */
class Basico_Model_PerfilTest extends PHPUnit_Framework_TestCase {
	
	/**
	 * @var Basico_Model_Perfil
	 */
	private $Basico_Model_Perfil;
	
	/**
	 * Prepares the environment before running a test.
	 */
	protected function setUp() {
		parent::setUp ();
		
		// TODO Auto-generated Basico_Model_PerfilTest::setUp()
		

		$this->Basico_Model_Perfil = new Basico_Model_Perfil(/* parameters */);
	
	}
	
	/**
	 * Cleans up the environment after running a test.
	 */
	protected function tearDown() {
		// TODO Auto-generated Basico_Model_PerfilTest::tearDown()
		

		$this->Basico_Model_Perfil = null;
		
		parent::tearDown ();
	}
	
	/**
	 * Constructs the test case.
	 */
	public function __construct() {
		// TODO Auto-generated constructor
	}
	
	/**
	 * Tests Basico_Model_Perfil->__construct()
	 */
	public function test__construct() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__construct()
		$this->markTestIncomplete ( "__construct test not implemented" );
		$this->Basico_Model_Perfil->__construct(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->__set()
	 */
	public function test__set() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__set()
		$this->markTestIncomplete ( "__set test not implemented" );
		$this->Basico_Model_Perfil->__set(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->__get()
	 */
	public function test__get() {
		// TODO Auto-generated Basico_Model_PerfilTest->test__get()
		$this->markTestIncomplete ( "__get test not implemented" );		
		$this->Basico_Model_Perfil->__get(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setOptions()
	 */
	public function testSetOptions() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetOptions()
		$this->markTestIncomplete ( "setOptions test not implemented" );		
		$this->Basico_Model_Perfil->setOptions(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setNome()
	 */
	public function testSetNome() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetNome()
		$this->markTestIncomplete ( "setNome test not implemented" );		
		$this->Basico_Model_Perfil->setNome(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getNome()
	 */
	public function testGetNome() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetNome()
		$this->markTestIncomplete ( "getNome test not implemented" );		
		$this->Basico_Model_Perfil->getNome(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setDescricao()
	 */
	public function testSetDescricao() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetDescricao()
		$this->markTestIncomplete ( "setDescricao test not implemented" );
		$this->Basico_Model_Perfil->setDescricao(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getDescricao()
	 */
	public function testGetDescricao() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetDescricao()
		$this->markTestIncomplete ( "getDescricao test not implemented" );
		$this->Basico_Model_Perfil->getDescricao(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setAtivo()
	 */
	public function testSetAtivo() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetAtivo()
		$this->markTestIncomplete ( "setAtivo test not implemented" );
		$this->Basico_Model_Perfil->setAtivo(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getAtivo()
	 */
	public function testGetAtivo() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetAtivo()
		$this->markTestIncomplete ( "getAtivo test not implemented" );
		$this->Basico_Model_Perfil->getAtivo(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setCategoria()
	 */
	public function testSetCategoria() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetCategoria()
		$this->markTestIncomplete ( "setCategoria test not implemented" );
		$this->Basico_Model_Perfil->setCategoria(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getCategoria()
	 */
	public function testGetCategoria() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetCategoria()
		$this->markTestIncomplete ( "getCategoria test not implemented" );
		$this->Basico_Model_Perfil->getCategoria(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getCategoriaObject()
	 */
	public function testGetCategoriaObject() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetCategoriaObject()
		$this->markTestIncomplete ( "getCategoriaObject test not implemented" );
		$this->Basico_Model_Perfil->getCategoriaObject(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setId()
	 */
	public function testSetId() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetId()
		$this->markTestIncomplete ( "setId test not implemented" );
		$this->Basico_Model_Perfil->setId(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getId()
	 */
	public function testGetId() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetId()
		$this->markTestIncomplete ( "getId test not implemented" );
		
		$this->Basico_Model_Perfil->getId(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->setMapper()
	 */
	public function testSetMapper() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSetMapper()
		$this->markTestIncomplete ( "setMapper test not implemented" );
		$this->Basico_Model_Perfil->setMapper(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->getMapper()
	 */
	public function testGetMapper() {
		// TODO Auto-generated Basico_Model_PerfilTest->testGetMapper()
		$this->markTestIncomplete ( "getMapper test not implemented" );
		$this->Basico_Model_Perfil->getMapper(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->save()
	 */
	public function testSave() {
		// TODO Auto-generated Basico_Model_PerfilTest->testSave()
		$this->markTestIncomplete ( "save test not implemented" );
		$this->Basico_Model_Perfil->save(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->delete()
	 */
	public function testDelete() {
		// TODO Auto-generated Basico_Model_PerfilTest->testDelete()
		$this->markTestIncomplete ( "delete test not implemented" );
		$this->Basico_Model_Perfil->delete(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->find()
	 */
	public function testFind() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFind()
		$this->markTestIncomplete ( "find test not implemented" );
		$this->Basico_Model_Perfil->find(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->fetchAll()
	 */
	public function testFetchAll() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFetchAll()
		$this->markTestIncomplete ( "fetchAll test not implemented" );
		$this->Basico_Model_Perfil->fetchAll(/* parameters */);
	
	}
	
	/**
	 * Tests Basico_Model_Perfil->fetchList()
	 */
	public function testFetchList() {
		// TODO Auto-generated Basico_Model_PerfilTest->testFetchList()
		$this->markTestIncomplete ( "fetchList test not implemented" );
		$this->Basico_Model_Perfil->fetchList(/* parameters */);
	
	}

}

