package com.example.action;

import java.util.ArrayList;
import java.util.List;

import com.example.Busniess.CustomerBusniess;
import com.example.bean.Customer;
import com.opensymphony.xwork2.ActionSupport;



public class CustomerAction extends ActionSupport {

	/**
	 * Manzoor Hussain
	 */
	private static final long serialVersionUID = 1L;
	CustomerBusniess customerBusniess;
	public CustomerBusniess getCustomerBusniess() {
		return customerBusniess;
	}

	public void setCustomerBusniess(CustomerBusniess customerBusniess) {
		this.customerBusniess = customerBusniess;
	}
	Customer customer = new Customer();
	List<Customer> customerList = new ArrayList<Customer>();
   
	private Long customerId;
   private String customerName;
   private String customerAddress;
	
	


	public String addCustomer() throws Exception{

		//save it
		//customer.setCreatedDate(new Date());
		/*customerBusniess.addCustomer(customer);

		//reload the customer list
		customerList = null;
		customerList = customerBusniess.listCustomer();
*/
		return "success";

	}

	//list all customers
	public String listCustomer() throws Exception{

		customerList = customerBusniess.listCustomer();

		return "success";

	}

	public String saveCustomer(){
		
		Customer customer=new Customer();
		customer.setCustomerId(customerId);
		customer.setName(customerName);
		customer.setAddress(customerAddress);
		customerBusniess.saveCustomer(customer);
		return "success";
	}
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public List<Customer> getCustomerList() {
		return customerList;
	}

	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}


}
