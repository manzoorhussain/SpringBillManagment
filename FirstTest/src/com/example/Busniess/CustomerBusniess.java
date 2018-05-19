package com.example.Busniess;

import java.util.List;

import com.example.bean.Customer;

public interface CustomerBusniess {
	//void addCustomer(Customer customer);
	List<Customer> listCustomer();
	public void saveCustomer(Customer customer);
}
