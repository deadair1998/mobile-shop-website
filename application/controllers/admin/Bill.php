<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bill extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Bill_model');
		$this->load->model('Product_model');
	
	}

	public function index()
	{
		$result = $this->Bill_model->getBill();
		// echo '<pre>';
		// print_r($result); die();
		$data['items'] = $result;
		$data['content'] = 'bill/index';
		$this->load->view('templates/master',$data);
	}
	public function showBillDetail($id)
	{
		$billDetail = $this->Bill_model->showBillDetail($id);
		$data['items'] = $billDetail; 
		$data['content'] = 'bill/detail';
		
		
		$this->load->view('templates/master',$data);	
		
	}

}

/* End of file Bill.php */
/* Location: ./application/controllers/Bill.php */