package com.niit.Dao;

import java.util.List;
import com.niit.models.Customer;
import com.niit.models.CustomerOrder;
import com.niit.models.User;

import org.springframework.stereotype.Repository;

import com.niit.models.Customer;
@Repository("customerDao")
public interface CustomerDao {

	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);
	User getUser(String email);
	Customer updateCustomer(Customer customer);
	List<CustomerOrder> getorder(String email);
}