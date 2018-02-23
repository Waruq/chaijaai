package com.ecommerce.chaijaai.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ecommerce.chaijaai.dao.GeneralDao;
import com.ecommerce.chaijaai.dao.ProductDao;
import com.ecommerce.chaijaai.dao.ProductFlavorDao;
import com.ecommerce.chaijaai.dao.ProductTypeDao;
import com.ecommerce.chaijaai.model.Product;

@Controller
@RequestMapping("/tea")
public class TeaController {
	
	@Autowired
	ProductTypeDao typeDao;
	@Autowired
	ProductFlavorDao flavorDao;
	@Autowired
	GeneralDao generalDao;
	@Autowired
	ProductDao productDao;
	
		@RequestMapping(value="/type/{type}",method=RequestMethod.GET)
		public String getOnType(@PathVariable("type") String type,Model model,HttpSession session) {
			model.addAttribute("productList",generalDao.productsOnType(type));
			session.setAttribute("type",true);
			session.setAttribute("name", type);
			model.addAttribute("active","All");
			return "productsearch";
		}
		
		@RequestMapping(value="/flavor/{flavor}",method=RequestMethod.GET)
		public String getOnFlavor(@PathVariable("flavor") String flavor,Model model,HttpSession session) {
			session.setAttribute("type",false);
			session.setAttribute("name",flavor);
			model.addAttribute("productList",generalDao.productsOnFlavor(flavor));
			return "productsearch";
		}
		
		@RequestMapping(method=RequestMethod.GET)
		public String getTypesAndFlavour(@RequestParam("type") String type,@RequestParam("flavor") String flavor,
											Model model,HttpSession session) {
			if((boolean)session.getAttribute("type"))
				model.addAttribute("active",flavor);
			else
				model.addAttribute("active",type);
			
			model.addAttribute("productList",generalDao.productsOnTypeAndFlavour(type, flavor));
			
			return "productsearch";
		}
		
		@RequestMapping(value="/{id}/{name}",method=RequestMethod.GET)
		public String getProduct(@PathVariable("id") Long id,Model model) {
			
			model.addAttribute("product",productDao.findOne(id));
			return "productview";
			
		}
		
		@RequestMapping(value="/product/{id}",method=RequestMethod.GET)
		public @ResponseBody Product getProduct(@PathVariable("id") Long id) {
			return productDao.findOne(id);
		}
}

