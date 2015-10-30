package com.bitpj.gogo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping("about-us")
	public String aboutUs(){
		return "about-us";
	}
	
	@RequestMapping("products")
	public String products(){
		return "products";
	}
	
	@RequestMapping("contact-us")
	public String contactUs(){
		return "contact-us";
	}
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
}

