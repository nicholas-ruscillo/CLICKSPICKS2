<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kids extends CI_Controller {
    public function index(){
        $this->load->helper('url');
        //$this->load->model('AnnouncementModel');                
        
        //$data['announcements'] = $this->AnnouncementModel->index();
        $data['title'] = 'Your central jump-point for kid-safe games, education and interest websites - by ClicksPicks';
        $data['description'] = 'There is no need to try and remember all the URLs of the sites your kids love - ClicksPicks does it for you. Simply click on the pre-verified kid-friendly site name to open a new window and instantly be taken to that site.';
        $data['keywords'] = 'kid-friendly web sites, kid-safe web sites, kid-friendly URLs, kid-safe URLs, kids-safe preverified websites, central jump point for kid-safe web sites';
        $data['css'] = "kids";
        
        $this->load->view('templates/header', $data);
        $this->load->view('pages/kids', $data);
        $this->load->view('templates/footer', $data);        
    }  
}
