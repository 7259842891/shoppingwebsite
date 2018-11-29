package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Authorities;
import com.niit.models.Customer;
import com.niit.models.CustomerOrder;
import com.niit.models.User;

@Repository("customerDao")
@Transactional

public class CustomerDaoimpl implements CustomerDao {
	@Autowired
private SessionFactory sessionFactory;
	public void registerCustomer(Customer customer) {
	Session session=sessionFactory.getCurrentSession();
	//Make user property in Authorities to refer user object
	User user=customer.getUser();
	Authorities authorities=user.getAuthorities();
	authorities.setUser(user);//SET A VALUE FOR FK IN AUTHORITIES TABLE
//	
	
	session.save(customer);

	}
	public boolean isEmailUnique(String email) {//james.s@niit.com
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, email);//select * from user where email='james.s@niit.com'
		if(user==null)//entered email is unique
			return true;
		else //entered email already exists in the table
			return false;
	}
	@Override
	public User getUser(String email) {
		Session session=sessionFactory.getCurrentSession();
		User user=session.get(User.class,email);
		return user;
	}
	@Override
	public Customer updateCustomer(Customer customer) {
		sessionFactory.getCurrentSession().update(customer);
		return customer;
		
		
	}
	@Override
	public List<CustomerOrder> getorder(String email) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from CustomerOrder where user.email=?");
		query.setString(0, email);
		return query.list();
	}

}

