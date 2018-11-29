package com.niit.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.models.Categery;
@Repository("categeryDao")
public interface CategeryDao {
	
 public void addCategery(Categery categery);
 	public List<Categery>  getAllCategery();
 	public void deleteCategery(int id);
 	public Categery getCategery(int id);
	public void updateCategery(Categery categery);
}
