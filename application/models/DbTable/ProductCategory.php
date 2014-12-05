<?php


class Application_Model_DbTable_ProductCategory extends Zend_Db_Table_Abstract
{
    protected $_name = 'products_categories';
 
    protected $_referenceMap    = array(
        'Category' => array(
            'columns'           => array('category_id'),
            'refTableClass'     => 'Application_Model_DbTable_Category',
            'refColumns'        => array('id')
        ),
        'Product' => array(
            'columns'           => array('product_id'),
            'refTableClass'     => 'Application_Model_DbTable_Product',
            'refColumns'        => array('id')
        )
    );
 
}