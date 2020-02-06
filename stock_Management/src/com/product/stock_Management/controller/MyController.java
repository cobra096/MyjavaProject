package com.product.stock_Management.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.product.stock_Management.model.OrderInfoDTO;
import com.product.stock_Management.model.ProductDTO;
import com.product.stock_Management.model.SignUp;
import com.product.stock_Management.service.MyService;
@RequestMapping("/")
@Component
public class MyController {
	@Autowired
	MyService ms;
	@Autowired
	HttpSession hs;
	
	
	@RequestMapping("/link1")
	public String m1() {
		return "signup";
	}
	@RequestMapping("/link2")
	public String m2() {
		return "login";
	}
	@RequestMapping(value="/signup",method=RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute SignUp sdto) {
		boolean b=ms.signup(sdto);
		if(b) {
		return new ModelAndView("login","msg","Sign up successfull");
		}else {
			return new ModelAndView("signup","msg","Sign up failed");
		}
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView login(@RequestParam String userName,String password) {
		SignUp sdto=ms.login(userName, password);
		if(sdto!=null) {
			hs.setAttribute("un1", sdto.getUserName());
			List<ProductDTO> list=ms.product();
		return new ModelAndView("home","list",list);
		}else {
			return new ModelAndView("login","msg","*Login failed try again");
		}
	}
	
	@RequestMapping("/addpro")
	public String addpro() {
		return "addproduct";
	}
	
	@RequestMapping(value="/addproduct",method =RequestMethod.POST)
	public ModelAndView addProduct(@ModelAttribute ProductDTO pdto) {
		boolean b=ms.addProduct(pdto);
		if(b) {
			return new ModelAndView("message","msg","Product successfully added");
			}else {
			return new ModelAndView("addproduct","msg","Product not added pls try again");
		}
	}
	
	@RequestMapping("/modyproduct")
	public ModelAndView modifyProduct() {
		List<ProductDTO> list=ms.product();
		return new ModelAndView("modify","list",list);
	}
	@RequestMapping("/addtocart")
	public ModelAndView addToCart(@RequestParam int id) {
		ProductDTO dto=ms.addtocart(id);
		return new ModelAndView("addtocart","dto",dto);
	}
	@RequestMapping(value="/search",method=RequestMethod.POST)
	public ModelAndView search(@RequestParam String search) {
		List<ProductDTO> list=ms.search(search);
		if(list.isEmpty()) {
			return new ModelAndView("message","msg","product not available");
		}else {
		return new ModelAndView("search","list",list);
		}
	}
	
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam int id) {
		ProductDTO dto=ms.update(id);
		return new ModelAndView("updateproduct","dto",dto);
	}
	
	@RequestMapping(value="/updateproduct",method=RequestMethod.POST)
	public ModelAndView updateproduct(@ModelAttribute ProductDTO dto) {
		boolean b=ms.updateproduct(dto);
		if(b) {
			return new ModelAndView("message","msg","updated successfully");
		}else {
			return new ModelAndView("updateproduct","msg","Value not updated pls try again");
		}
	}
	
	@RequestMapping(value="/addcart",method=RequestMethod.POST)
	public ModelAndView add(@ModelAttribute ProductDTO dto) {
		ProductDTO pdto=ms.add(dto);
		if(pdto!=null) {
			return new ModelAndView("bill","dto",pdto);
		}else {
			return new ModelAndView("message","msg","out of stock");
		}
	}
	
	@RequestMapping("/home")
	public ModelAndView home() {
		List<ProductDTO> list=ms.product();
		return new ModelAndView("home","list",list);
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam int id) {
		ProductDTO dto=ms.delete(id);
		if(dto==null) {
			List<ProductDTO> list=ms.product();
			return new ModelAndView("home","list",list);
		}else {
			List<ProductDTO> list=ms.product();
			return new ModelAndView("home","list",list);
		}
	}

}
