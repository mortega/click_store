<?php

class Application_Model_Category extends Zend_Db_Table_Row_Abstract
{

	public function get($id)
    {
		$categoriesTable = new Application_Model_DbTable_Category();
		return $categoriesTable->find($category_id);
	}

	public function getProducts()
    {    
        $products = $this->findManyToManyRowset(
                'Application_Model_DbTable_Product',  
                'Application_Model_DbTable_ProductCategory'); 
        
        return $products;
    }

}

