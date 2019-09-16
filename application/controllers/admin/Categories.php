<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categories extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Categories_model');
	}

	public function index()
	{
		$data['content'] = 'categories/index.php';
		$result = $this->Categories_model->showAllItems();
		
		$data['items'] = $result;
		$this->load->view('templates/master', $data);
		
	}
	public function add()
	{
		$data['content'] = 'categories/add';
		$this->load->helper(array('form', 'url'));
	    $this->load->library('form_validation');
      	$this->form_validation->set_rules('name', ' Model Name ', 'required');
     	$this->form_validation->set_rules('id_type', 'Type Name', 'required');
     	//$this->form_validation->set_rules('image', 'Image', 'required');
     	if ($this->form_validation->run() == FALSE) {
	    	$this->load->view('templates/master', $data);
	    } else {
	    	// upload file
	    	
	        // lấy thông tin từ form update 
	       	$name = $this->input->post('name');
	       	$id_type = $this->input->post('id_type');
	       
	        $arr = array(
	        	'id_parent' => $id_type,
	        	'name' => $name
	        	
	        );	
	        $this->Categories_model->add($arr);
	        redirect('admin/Categories/index');

	    }

	}
	public function delete($id)
	{
		 $this->Categories_model->delete($id);
		redirect('admin/Categories/index');
	}

}

/* End of file Categories.php */
/* Location: ./application/controllers/Categories.php */