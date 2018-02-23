package com.ecommerce.chaijaai.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ecommerce.chaijaai.dao.CartDao;
import com.ecommerce.chaijaai.model.Cart;
import com.ecommerce.chaijaai.model.CartItem;
import com.ecommerce.chaijaai.model.Product;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartDao cartDao;
	

	@SuppressWarnings("unchecked")
	@RequestMapping(value="/add/{quantity}/{id}",method=RequestMethod.GET)
	public @ResponseBody boolean addToCart(@PathVariable("quantity") Integer quantity,HttpSession session,
							 @PathVariable("id") Product product) {
		if(session.getAttribute("cartItemsList") == null) {
			session.setAttribute("cartItemsList",new ArrayList<CartItem>());
		}
				
		CartItem cartItem = new CartItem();
		cartItem.setProduct(product);
		cartItem.setQuantity(quantity);
				
	    ((List<CartItem>)session.getAttribute("cartItemsList")).add(cartItem);
	
	    System.err.println(((List<CartItem>)session.getAttribute("cartItemsList")).size()+"------------");
		return true;
	}

	@RequestMapping(method=RequestMethod.GET)
	public String get(Model model,HttpSession session){
		
		if(!model.containsAttribute("cart")) {
			Cart cart = new  Cart();
			model.addAttribute("cart", cart);
		}
		model.addAttribute("cartList",(List<CartItem>)session.getAttribute("cartItemsList"));		
		
		return "cart";
	}	
	
	public String save(@ModelAttribute("cart") Cart cart,BindingResult result,
						HttpSession session,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("cart", cart);
			redirectAttributes.addFlashAttribute("result", result);
			redirectAttributes.addFlashAttribute("fail","Enter data properly");
			
			return "redirect:/cart";
		}
		
		cartDao.save(cart);
		
		return "redirect:/cart";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id,Model model) {
		
		model.addAttribute("cart", cartDao.findOne(id));
		
		return "cart";
	}
	
	@RequestMapping(value="/edit/{id}",method=RequestMethod.POST)
	public String update(@ModelAttribute("cart") Cart cart,BindingResult result,RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("cart",cart);
			redirectAttributes.addFlashAttribute("result",result);
			redirectAttributes.addFlashAttribute("fail","Cart cannot be updated");
			
			return "redirect:/cart/edit/"+cart.getId();
		}
		
		cartDao.save(cart);
		redirectAttributes.addFlashAttribute("success","Cart updated successfully");
		
		
		return "redirect:/cart";
	}
	
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable("id") Long id,RedirectAttributes redirectAttributes) {
		
		try {
			cartDao.delete(id);
			redirectAttributes.addFlashAttribute("success","Cart deleted successfully");
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("fail","Cart cannot be deleted");
		}
		
		return "redirect:/cart";
	}

}
