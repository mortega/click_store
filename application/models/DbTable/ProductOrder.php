<?php


class Application_Model_DbTable_ProductOrder extends Zend_Db_Table_Abstract
{
    protected $_name = 'products_orders';
 
    protected $_referenceMap    = array(
        'Order' => array(
            'columns'           => array('order_id'),
            'refTableClass'     => 'Application_Model_DbTable_Order',
            'refColumns'        => array('id')
        ),
        'Product' => array(
            'columns'           => array('product_id'),
            'refTableClass'     => 'Application_Model_DbTable_Product',
            'refColumns'        => array('id')
        )
    );
 
}