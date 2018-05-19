package com.example.BusinessImpl;

import java.util.List;

import com.example.Busniess.CustomerBusniess;
import com.example.DAO.CustomerDAO;
import com.example.bean.Customer;

public class CustomerBusniessImpl implements CustomerBusniess {
	CustomerDAO customerDAO;
	public CustomerDAO getCustomerDAO() {
		return customerDAO;
	}

	public void setCustomerDAO(CustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
	}


	
	@Override
	public List<Customer> listCustomer() {
		// TODO Auto-generated method stub
		return customerDAO.listCustomer();
	}

	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDAO.saveCustomer(customer);
		
	}

}
