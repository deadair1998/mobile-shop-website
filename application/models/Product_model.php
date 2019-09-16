<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_model extends CI_Model {

	
	var $table = "product";
	var $primaryKey = "id";

	public function __construct()
	{
		parent::__construct();
		
	}
	// lấy danh sách sản phẩm theo id_type(lấy theo chủng loại sản phẩm)
	function getIphone ()
	{	

		$this->db->where('id_parent ',1);
		
		return $this->db->get('products')->result_array();
	}
	function getIpad ()
	{		
		$this->db->where('id_parent ',2);
		
		return $this->db->get('products')->result_array();
	}
	function getMacbook ()
	{		
		$this->db->where('id_parent ',3);
			
		return $this->db->get('products')->result_array();
	}
	function getImac_MacPro ()
	{		
		$this->db->where('id_parent',4);
			
		return $this->db->get('products')->result_array();
	}
	function getApple_Watch ()
	{	
			
		$this->db->where('id_parent',5);
		
		return $this->db->get('products')->result_array();
	}
	// đếm sản phẩm theo id_type
	public function countIphone()
	{	
		
		$this->db->from('products');
		$this->db->where('id_type > ',6);
		$this->db->where('id_type <',11);
		return $this->db->count_all_results();
	}

	public function countIpad()
	{	
		
		$this->db->from('products');
		$this->db->where('id_type >',10);
		$this->db->where('id_type <',14);	
		return $this->db->count_all_results();
	}
	public function countMacbook()
	{	
		
		$this->db->from('products');
		$this->db->where('id_type >',13);
		$this->db->where('id_type <',17);
		return $this->db->count_all_results();
	}
	public function countImac_MacPro()
	{	
		
		$this->db->from('products');
		$this->db->where('id_type >',16);
		$this->db->where('id_type <',20);
		return $this->db->count_all_results();
	}
	public function countApple_Watch()
	{	
		
		$this->db->from('products');
		$id_type = 5;	
		$this->db->where('id_type ',$id_type);
		return $this->db->count_all_results();
	}
	// Xóa sản phẩm theo id
	function deleteProduct($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete('products');
	}
	// lấy data product theo id
	function getDataById($id)
	{
		$this->db->where('id', $id);
		return $this->db->get('products')->row_array();
	}
	// update sản phẩm theo id
	function updateById($id,$arr)
	{
		$this->db->where('id', $id);
		return $this->db->update('products', $arr);
	}
	// thêm sản phẩm 
	function addProduct($arr)
	{
		return $this->db->insert('products', $arr);
	}
	// đồng bộ phần select model trong form add với bảng categories
	function selectModelInForm ()
	{
		$Value = 'NULL';
		
		$this->db->where('id_parent != ', $Value);
		return $this->db->get('categories')->result_array();
	}
	// lấy sản phẩm theo id (dùng bên controller shop)
	public function getProductById($id)
	{
		$this->db->where('id ', $id);
		return $this->db->get('products')->row_array();
	}
}

/* End of file Product_model.php */
/* Location: ./application/models/Product_model.php */
