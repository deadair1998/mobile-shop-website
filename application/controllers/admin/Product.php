<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Product_model');
	}
	public function index()
	{
		$res1 = $this->Product_model->countIphone();
		$data['iphone'] = $res1;
		$res2 = $this->Product_model->countIpad();
		$data['ipad'] = $res2;
		$res3 = $this->Product_model->countMacbook();
		$data['macbook'] = $res3;
		$res4 = $this->Product_model->countImac_MacPro();
		$data['imac'] = $res4;
		$res5 = $this->Product_model->countApple_Watch();
		$data['watch'] = $res5;


		$data['content'] = 'product/index';
		$this->load->view('templates/master',$data);
	}
	// Xem sản phẩm
	public function showIphone()
	{
		$result = $this->Product_model->getIphone();
		$data['items'] = $result;
		$data['content'] = 'product/show_name';
		$this->load->view('templates/master', $data);
	}

	public function showIpad()
	{
		$result = $this->Product_model->getIpad();

		$data['items'] = $result;
		$data['content'] = 'product/show_name';
		$this->load->view('templates/master', $data);
	}
	public function showMacbook()
	{
		$result = $this->Product_model->getMacbook();

		$data['items'] = $result;
		$data['content'] = 'product/show_name';
		$this->load->view('templates/master', $data);
	}
	public function showImac_MacPro()
	{
		$result = $this->Product_model->getImac_MacPro();

		$data['items'] = $result;
		$data['content'] = 'product/show_name';
		$this->load->view('templates/master', $data);
	}
	public function showApple_Watch()
	{
		$result = $this->Product_model->getApple_Watch();

		$data['items'] = $result;
		$data['content'] = 'product/show_name';
		$this->load->view('templates/master', $data);
	}
	
	//Xóa sản phẩm
	public function deleteProduct($id,$name)
	{

		$res = $this->Product_model->deleteProduct($id);
		
		redirect("admin/Product/$name");
	}
	// Thêm sản phẩm 
	public function addProduct()
	{
		$data['content'] = 'product/add';
		// đồng bộ phần select model trong form add với bảng categories
		$result = $this->Product_model->selectModelInForm();
   		$data['items'] = $result;
		$this->load->helper(array('form', 'url'));
	    $this->load->library('form_validation');
      	$this->form_validation->set_rules('name', 'Name Product', 'required');
     	$this->form_validation->set_rules('price', 'Price', 'required');
     	//$this->form_validation->set_rules('image', 'Image', 'required');
     	if ($this->form_validation->run() == FALSE) {
	    	$this->load->view('templates/master', $data);
	    } else {
	    	// upload file
	    	$config['upload_path']          = './uploads/';
	        $config['allowed_types']        = 'gif|jpg|png';
	        $this->load->library('upload', $config);
	        $this->upload->initialize($config);
	        $this->upload->do_upload('image');
	        //$this->upload->display_errors();
	        $res = $this->upload->data();
	        // lấy tên file ảnh vừa upload
	        $image = $res['file_name'];
	        // lấy thông tin từ form update 
	       	$name = $this->input->post('name');
	       	$id_type = $this->input->post('id_type');
	       	$id_parent = $this->input->post('id_parent');
	       	$detail = $this->input->post('detail');	       
	       	$price = $this->input->post('price');
	       	$promotion_price = $this->input->post('promotion_price');
	       	$status = $this->input->post('status');
	       	$update_at = $this->input->post('update_at');
	        $arr = array(
	        	'id_type' => $id_type,
	        	'id_parent' => $id_parent,
	        	'name' => $name,
	        	'detail' => $detail,
	        	'price' => $price,
	        	'promotion_price' => $promotion_price,
	        	'image' => $image,
	        	'status' => $status,
	        	'update_at' => $update_at
	        );	
	        $this->Product_model->addProduct($arr);
	        redirect('admin/Product/index');

	    }
	}
	// sửa sản phẩm
	public function updateProduct($id)
	{
		
		$data['content'] = 'product/update';
		// show thông tin trước khi sửa của sản phẩm		
	    $value = $this->Product_model->getDataById($id);
	    $data['items'] = $value;	    
	    $this->load->helper(array('form', 'url'));
	    $this->load->library('form_validation');
      	$this->form_validation->set_rules('name', 'Name Product', 'required');
     	$this->form_validation->set_rules('price', 'Price', 'required');
     	//$this->form_validation->set_rules('image', 'Image', 'required');
	    if ($this->form_validation->run() == FALSE) {
	    	$this->load->view('templates/master', $data);
	    } else {
	    	// upload file
	    	$config['upload_path']          = './uploads/';
	        $config['allowed_types']        = 'gif|jpg|png';
	        $this->load->library('upload', $config);
	        $this->upload->initialize($config);
	        $this->upload->do_upload('image');
	        //$this->upload->display_errors();
	        $res = $this->upload->data();
	        // lấy tên file ảnh vừa upload
	        $image = $res['file_name'];
	        // lấy thông tin từ form update 
	       	$name = $this->input->post('name');
	       	$detail = $this->input->post('detail');	       
	       	$price = $this->input->post('price');
	       	$promotion_price = $this->input->post('promotion_price');
	       	$status = $this->input->post('status');
	       	$update_at = $this->input->post('update_at');
	        $arr = array(
	        	'name' => $name,
	        	'detail' => $detail,
	        	'price' => $price,
	        	'promotion_price' => $promotion_price,
	        	'image' => $image,
	        	'status' => $status,
	        	'update_at' => $update_at
	        );	
	        $this->Product_model->updateById($id,$arr);
	        redirect("admin/Product/index");

	    }

	      
	}
	

} // end class

/* End of file Product.php */
/* Location: ./application/controllers/Product.php */