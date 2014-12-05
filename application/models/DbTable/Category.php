<?php

class Application_Model_DbTable_Category extends Zend_Db_Table_Abstract
{

    protected $_name = 'categories';
    protected $_rowClass = 'Application_Model_Category'; 
    protected $_dependentTables = array('Application_Model_DbTable_ProductCategory');

	public function getAll(){
		 $categories = $this->fetchAll();
		 return $categories;
	}

}

