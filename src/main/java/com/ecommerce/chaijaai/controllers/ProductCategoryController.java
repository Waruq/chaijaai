package com.ecommerce.chaijaai.controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductCategoryDao;
import com.ecommerce.chaijaai.model.ProductCategory;
import com.ecommerce.chaijaai.utils.Constants;

@Controller
@RequestMapping("/category")
public class ProductCategoryController {
	
	
	
	@Autowired
	ProductCategoryDao productCategoryDao;
	
	@RequestMapping(method=RequestMethod.GET)
	public String get(Model model,HttpSession session){
		
		if(!model.containsAttribute("category")) {
			ProductCategory category = new  ProductCategory();
			model.addAttribute("category", category);
		}
		model.addAttribute("categoryList",productCategoryDao.findAll());		
		model.addAttribute("add", true);
		return "category";
	}	
	
	@RequestMapping(method=RequestMethod.POST)
	public String save(@ModelAttribute("category") ProductCategory category,BindingResult result,
					   @RequestPart("catimage") MultipartFile file, HttpSession session,RedirectAttributes redirectAttributes) {

		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("category", category);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Enter data properly");
			
			return "redirect:/category";
		}
		System.err.println(file);
		if(file == null || file.isEmpty()) {
			redirectAttributes.addFlashAttribute("category", category);
			redirectAttributes.addFlashAttribute("fail","Select Category Image");
			return "redirect:/category";
		}
		
		
		
		try {
			File folder = new File(Constants.PATH);
			if(!folder.exists()) 
				folder.mkdir();
			
			String fileName = folder+"/"+category.getName()+".jpg";
			file.transferTo(new File(fileName));
			
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		category.setImage(category.getName());
		
		productCategoryDao.save(category);
		redirectAttributes.addFlashAttribute("success","Category saved successfully");

		return "redirect:/category";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id,Model model) {
		
		model.addAttribute("category", productCategoryDao.findOne(id));
		
		return "category";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String update(@ModelAttribute("category") ProductCategory category,BindingResult result,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("category",category);
			redirectAttributes.addFlashAttribute("result",result);
			redirectAttributes.addFlashAttribute("fail","Category cannot be updated");
			
			return "redirect:/category/edit/"+category.getId();
		}
		
		productCategoryDao.save(category);
		redirectAttributes.addFlashAttribute("success","Category updated successfully");
		
		
		return "redirect:/category";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id,RedirectAttributes redirectAttributes) {
		
		try {
			productCategoryDao.delete(id);
			redirectAttributes.addFlashAttribute("success","Category deleted successfully");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("fail","Category cannot be deleted");
		}
		
		return "redirect:/category";
	}
	
	@ExceptionHandler
	public void exception(Exception e) {
		e.printStackTrace();
	}
	
}
