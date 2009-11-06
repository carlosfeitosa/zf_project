<?php
/**
 * This is automatically generated file using the BOZA php generator plugin for Eclipse
 * version 1.0
 */

/**
 * AdminMenu data mapper
 *
 * Implements the Data Mapper design pattern:
 * http://www.martinfowler.com/eaaCatalog/dataMapper.html
 *
 * @uses       Default_Model_DbTable_AdminMenu
 * @package    QuickStart
 * @subpackage Model
 */
class Default_Model_AdminMenuMapper
{
    /**
     * @var Zend_Db_Table_Abstract
     */
    protected $_dbTable;

    /**
     * Specify Zend_Db_Table instance to use for data operations
     *
     * @param  Zend_Db_Table_Abstract $dbTable
     * @return Default_Model_AdminMenuMapper
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * Get registered Zend_Db_Table instance
     *
     * Lazy loads Default_Model_DbTable_AdminMenu if no instance registered
     *
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        if (null === $this->_dbTable) {
            $this->setDbTable('Default_Model_DbTable_AdminMenu');
        }
        return $this->_dbTable;
    }

    /**
     * Save a AdminMenu entry
     *
     * @param  Default_Model_AdminMenu $adminmenu
     * @return void
     */
    public function save(Default_Model_AdminMenu $adminmenu)
    {
        $data = array(
				'caption'   => $adminmenu->getCaption(),
				'order'   => $adminmenu->getOrder(),
				'description'   => $adminmenu->getDescription(),
				'parent'   => $adminmenu->getParent(),
				'controller'   => $adminmenu->getController(),
				'action'   => $adminmenu->getAction(),

        );

        if (null === ($id = $adminmenu->getId())) {
            unset($data['id']);
            $this->getDbTable()->insert($data);
        } else {
            $this->getDbTable()->update($data, array('id = ?' => $id));
        }
    }

    /**
     * Find a AdminMenu entry by id
     *
     * @param  int $id
     * @param  Default_Model_AdminMenu $adminmenu
     * @return void
     */
    public function find($id, Default_Model_AdminMenu $adminmenu)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $adminmenu->setId($row->id)

				->setCaption($row->caption)
				->setOrder($row->order)
				->setDescription($row->description)
				->setParent($row->parent)
				->setController($row->controller)
				->setAction($row->action);
    }

	/**
	 * Fetch all adminmenu entries
	 *
	 * @return array
	 */
	public function fetchAll()
	{
		$resultSet = $this->getDbTable()->fetchAll();
		$entries   = array();
		foreach ($resultSet as $row)
		{
			$entry = new Default_Model_AdminMenu();
			$entry->setId($row->id)

				->setCaption($row->caption)
				->setOrder($row->order)
				->setDescription($row->description)
				->setParent($row->parent)
				->setController($row->controller)
				->setAction($row->action)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}

	/**
	 * Fetch all adminmenu entries
	 *
	 * @return array
	 */
    public function fetchList($where=null, $order=null, $count=null, $offset=null)
	{
		$resultSet = $this->getDbTable()->fetchAll($where, $order, $count, $offset);
		$entries   = array();
		foreach ($resultSet as $row)
		{
			$entry = new Default_Model_AdminMenu();
			$entry->setId($row->id)
				->setCaption($row->caption)
				->setOrder($row->order)
				->setDescription($row->description)
				->setParent($row->parent)
				->setController($row->controller)
				->setAction($row->action)
				->setMapper($this);
			$entries[] = $entry;
		}
		return $entries;
	}
}
