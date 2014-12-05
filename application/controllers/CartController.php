<?php

class CartController extends Zend_Controller_Action
{
	public $_cartNamespace = null;

    public function init()
    {
		if($this->_cartNamespace == null){
          $this->_cartNamespace = new Zend_Session_Namespace('cart');
        }
		if (!isset($this->_cartNamespace->cart)) {
			$this->_cartNamespace->cart = new Application_Model_Cart();
		}

        $categoriesTable = new Application_Model_DbTable_Category();
        $this->view->categories = $categoriesTable->getAll();
    }

    public function indexAction()
    {
        $cartItems = $this->_cartNamespace->cart->getItems();
 
        $products_ids = array_keys($cartItems);
        $products = array();
        if(!empty($products_ids)){
            $productTable = new Application_Model_DbTable_Product();
            $products = $productTable->find($products_ids);
        }

        $this->view->products = $products;
    }

    public function addAction()
    {
    	$id = $this->_getParam('id', 1);
    	$productTable = new Application_Model_DbTable_Product();
    	$product = $productTable->find($id)->current();
        
        $res = $this->_cartNamespace->cart->addItem($product);
        $this->_helper->json->sendJson($res);
        exit;
    }

    public function deleteAction()
    {
        $id = $this->_getParam('id', 1);
        $res = $this->_cartNamespace->cart->deleteItem($id);
        $this->_helper->json->sendJson($res);
    }

    public function cancelAction()
    {
        $res = $this->_cartNamespace->cart->clean();
        $this->_redirect('/cart');
    }

}

