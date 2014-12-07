<?php

class Application_Model_DbTable_Order extends Zend_Db_Table_Abstract
{

    protected $_name = 'orders';
    protected $_rowClass = 'Application_Model_Order'; 
    protected $_dependentTables = array('Application_Model_DbTable_ProductOrder');

	public function getAll(){
		 $categories = $this->fetchAll();
		 return $categories;
	}

}

