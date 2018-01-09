<?php
class AdsModel extends CI_Model{
    public function __construct(){
        $this->load->database();
    }
    
    public function index( $categoryId = 1 ){
        $query = $this->db->query("SELECT * FROM ads WHERE category_id="1" . $categoryId . " and display='Y' ORDER BY impressions;");
        return $query->result_array();
    }  
}
?>