package com.niit.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Component
@Table
public class Supplier {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int supplierID;
	private String supplierAddress;
	private int supplierPhonenumber;
	public int getSupplierID() {
		return supplierID;
	}
	public void setSupplierID(int supplierID) {
		this.supplierID = supplierID;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public int getSupplierPhonenumber() {
		return supplierPhonenumber;
	}
	public void setSupplierPhonenumber(int supplierPhonenumber) {
		this.supplierPhonenumber = supplierPhonenumber;
	}
}


