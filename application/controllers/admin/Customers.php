<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customers extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Customers_model');
	}

	public function index()
	{
		
		$result = $this->Customers_model->getInfo();
		$data['items'] = $result;
		$data['content'] = 'customers/index';
		$this->load->view('templates/master',$data);
	}

}

/* End of file Customers.php */
/* Location: ./application/controllers/Customers.php */