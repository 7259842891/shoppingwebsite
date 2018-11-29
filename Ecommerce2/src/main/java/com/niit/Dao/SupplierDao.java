package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.models.Categery;
import com.niit.models.Supplier;

@Repository("supplierDao")
public interface SupplierDao {
	public void addSupplier(Supplier supplier);
 	public List<Supplier> getAllSupplier();
 	public void deleteSupplier(int supplierID);
 	public Supplier updateSupplier(Supplier supplier);
 	public Supplier getSupplier(int supplierID);
 	public List<Categery> getAllCategery();
}
