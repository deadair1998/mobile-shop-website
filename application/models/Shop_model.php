<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Shop_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function addCustomer($arr)
	{
		 $this->db->insert('customers', $arr);
		 return $this->db->insert_id();

	}
	// public function getIdByName($name)
	// {
	// 	$this->db->select('id');
	// 	$this->db->like('name', $name);
	// 	$query = $this->db->get('customers')->row();
	// 	return $query->id;
	// }
	// public function getIdBill($id_customer)
	// {
	// 	$this->db->select('id');
	// 	$this->db->like('id_customer', $id_customer);
	// 	$query = $this->db->get('bills')->row();
	// 	return $query->id;
	// }
	public function createBill($order)
	{
		$this->db->insert('bills', $order);
		return $this->db->insert_id();
	}
	public function createBillDetail($billDetail)
	{
		return $this->db->insert('bill_detail', $billDetail);
	}

}

/* End of file Shop_model.php */
/* Location: ./application/models/Shop_model.php */