package com.niit.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Dao.CategeryDao;
import com.niit.models.Categery;

@Controller
public class HomeController {
public HomeController(){
	System.out.println("homeController bean is created");
}

@RequestMapping("/admin")
public String admin(){
	
	return "admin";
}

@RequestMapping("/login")
public String login(){
	return "login";
}
@RequestMapping("/loginerror")
public String loginError(Model model){
	model.addAttribute("loginError","Invalid email/password");
	return "login";
}
@RequestMapping(value="/logout")
public String logout(Model model){
	
	model.addAttribute("message","Loggedout successfully..");
	return "login";
}
}

