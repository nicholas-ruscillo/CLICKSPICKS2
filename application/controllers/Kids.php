<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kids extends CI_Controller {
    public function index(){
        $this->load->helper('url');
        $this->load->model('AnnouncementModel');                
        
        $data['announcements'] = $this->AnnouncementModel->index();
        $data['title'] = 'Welcome to West Rouge Junior Public School';
        $data['description'] = 'Your central source for everything related to West Rouge Junior Public School - West Rouge, Ontario, Canada';
        $data['keywords'] = 'wrjp, wrjps, west rouge jp, west rouge jps, west rouge junior ps, west rouge junior public school';
        
        $this->load->view('templates/header', $data);
        $this->load->view('pages/kids', $data);
        $this->load->view('templates/footer', $data);        
    }  
}
