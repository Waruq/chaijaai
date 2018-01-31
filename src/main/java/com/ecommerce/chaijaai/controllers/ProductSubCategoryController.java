package com.ecommerce.chaijaai.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductCategoryDao;
import com.ecommerce.chaijaai.dao.ProductSubCategoryDao;
import com.ecommerce.chaijaai.model.ProductSubCategory;

@Controller
@RequestMapping("/subcategory")
public class ProductSubCategoryController {

	@Autowired
	ProductSubCategoryDao productSubCategoryDao;
	@Autowired 
	ProductCategoryDao productCategoryDao;
	
	@RequestMapping(method=RequestMethod.GET)
	public String get(Model model,HttpSession session){
		
		if(!model.containsAttribute("subCategory")) {
			ProductSubCategory subCategory = new  ProductSubCategory();
			model.addAttribute("subCategory", subCategory);
		}
		model.addAttribute("subCategoryList",productSubCategoryDao.findAll());		
		model.addAttribute("categoryList",productCategoryDao.findAll());
		
		return "subcategory";
	}	

	@RequestMapping(method=RequestMethod.POST)
	public String save(@ModelAttribute("subCategory") ProductSubCategory subCategory,BindingResult result,
						HttpSession session,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("subCategory", subCategory);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Enter data properly");
			
			return "redirect:/subcategory";
		}
		
		productSubCategoryDao.save(subCategory);
		
		return "redirect:/subcategory";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id,Model model) {
		
		model.addAttribute("subCategory", productSubCategoryDao.findOne(id));
		
		return "subCategory";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String update(@ModelAttribute("subCategory") ProductSubCategory subCategory,BindingResult result,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("subCategory",subCategory);
			redirectAttributes.addFlashAttribute("result",result);
			redirectAttributes.addFlashAttribute("fail","Sub Category cannot be updated");
			
			return "redirect:/subcategory/edit/"+subCategory.getId();
		}
		
		productSubCategoryDao.save(subCategory);
		redirectAttributes.addFlashAttribute("success","Sub Category updated successfully");
		
		
		return "redirect:/subcategory";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id,RedirectAttributes redirectAttributes) {
		
		try {
			productSubCategoryDao.delete(id);
			redirectAttributes.addFlashAttribute("success","Sub Category deleted successfully");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("fail","Sub Category cannot be deleted");
		}
		
		return "redirect:/subcategory";
	}
	
}
