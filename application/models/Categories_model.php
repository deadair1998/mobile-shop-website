<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categories_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function showAllItems()
	{	
		$Value = ' NULL';
		$this->db->where('id_parent != ', $Value);
		return $this->db->get('categories')->result_array();
	}
	// thêm loại sản phẩm
	public function add($arr)
	{
		return $this->db->insert('categories', $arr);
	}
	// xóa loại sản phẩm
	public function delete($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('categories');
	}

}

/* End of file Categories_model.php */
/* Location: ./application/models/Categories_model.php */