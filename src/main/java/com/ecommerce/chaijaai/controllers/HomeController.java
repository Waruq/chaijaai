package com.ecommerce.chaijaai.controllers;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ecommerce.chaijaai.dao.ProductFlavorDao;
import com.ecommerce.chaijaai.dao.ProductTypeDao;
import com.ecommerce.chaijaai.utils.Constants;

@Controller
public class HomeController {

	@Autowired
	ProductTypeDao typeDao;
	
	@Autowired
	ProductFlavorDao flavorDao;
	
	@RequestMapping(value="/",method=RequestMethod.GET)
	public String get(Model model){
		
		System.err.println("in errrrrrrrrrrrrrrr");
		return "home";
	}
	
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String getAgain(){
		System.err.println("nadeem not good");
		return "index";
	}
	
	@RequestMapping(value = "/image/{imageName:.+}", method = RequestMethod.GET)
	public void getFaultReportImage(@PathVariable("imageName") String imageName, Model model, HttpServletRequest req,
			HttpServletResponse rep) {
		try {
			
			System.err.println("-------"+Constants.PATH+"\\"+imageName);
			
			InputStream is = new FileInputStream(Constants.PATH+"\\"+imageName);

			byte[] bytes = IOUtils.toByteArray(is);
			if (imageName.contains(".pdf"))
				rep.setContentType("application/pdf");
			else if (imageName.contains(".dwg"))
				rep.setContentType("image/vnd.dwg");
			else if (imageName.contains(".gif"))
				rep.setContentType("image/gif");
			else
				rep.setContentType("image/jpeg");
			OutputStream os = rep.getOutputStream();
			os.write(bytes);
			os.close();
			is.close();
		} catch (Exception e) {// e.printStackTrace();
			System.out.println("Image " + imageName + " not present");
			e.printStackTrace();
		}
}
}
