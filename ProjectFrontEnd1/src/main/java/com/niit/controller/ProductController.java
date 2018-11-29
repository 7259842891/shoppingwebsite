package com.niit.controller;


import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Locale.Category;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategeryDao;
import com.niit.Dao.ProductDao;
import com.niit.models.Categery;
import com.niit.models.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@Autowired
	CategeryDao categeryDao;
	
	 @RequestMapping(value = "/admin/getproductf")
	   public ModelAndView product(Model model) {
		 ModelAndView mv=new ModelAndView("Productf", "command", new Product());
		 List<Categery> categerylist=productDao.getAllCategery();
		 model.addAttribute("categeries",categerylist);
			return mv; 
	   }
	 
	 @RequestMapping("viewproduct/{productID}")
	 public String getProduct(Model model,@PathVariable int productID){
			Product p=productDao.getProduct(productID);
			model.addAttribute("productAttr",p);
			 List<Categery> clist=categeryDao.getAllCategery();
				model.addAttribute("categeries",clist);
			return "Viewproduct";
		}
	 
	 
	 @RequestMapping(value = "/filterproduct/{id}", method = RequestMethod.GET)
		public String getProducts(Model model,@PathVariable("id") int id)
	 {
		 List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("categeries",clist);
			List<Product> plist=productDao.getProductbycat(id);
			model.addAttribute("productlist",plist);
			return "home";
		}
	 
	 
	 @RequestMapping(value = "/productlist", method = RequestMethod.GET)
		public String getProductForm(Model model){
		 List<Categery> clist=categeryDao.getAllCategery();
			model.addAttribute("categeries",clist);
			List<Product> plist=productDao.getAllProduct();
			model.addAttribute("prodlist",plist);
			return "Productdisplay";
		}
	 @RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
     public String addproduct(@Valid @ModelAttribute("product")Product product,BindingResult result,ModelMap model,HttpServletRequest request) {
	   if(result.hasErrors()){
			return "productdisplay";
		} 
		   model.addAttribute("productID", product.getProductID());
		   model.addAttribute("productName", product.getProductName());
		   model.addAttribute("productPrice", product.getProductPrice());
		   model.addAttribute("productDescription", product.getProductDescription());
		   model.addAttribute("productDiscount", product.getProductDiscount());
		   productDao.addProduct(product);
		   MultipartFile img=product.getImage();//Defining a path
			Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getProductID()+".jpg");
			
			//Create a file in the path
			try {
				if(img!=null && !img.isEmpty()){
				File file=new File(path.toString());
				System.out.println(path);
				img.transferTo(file);
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			List<Product> plist=productDao.getAllProduct();
			model.addAttribute("prodlist",plist);
		      
		      return "Productdisplay";
	   }
	 
	   @RequestMapping(value="/getproduct", method=RequestMethod.GET)
	   public ModelAndView getAllProduct() {
		List<Product> plist=productDao.getAllProduct();
		
		ModelAndView mn=new ModelAndView("Productf","command",new Product());
		mn.addObject("prodlist",plist);
		return mn;
	   }
	   @RequestMapping(value="/deleteproduct")
	   public String deleteproduct(@RequestParam int id, Model model) {
	   productDao.deleteProduct(id);
	   List<Product> plist=productDao.getAllProduct();
		model.addAttribute("prodlist",plist);
	      
	      return "Productdisplay";
   }
	   @RequestMapping(value="/getupdateproduct")
	   public String getUpdateProduct(@RequestParam("id") int id,Model model){
	   	Product product=productDao.getProduct(id);
	   	model.addAttribute("command",product);
	   	List<Categery> categerylist=productDao.getAllCategery();
	   	model.addAttribute("categeries",categerylist);
	   	return "Updateproductf";
	   }
	   @RequestMapping(value="/Updateproduct",method=RequestMethod.POST)
		   public String updateproduct(@Valid @ModelAttribute("product")Product product,BindingResult result,ModelMap model,HttpServletRequest request) {
			   if(result.hasErrors()){
				   List<Categery> categerylist=productDao.getAllCategery();
				   	model.addAttribute("categeries",categerylist);
				   	return "Updateproductf";
				}
			   productDao.updateProduct(product);
			   MultipartFile img=product.getImage();//Defining a path
				Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getProductID()+".jpg");
				
				//Create a file in the path
				try {
					if(img!=null && !img.isEmpty()){
					File file=new File(path.toString());
					System.out.println(path);
					img.transferTo(file);
					}
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				List<Product> plist=productDao.getAllProduct();
				model.addAttribute("prodlist",plist);
			      return "Productdisplay";
		   }
		}
