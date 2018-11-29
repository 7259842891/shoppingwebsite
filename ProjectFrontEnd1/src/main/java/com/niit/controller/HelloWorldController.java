package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategeryDao;
import com.niit.Dao.ProductDao;
import com.niit.models.Categery;
import com.niit.models.Product;
 
@Controller
public class HelloWorldController {
	String message = "Welcome to Spring MVC!";
 @Autowired
 CategeryDao categeryDao;
 @Autowired
 ProductDao  productDao;
	@RequestMapping(value= {"/","/home"})
	public ModelAndView showMessage() {
		System.out.println("in controller");
List<Categery> clist=categeryDao.getAllCategery();
List<Product> plist=productDao.getAllProduct();
 
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("message","this is the first page");
		mv.addObject("categeries",clist);
		mv.addObject("productlist",plist);
		
		return mv;
	}
}
