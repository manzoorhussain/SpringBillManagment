package com.example.DAO;

import java.util.List;

import com.example.bean.Customer;

public interface CustomerDAO {
	//void addCustomer(Customer customer);
	List<Customer> listCustomer();
	public void saveCustomer(Customer customer);

}
