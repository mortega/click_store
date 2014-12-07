<?php

class Application_Model_Order extends Zend_Db_Table_Row_Abstract
{
    public function getForm()
    {
        $form = new Zend_Form();
 
        $name = $form->createElement('text', 'user_name');
        $name->setLabel('Nome:')
             ->setRequired(true)
             ->addFilter('stringTrim')
             ->addValidator('stringLength', false, array(1,100));
        $email = $form->createElement('text', 'user_email');
        $email->setLabel('E-mail:')
              ->setRequired(true)
              ->addFilter('stringTrim')
              ->addValidator('emailAddress', false)
              ->addValidator('stringLength', false, array(1,200));

        $submit = $form->createElement('submit', 'save');
        $submit->setLabel('Concluir compra');

        $form->addElements(array($name, $email, $submit));

        $form->setAction('/cart/close')
             ->setMethod('post');

        
        return $form;
    }

	public function getProducts()
    {    
        $products = $this->findManyToManyRowset(
                'Application_Model_DbTable_Product',  
                'Application_Model_DbTable_ProductOrder'); 
        
        return $products;
    }

    public function create($user_name, $user_email, $cartItems){

        if(empty($cartItems))
            return false;

        $orderTable = new Application_Model_DbTable_Order();
        $newRow = $orderTable->createRow();

        $newRow->user_name = $user_name;  
        $newRow->user_email = $user_email;
        $newRow->total = 0;
        $newRow->save();

        $productTable = new Application_Model_DbTable_Product();
        $products = $productTable->getAllByKey(array_keys($cartItems));
       
        foreach ($cartItems as $product_id => $quantity) {
            $res = $this->addProduct($newRow->id, $product_id, $quantity);  
            $newRow->total  += ($products[$product_id]->price * $quantity);
            if(!$res){
                return false;
            }
        }

        $newRow->save();
        return $newRow;
    }

    protected function addProduct($order_id, $product_id, $quantity)
    {
        if(empty($order_id) || empty($product_id) || empty($quantity))
            return false;

        $productOrderTable = new Application_Model_DbTable_ProductOrder();
        $newRow = $productOrderTable->createRow();

        $newRow->order_id = $order_id;
        $newRow->product_id = $product_id;
        $newRow->quantity = $quantity;

        return $newRow->save();
    }


}

