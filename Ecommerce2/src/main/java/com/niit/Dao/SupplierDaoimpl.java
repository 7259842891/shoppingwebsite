package com.niit.Dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Categery;
import com.niit.models.Supplier;
@Repository("supplierDao")
@Transactional
public class SupplierDaoimpl implements SupplierDao {
@Autowired
private SessionFactory sessionFactory;
	
	
	public void deleteSupplier(int supplierID) {
		// TODO Auto-generated method stub
		Supplier supplier =(Supplier)sessionFactory.getCurrentSession().load(Supplier.class,supplierID);
		
	}
    public List<Supplier> getAllSupplier() {
 
        return sessionFactory.getCurrentSession().createQuery("from Supplier").list();
    
    }
	public void addSupplier(Supplier supplier) {
		  sessionFactory.getCurrentSession().saveOrUpdate(supplier);
			// TODO Auto-generated method stub		
	}
	public Supplier getSupplier(int supplierID) {
		return (Supplier) sessionFactory.getCurrentSession().get(Supplier.class, supplierID);
    }


	public Supplier updateSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().update(supplier);
        return supplier;
	}
	@Override
	public List<Categery> getAllCategery() {
		// TODO Auto-generated method stub
		return null;
	}
	
	}


