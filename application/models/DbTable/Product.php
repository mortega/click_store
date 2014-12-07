<?php

class Application_Model_DbTable_Product extends Zend_Db_Table_Abstract
{

    protected $_name = 'products';


	public function getAllByKey($ids){
		$res = array();
		$products = $this->find($ids);
	
		foreach ($products as $value) {
			$res[$value->id] = $value;
		}

		return $res;
	}
}

