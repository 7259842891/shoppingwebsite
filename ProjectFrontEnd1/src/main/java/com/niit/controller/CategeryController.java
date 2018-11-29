package com.niit.controller;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategeryDao;
import com.niit.models.Categery;


@Controller
public class CategeryController {
	@Autowired
	CategeryDao categeryDao;
	
	
	   @RequestMapping(value = "/admin/getcategeryf")
	   public ModelAndView categery(Model model) {
	    ModelAndView mv=new ModelAndView("Categeryf", "command", new Categery());
	      List<Categery> categerylist=categeryDao.getAllCategery();
	      model.addAttribute("categeries",categerylist);
				return mv; 
		   }
	   @RequestMapping(value = "/admin/categerylist", method = RequestMethod.GET)
		public String getCategeryf(Model model){
		   List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("categeries",clist);
			List<Categery> categerylist=categeryDao.getAllCategery();
			model.addAttribute("catlist",categerylist);
			return "Categerydisplay";
		}
	   @RequestMapping(value = "/admin/addCategery", method = RequestMethod.POST)
	      public String addCategery(@ModelAttribute("SpringWeb")Categery categery, ModelMap model) 
	   {
	      model.addAttribute("name", categery.getName());
	      model.addAttribute("id", categery.getId());
	      categeryDao.addCategery(categery);
	      List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("catlist",clist);
	      return "Categerydisplay";
	   }
	   @RequestMapping(value="/getcategery", method=RequestMethod.GET)
	   public ModelAndView getAllCategery() {
		   List<Categery> categerylist=categeryDao.getAllCategery();
		   ModelAndView mn=new ModelAndView("Categeryf", "command",new Categery() );
		   mn.addObject("categeries",categerylist);
		   return mn;
	   }
	   @RequestMapping(value="/deletecategery")
	   public String deletecategery(@RequestParam int id, Model model) {
	   categeryDao.deleteCategery(id);
	   List<Categery> categerylist=categeryDao.getAllCategery();
		model.addAttribute("catlist",categerylist);
	      
	      return "Categerydisplay";
   }
	   @RequestMapping(value="/getupdatecategery")
	   public String getUpdateCategery(@RequestParam("id") int id,Model model){
	   	Categery categery=categeryDao.getCategery(id);
	   	model.addAttribute("command",categery);
	   	List<Categery> categerylist=categeryDao.getAllCategery();
	   	model.addAttribute("catlist",categerylist);
	   	return "Updatecategeryf";
	   }
	   @RequestMapping(value="/Updatecategery",method=RequestMethod.POST)
		   public String updatecategery(@Valid @ModelAttribute("categery")Categery categery,BindingResult result,ModelMap model) {
			   if(result.hasErrors()){
				   List<Categery> categerylist=categeryDao.getAllCategery();
				   	model.addAttribute("catlist",categerylist);
				   	return "Updatecategeryf";
				}
			   categeryDao.updateCategery(categery);
				List<Categery> categerylist=categeryDao.getAllCategery();
				model.addAttribute("catlist",categerylist);
			      return "Categerydisplay";
		   }
		}

	
