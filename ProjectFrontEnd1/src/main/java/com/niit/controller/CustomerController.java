package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.Dao.CustomerDao;
import com.niit.models.Customer;
import com.niit.models.User;


@Controller
public class CustomerController {
	@Autowired
  private CustomerDao customerDao;
	
	
	@RequestMapping(value="/all/getregistrationform")
	public String getRegistrationForm(Model model){
	Customer customer	=new Customer();
	model.addAttribute("customer",customer);	
	return "registrationform";	
	}
	@RequestMapping(value="/forgotpassword")
	public String getForm(Model model){
	Customer customer	=new Customer();
	model.addAttribute("customer",customer);	
	return "forgotpassword";	
	}
	@RequestMapping(value="/changepassword")
		public String getChangepassword(Model model,@RequestParam String mail,@RequestParam String newpass,@RequestParam String confirm) {
		User u=customerDao.getUser(mail);
		if(newpass.equals(confirm)&&u!=null)
		{
		Customer c=u.getCustomer();
		u.setPassword(newpass);
		c.setUser(u);
		customerDao.updateCustomer(c);
		}
			return "/login";
		
	}
	@RequestMapping(value="/all/registercustomer")
	public String registerCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model){
		if(result.hasErrors())
		{
			model.addAttribute("customer",customer);	
			return "registrationform";
		}
		String email=customer.getUser().getEmail();
		if(!customerDao.isEmailUnique(email)){//Email is duplicate, Not Unique
			model.addAttribute("errorMessage","Email already exists.. please choose different email id");
			return "registrationform";
		}
		
		customerDao.registerCustomer(customer);
		
		return "login";

		
		}
	@RequestMapping(value="/updateregistrationform")
	public String UpadteRegistrationForm(Model model){
	Customer customer	=new Customer();
	model.addAttribute("customer",customer);	
	return "UpdateRegistrationform";	
	}
	
	@RequestMapping(value="/updateregistercustomer")
	public String UpdateregisterCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model){
		if(result.hasErrors())
		{
			model.addAttribute("customer",customer);	
			return "updateregistrationform";
		}
		String email=customer.getUser().getEmail();
		if(!customerDao.isEmailUnique(email)){//Email is duplicate, Not Unique
			model.addAttribute("errorMessage","Email already exists.. please choose different email id");
			return "UpdateRegistartionform";
		}
customerDao.registerCustomer(customer);
		
		return "login";

	}
}
