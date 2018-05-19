package com.example.DAOImpl;

import java.util.List;

import com.example.DAO.CustomerDAO;
import com.example.bean.Customer;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CustomerDAOImpl extends HibernateDaoSupport implements CustomerDAO{

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Customer> listCustomer() {
		// TODO Auto-generated method stub
		 return getHibernateTemplate().find("from Customer");
	}

	@Override
	public void saveCustomer(Customer customer) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(customer);
	}

}
