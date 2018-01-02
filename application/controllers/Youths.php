<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Youths extends CI_Controller {
    public function index(){
        $this->load->helper('url');
        $this->load->model('YouthsModel');                
        
        //$data['announcements'] = $this->AnnouncementModel->index();
        $data['title'] = 'Your central jump-point for youth-safe games, education and interest websites - by ClicksPicks';
        $data['description'] = 'There is no need to try and remember all the URLs of the sites your youth loves - ClicksPicks does it for you. Simply click on the pre-verified youth-friendly site name to open a new window and instantly be taken to that site.';
        $data['keywords'] = 'youth-friendly web sites, youth-safe web sites, youth-friendly URLs, youth-safe URLs, youth-safe preverified websites, central jump point for youth-safe web sites';
        $data['marketing'] = 'You only need to remember (or bookmark) one URL to access all your youth\'s favourite websites for games, education and interests. Each website has been pre-screened to ensure a youth-safe experience so you can feel confident about your child\'s time online (adult supervision is still highly recommended). Click on any of the links below to be instantly taken to that website (the most popular sites float to the top of the list). Read or submit comments about websites to your benefit or the community by clicking on the comment link beside each website; you can also see or submit approvals/disapprovals for any site. Lastly, you can submit you own favourite sites for consideration in being added to the list - it will be pre-screened for approval before being added. Have fun and enjoy!';
        $data['css'] = "youths";

        $data['picks'] = $this->YouthsModel->index();
        
        $this->load->view('templates/header', $data);
        $this->load->view('pages/index', $data);
        $this->load->view('templates/footer', $data);        
    }  
}
