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
	
	@RequestMapping("jang")
	public String aboutUs(){
		return "jang";
	}
	
	@RequestMapping("goschool")
	public String products(){
		return "goschool";
	}
	
	@RequestMapping("taxi")
	public String contactUs(){
		return "taxi";
	}
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("dan")
	public String dan(){
		return "dan";
	}
}

