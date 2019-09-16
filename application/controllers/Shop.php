<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Shop extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Product_model');
		$this->load->model('Categories_model');
		$this->load->model('Shop_model');
		$this->load->library('cart');
	}

	public function index()
	{
		$res1 = $this->Product_model->getIphone();
		$data['iphone'] = $res1;
		$data['content'] = 'index.php';
		$this->load->view('theme/master',$data);
	}
	// lấy sản phẩm theo id,chỉ lấy đc 1 row duy nhất
	public function showProduct($id)
	{
		$res = $this->Product_model->getProductById($id);		
		$data['items'] = $res;

		$this->load->view('product',$data);
	}
	// thêm sản phẩm vào trong giỏ hàng
	// gọi hàng để insert sp vào giỏ hàng ( link vào trang product.php)
	public function insert($id,$name=0)
	{
		// lấy info sản phẩm cần thêm vào giỏ hàng 
		$list = $this->Product_model->getProductById($id);
		// echo '<pre>';
		// var_dump($list); die();
		// lưu thông tin theo form có sẵn của cart
		$data = array(
			'id' => $list['id'],
			'qty' => 1,
			'price' => $list['price'],
			'name' => $list['name'],
			'image' => $list['image']					
		);
		// gọi hàm insert để thêm hàng vào giỏ
		$this->cart->insert($data);
		redirect("shop/showProduct/$name");
	}
	// Show danh sách sản phẩm có trong giỏ hàng
	// gọi hàm để tới trang cart.php	
	public function showCart()
	{
		$data['items'] = $this->cart->contents();
		$data['total'] = $this->cart->total();
		
		// echo '<pre>';
		// print_r($data['items']); die();	

		$this->load->view('cart', $data);		
	}
	// Xóa hết sp trong giỏ hàng
	public function deleteAll()
	{
            $this->cart->destroy();
            redirect('shop/showcart');
    }
    // update sản phẩm trong giỏ hàng
    public function updateCart()
    {
    	foreach($this->cart->contents() as $item){
    		$data = array(
    			'rowid' => $item['rowid'],
    			'qty' =>$this->input->post($item['rowid'])
    		);
    		$this->cart->update($data);   		   		
    	}
    	redirect('shop/showCart');
    	
    }
   	public function showBill()
   	{
   		$data['items'] = $this->cart->contents();
   		$data['total'] = $this->cart->total();
   		$this->load->view('checkout',$data);
   	}
   	public function showcartonly()
   	{
   		echo '<pre>';
   		var_dump($this->cart->contents());
   	}
    // hàm checkout 
   	public function checkOut()
   	{
   		$name = $this->input->post('name');
   		$address = $this->input->post('address');
   		$phone = $this->input->post('phone');
   		$email = $this->input->post('email');
   		$arr = array(
   			'name' =>$name,
   			'email' =>$email,
   			'address' =>$address,
   			'phone' => $phone

   		);
   		$id_customer = $this->Shop_model->addCustomer($arr);
   		$total = $this->cart->total();
   		// save bill
		$order = array(
			'id_customer' =>$id_customer,
			'date_order' =>date('Y-m-d'),
			'total' => $total
		);
		$id_bill = $this->Shop_model->createBill($order);
		// save bill detail
   		foreach ($this->cart->contents() as $item) {
   			$billDetail = array(
   				'id_bill' =>$id_bill,
   				'id_product' => $item['id'],
   				'quantity' => $item['qty'],
   				'price'  => $item['price'],
   				'name' =>$item['name'],
   				'date_order' =>date('Y-m-d'),
   				'image' => $item['image']
   			); 
   			$this->Shop_model->createBillDetail($billDetail);  			
   		}
   		//remove cart
   		$this->cart->destroy();
   		redirect('shop/index');
   	}
    // hàm show  sub categories
	 
    public function showIphone()
    {
      $result = $this->Product_model->getIphone();
      $data['items'] = $result;
     
      $this->load->view('categories', $data);
    }
    public function showIpad()
    {
      $result = $this->Product_model->getIpad();

      $data['items'] = $result;
     
      $this->load->view('categories', $data);
    }
    public function showMacbook()
    {
      $result = $this->Product_model->getMacbook();

      $data['items'] = $result;
      
      $this->load->view('categories', $data);
    }
    public function showImac_MacPro()
    {
      $result = $this->Product_model->getImac_MacPro();

      $data['items'] = $result;
      
      $this->load->view('categories', $data);
    }
    public function showApple_Watch()
    {
      $result = $this->Product_model->getApple_Watch();

      $data['items'] = $result;
     
      $this->load->view('categories', $data);
    }
   

}

/* End of file Shop.php */
/* Location: ./application/controllers/Shop.php */
