package com.bitpj.gogo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bitpj.gogo.command.Cmd;
import com.bitpj.gogo.command.LoginCmd;
import com.bitpj.gogo.util.Constant;


@Controller
public class HomeController {
	Cmd command;
	
	@Autowired
	public void setTemplate(JdbcTemplate template){
		Constant.template = template;
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "index";
	}
	
	@RequestMapping("index")
	public String index(){
		return "index";
	}
	
	@RequestMapping("dan")
	public String dan(){
		return "dan";
	}
	
	@RequestMapping("jang")
	public String aboutUs(){
		return "jang";
	}
	
	@RequestMapping("goschool")
	public String goschool(){
		return "goschool";
	}
	
	@RequestMapping("taxi")
	public String taxi(){
		return "taxi";
	}
	
	@RequestMapping("community")
	public String community(){
		return "community";
	}
	
	@RequestMapping("customer")
	public String customer(){
		return "customer";
	}	
	
	@RequestMapping("loginForm")
	public String loginForm(){
		return "login";
	}
	
	@RequestMapping("joinForm")
	public String joinForm(){
		return "join";
	}
	
	@RequestMapping("login")
	public String login(HttpServletRequest request, Model model){
		model.addAttribute("request", request);
		command = new LoginCmd("login");
		int rs = command.execute(model);
		
		if(rs == 0){ //입력 정보와 일치하는 사용자 없는 경우
			return "redirect:loginForm";
		}else{
			return "redirect:";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, Model model){
		model.addAttribute("request", request);
		command = new LoginCmd("logout");
		command.execute(model);
		
		return "redirect:";
	}
	
	@RequestMapping("board")
	public String board(HttpServletRequest request, Model model){
		////////////////
		return "board";
	}
}

