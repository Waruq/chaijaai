package com.ecommerce.chaijaai.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductFlavorDao;
import com.ecommerce.chaijaai.model.ProductFlavor;

@Controller
@RequestMapping("/flavor")
public class ProductFlavorController {

	@Autowired
	ProductFlavorDao flavorDao;
	
	@RequestMapping(method=RequestMethod.GET) 
	public String get(Model model) {
		if(!model.containsAttribute("flavor"))
			model.addAttribute("flavor",new ProductFlavor());
		
		model.addAttribute("add", true);
		model.addAttribute("flavorList",flavorDao.findAll());
		return "flavor";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String post(@ModelAttribute("flavor") ProductFlavor flavor,BindingResult result,
						RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("flavor",flavor);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Please enter data properly");
		}
		
		flavorDao.save(flavor);
		redirectAttributes.addFlashAttribute("success","Flavor saved successfully");

		return "redirect:/flavor";
	}
	
	@ExceptionHandler
	public void exception(Exception e) {
		e.printStackTrace();
	}
}
