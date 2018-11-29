package com.niit.Dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.models.Categery;
import com.niit.models.Product;

@Repository("productDao")
@Transactional
public  class ProductDaoimpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addProduct(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}

	public void updateProduct(Product product) {
		sessionFactory.getCurrentSession().update(product);
		return;
	}
	public void deleteProduct(int productID) {
		// TODO Auto-generated method stub
		Product product = (Product) sessionFactory.getCurrentSession().load(Product.class, productID);
		if (null != product) {
			this.sessionFactory.getCurrentSession().delete(product);
		}

	}
	@SuppressWarnings("unchecked")
	public List<Product> getAllProduct() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	@Override
	public Product getProduct(int productID) {
		return (Product) sessionFactory.getCurrentSession().get(Product.class, productID);
	}

    @SuppressWarnings("unchecked")
	public List<Categery> getAllCategery() {
    	return sessionFactory.getCurrentSession().createQuery("from Categery").list();
	}

	@Override
	public List<Product> getProductbycat(int id) {
		return sessionFactory.getCurrentSession().createQuery("from Product where categery.id="+id).list();
		
	}

}
