<?php

class ProductController extends Zend_Controller_Action
{


    public function init()
    {
        $categoriesTable = new Application_Model_DbTable_Category();
	    $this->view->categories = $categoriesTable->getAll();	
    }

    public function indexAction()
    {
        $productTable = new Application_Model_DbTable_Product();
        $this->view->products = $productTable->fetchAll();
    }

    public function viewAction()
    {
    	$id = $this->_getParam('id', 1);
        $productTable = new Application_Model_DbTable_Product();
        $this->view->product = $productTable->find($id)->current();
    }

    public function categoryAction()
    {
    	$id = $this->_getParam('id', 1);
    	$categoriesTable = new Application_Model_DbTable_Category();
        $category = $this->view->category = $categoriesTable->find($id)->current();
        $this->view->products = $category->getProducts();
    }


}





