<?php

class Application_Model_DbTable_Product extends Zend_Db_Table_Abstract
{

    protected $_name = 'products';

	public function getAll($id){
		 $products = $this->fetchAll();
		 return $products;
	}
}

