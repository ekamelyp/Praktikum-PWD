<?php
defined('BASEPATH') or exit('No direct script access allowed');

class UnitTest extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('unit_test');
    }

    private function cartTotal($total_items, $price, $qty)
    {
        for ($i = 1; $i <= $total_items; $i++) {
            $cart_total = $i * ($price * $qty);
        }

        return $cart_total;
    }

    public function testCartTotal()
    {
        $test = $this->cartTotal(2, 5000, 2);
        $expected_result = 20000;
        $test_name = "Menghitung harga total keranjang belanja";
        echo $this->unit->run($test, $expected_result, $test_name);
    }
}
