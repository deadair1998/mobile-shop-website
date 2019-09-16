<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bill_model extends CI_Model {

	

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getBill()
	{
		$this->db->select('*');
		$this->db->from('customers');		
		$this->db->join('bills', '  customers.id =  bills.id_customer','inner');
		return $query = $this->db->get()->result_array();
	}
	public function showBillDetail($id)
	{
		$this->db->where('id_bill', $id);
		return $this->db->get('bill_detail')->result_array();
	}
	public function getInfoProduct($id)
	{

		$this->db->select('name');
		$this->db->select('image');
		$this->db->where('id', $id);
		return $this->db->get('products')->result_array();
	}

}

/* End of file Bill_model.php */
/* Location: ./application/models/Bill_model.php */