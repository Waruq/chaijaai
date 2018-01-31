package com.ecommerce.chaijaai.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.ecommerce.chaijaai.dao.ProductFlavorDao;
import com.ecommerce.chaijaai.dao.ProductTypeDao;


@ControllerAdvice
public class GeneralController {

	@Autowired
	ProductTypeDao typeDao;
	@Autowired
	ProductFlavorDao flavorDao;
	
	@ModelAttribute
	public void addAttributes(Model model) {
		model.addAttribute("typeList",typeDao.findAll());
		model.addAttribute("flavorList",flavorDao.findAll());
	}
}
