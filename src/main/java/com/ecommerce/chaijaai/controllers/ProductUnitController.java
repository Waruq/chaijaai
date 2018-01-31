package com.ecommerce.chaijaai.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductUnitDao;
import com.ecommerce.chaijaai.model.ProductUnit;

@Controller
@RequestMapping("/unit")
public class ProductUnitController {

	@Autowired
	ProductUnitDao unitDao;	
	
	@RequestMapping(method=RequestMethod.GET) 
	public String get(Model model) {
		if(!model.containsAttribute("unit"))
			model.addAttribute("unit",new ProductUnit());
		
		model.addAttribute("add", true);
		model.addAttribute("unitList",unitDao.findAll());
		return "unit";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String post(@ModelAttribute("unit") ProductUnit unit,BindingResult result,
						RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("unit",unit);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Please enter data properly");
		}
		
		unitDao.save(unit);
		redirectAttributes.addFlashAttribute("success","Unit saved successfully");

		return "redirect:/unit";
	}
}
