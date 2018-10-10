<?php
class Product {

    private $conn;

    // Note: update table names, column names in here
    public $product_table                          = 'tbl_product';

    public $product_table_primary_key              = 'ID';

    public $color_table                            = 'tbl_color';

    public $color_table_primary_key                = 'ID';

    public $linking_table                          = 'tbl_product_color';

    public $linking_table_ref_product_table_column = 'product_id';

    public $linking_table_ref_color_table_column   = 'color_id';

    public function __construct($db) {
        $this->conn = $db;
    }

    function getProducts() {
        // Notes:
        // 1. If you configure above properly, you shouldn't need to modify the query here to make it work
        // 2. However, feel free to modify it if you know what you are doing.

        $query = 'SELECT * FROM ' . $this->product_table;

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    function getProductColors($product_id) {
        // Notes:
        // 1. If you configure above properly, you shouldn't need to modify the query here to make it work
        // 2. However, feel free to modify it if you know what you are doing.

        $query = 'SELECT color.* FROM ' . $this->linking_table . ' AS linking, ' . $this->color_table . ' AS color';
        $query .= ' WHERE color.' . $this->color_table_primary_key . ' = linking.' . $this->linking_table_ref_color_table_column;
        $query .= ' AND linking.' . $this->linking_table_ref_product_table_column . ' = ' . $product_id;

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
}