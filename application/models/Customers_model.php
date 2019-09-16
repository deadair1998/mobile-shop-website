<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customers_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
		
	}
	public function getInfo()
	{
		//$this->db->distinct('name');
		return $this->db->get('customers')->result_array();
	}

}

/* End of file Customers_model.php */
/* Location: ./application/models/Customers_model.php */