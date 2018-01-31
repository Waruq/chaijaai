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

import com.ecommerce.chaijaai.dao.CartItemDao;
import com.ecommerce.chaijaai.model.CartItem;

@Controller
@RequestMapping("/cartitem")
public class CartItemController {
	
	@Autowired
	CartItemDao cartItemDao;

	public String get(Model model,HttpSession session){
		
		if(!model.containsAttribute("cartItem")) {
			CartItem cartItem = new  CartItem();
			model.addAttribute("cartItem", cartItem);
		}
		model.addAttribute("cartItemList",cartItemDao.findAll());		
		
		return "cartItem";
	}	
	
	public String save(@ModelAttribute("cartItem") CartItem cartItem,BindingResult result,
						HttpSession session,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("cartItem", cartItem);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Enter data properly");
			
			return "redirect:/cartItem";
		}
		
		cartItemDao.save(cartItem);
		
		return "redirect:/cartItem";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id,Model model) {
		
		model.addAttribute("cartItem", cartItemDao.findOne(id));
		
		return "cartItem";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String update(@ModelAttribute("cartItem") CartItem cartItem,BindingResult result,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("cartItem",cartItem);
			redirectAttributes.addFlashAttribute("result",result);
			redirectAttributes.addFlashAttribute("fail","CartItem cannot be updated");
			
			return "redirect:/cartItem/edit/"+cartItem.getId();
		}
		
		cartItemDao.save(cartItem);
		redirectAttributes.addFlashAttribute("success","CartItem updated successfully");
		
		
		return "redirect:/cartItem";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id,RedirectAttributes redirectAttributes) {
		
		try {
			cartItemDao.delete(id);
			redirectAttributes.addFlashAttribute("success","CartItem deleted successfully");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("fail","CartItem cannot be deleted");
		}
		
		return "redirect:/cartItem";
	}
}
