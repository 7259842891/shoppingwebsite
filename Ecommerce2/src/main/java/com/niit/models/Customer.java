package com.niit.models;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int customerId;
	@NotEmpty(message="please enter the name")
private String firstname;
	@NotEmpty(message="please enter the last name")
private String lastname;
	@NotEmpty(message="mobile number is required")
private String phonenumber;
@OneToOne(cascade=CascadeType.ALL)
private User user;
@OneToOne(cascade=CascadeType.ALL)
private BillingAddress billingaddress;
@OneToOne(cascade=CascadeType.ALL)
private ShippingAddress shippingaddress;
public int getCustomerId() {
	return customerId;
}
public void setCustomerId(int customerId) {
	this.customerId = customerId;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
public BillingAddress getBillingaddress() {
	return billingaddress;
}
public void setBillingaddress(BillingAddress billingaddress) {
	this.billingaddress = billingaddress;
}
public ShippingAddress getShippingaddress() {
	return shippingaddress;
}
public void setShippingaddress(ShippingAddress shippingaddress) {
	this.shippingaddress = shippingaddress;
}


}

