package com.ecommerce.chaijaai.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductTypeDao;
import com.ecommerce.chaijaai.model.ProductType;

@Controller
@RequestMapping("/type")
public class ProductTypeController {

	@Autowired
	ProductTypeDao typeDao;	
	
	@RequestMapping(method=RequestMethod.GET) 
	public String get(Model model) {
		if(!model.containsAttribute("type"))
			model.addAttribute("type",new ProductType());
		
		model.addAttribute("add", true);
		model.addAttribute("typeList",typeDao.findAll());
		return "type";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String post(@ModelAttribute("type") ProductType type,BindingResult result,
						RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("type",type);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Please enter data properly");
		}
		
		typeDao.save(type);
		redirectAttributes.addFlashAttribute("success","Type saved successfully");

		return "redirect:/type";
	}
	
}
