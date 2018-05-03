package com.ecommerce.chaijaai.controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.ProductCategoryDao;
import com.ecommerce.chaijaai.dao.ProductDao;
import com.ecommerce.chaijaai.dao.ProductFlavorDao;
import com.ecommerce.chaijaai.dao.ProductTypeDao;
import com.ecommerce.chaijaai.dao.ProductUnitDao;
import com.ecommerce.chaijaai.model.Product;
import com.ecommerce.chaijaai.utils.Constants;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	@Autowired
	ProductCategoryDao categoryDao;	
	@Autowired
	ProductTypeDao typeDao;
	@Autowired
	ProductFlavorDao flavorDao;
	@Autowired
	ProductUnitDao unitDao;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String get(Model model,HttpSession session){
		
		if(!model.containsAttribute("product")) {
			Product product = new  Product();
			model.addAttribute("product", product);
		}
		initData(model);
		
		return "product";
	}	
	
	@RequestMapping(method=RequestMethod.POST)
	public String save(@ModelAttribute("product") Product product,BindingResult result,
					   @RequestParam(value="files") MultipartFile[] files,
						HttpSession session,RedirectAttributes redirectAttributes){
		if(files.length == 0) {
			result.rejectValue("images", "images","Please upload images");
		}
		
		if(result.hasErrors()) {
			System.err.println(result.getAllErrors());
			redirectAttributes.addFlashAttribute("product", product);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Enter data properly");
			
			return "redirect:/product";
		}
		
		for(int i=0;i<files.length;i++) {
			String filename =product.getName()+i+".jpg";
			try {
				files[i].transferTo(new File( Constants.PATH+"/"+filename));
				product.getImages().add(filename);
			} catch (IllegalStateException | IOException e) {
				redirectAttributes.addFlashAttribute("product", product);
				redirectAttributes.addFlashAttribute("fail","Files cannot be uploaded,Please try agains");
				e.printStackTrace();
			}
		}
		
		productDao.save(product);
		redirectAttributes.addFlashAttribute("success","Product saved successfully");	
		return "redirect:/product";
	}
	
	@RequestMapping(value="/search",method=RequestMethod.GET)
	public  String productList(Model model) {
		
		model.addAttribute("productList",productDao.findAll());
		return "productlist";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id,Model model) {
		
		model.addAttribute("product", productDao.findOne(id));
		
		return "product";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String update(@ModelAttribute("product") Product product,BindingResult result,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("product",product);
			redirectAttributes.addFlashAttribute("result",result);
			redirectAttributes.addFlashAttribute("fail","Product cannot be updated");
			
			return "redirect:/product/edit/"+product.getId();
		}
		
		productDao.save(product);
		redirectAttributes.addFlashAttribute("success","Product updated successfully");
		
		
		return "redirect:/product";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id,RedirectAttributes redirectAttributes) {
		
		try {
			productDao.delete(id);
			redirectAttributes.addFlashAttribute("success","Product deleted successfully");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("fail","Product cannot be deleted");
		}
		
		return "redirect:/product";
	}
	
	public void initData(Model model) {
		model.addAttribute("categoryList",categoryDao.findAll());
		model.addAttribute("typeList",typeDao.findAll());
		model.addAttribute("flavorList",flavorDao.findAll());
		model.addAttribute("unitList", unitDao.findAll());
	}
		
}
