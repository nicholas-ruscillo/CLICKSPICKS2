<?php
class YouthsModel extends CI_Model{
    public function __construct(){
        $this->load->database();
    }
    
    public function index(){
        $query = $this->db->query("SELECT * FROM picks WHERE category_id='2' ORDER BY clicks desc, title;");
        return $query->result_array();
    }  
}
?>