package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Entity
@Component
@Table
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productID;
	private String productName;
	private float productPrice;
	private String productDescription;
	private double productDiscount;
	private int quantity;
	@Transient
	private MultipartFile image;
	   @ManyToOne
	private Categery categery;
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public float getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(float productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public double getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(double productDiscount) {
		this.productDiscount = productDiscount;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public Categery getCategery() {
		return categery;
	}
	public void setCategery(Categery categery) {
		this.categery = categery;
	}
}