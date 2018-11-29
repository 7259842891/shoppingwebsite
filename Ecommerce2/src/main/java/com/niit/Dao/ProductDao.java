package com.niit.Dao;

import java.util.List;


import org.springframework.stereotype.Repository;

import com.niit.models.Categery;
import com.niit.models.Product;

@Repository("productDao")
public interface ProductDao {
	public void addProduct(Product product);

	public List<Product> getAllProduct();

	public void deleteProduct(int productID);

	public void updateProduct( Product product);

	public Product getProduct(int productID);

	public List<Categery> getAllCategery();
	
	public List<Product> getProductbycat(int id);
}
