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
import com.niit.Dao.SupplierDao;
import com.niit.models.Categery;
import com.niit.models.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	CategeryDao categeryDao;
	   @RequestMapping(value = "/admin/getsupplierf", method = RequestMethod.GET)
	   public ModelAndView supplier(Model model) {
	      ModelAndView mv=new ModelAndView("Supplierf", "command", new Supplier());
	      List<Supplier> supplierlist=supplierDao.getAllSupplier();
	      model.addAttribute("supplier",supplierlist);
	      List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("categeries",clist);
				return mv; 
		   
	   }
	   @RequestMapping(value = "/admin/supplierlist", method = RequestMethod.GET)
		public String getSupplierf(Model model){
			List<Supplier> supplierlist=supplierDao.getAllSupplier();
			model.addAttribute("suplist",supplierlist);
			List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("categeries",clist);
			
			return "Supplierdisplay";
	   }
	   @RequestMapping(value = "/admin/addSupplier", method = RequestMethod.POST)
	      public String addSupplier(@ModelAttribute("SpringWeb")Supplier supplier, ModelMap model) 
	   {
	      model.addAttribute("supplierID", supplier.getSupplierID());
	      model.addAttribute("supplierAddress", supplier.getSupplierAddress());
	      model.addAttribute("supplierPhonenumber", supplier.getSupplierPhonenumber());
	      supplierDao.addSupplier(supplier);
	      List<Supplier> slist=supplierDao.getAllSupplier();
			model.addAttribute("suplist",slist);
	     return "Supplierdisplay" ;
	   }
	   @RequestMapping(value="/getsupplier" ,method=RequestMethod.GET)
	   public ModelAndView getAllSupplier() {
		   List<Supplier> supplierlist=supplierDao.getAllSupplier();
		ModelAndView mn= new ModelAndView("Supplierf","command",new Supplier());
		   mn.addObject("suplist",supplierlist);
		   return mn;
	   }
	   @RequestMapping(value="/admin/deletesupplier")
	   public String deletecategery(@RequestParam int id, Model model) {
	   supplierDao.deleteSupplier(id);
	   List<Supplier> supplierlist=supplierDao.getAllSupplier();
		model.addAttribute("catlist",supplierlist);
	      
	      return "Supplierdisplay";
   }
	   @RequestMapping(value="/getupdatesupplier")
	   public String getUpdateSupplier(@RequestParam int id,Model model){
	   	Supplier supplier=supplierDao.getSupplier(id);
	   	model.addAttribute("command",supplier);
	   	List<Supplier> supplierlist=supplierDao.getAllSupplier();
	   	model.addAttribute("suplist",supplierlist);
	   	return "Updatesupplierf";
	   }
	   @RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
		   public String updatesupplier(@Valid @ModelAttribute("supplier")Supplier supplier,BindingResult result,ModelMap model) {
			   if(result.hasErrors()){
				   List<Supplier> supplierlist=supplierDao.getAllSupplier();
				   	model.addAttribute("suplist",supplierlist);
				   	return "Updatesupplierf";
				}
			   supplierDao.updateSupplier(supplier);
				List<Supplier> supplierlist=supplierDao.getAllSupplier();
				model.addAttribute("suplist",supplierlist);
			      return "Supplierdisplay";
		   }
		}

	
