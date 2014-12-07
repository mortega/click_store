<?php

class Application_Model_Cart 
{
    protected $_items = array();
    protected $_total = 0;
    protected $_shipping = 0;

    public function init()
    {

    }

    public function addItem($product)
    {
        if(empty($product))
            return false;

        $this->_items[$product->id] = $this->_items[$product->id] + 1;    
        $this->_total += 1;
        return true;
    }

    public function deleteItem($product_id)
    {
        if(empty($product_id) || empty($this->_items[$product_id]))
            return false;

        $this->_total -= $this->_items[$product_id];
        unset($this->_items[$product_id]);
        return true;
    }

    public function getItems(){
        return $this->_items;
    }

    public function clean(){
        $this->_items = array();
        $this->_total = 0;
        return true;
    }

}

