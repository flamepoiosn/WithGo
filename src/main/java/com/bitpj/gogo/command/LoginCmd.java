package com.bitpj.gogo.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.bitpj.gogo.dao.MemberDao;
import com.bitpj.gogo.vo.MemberVo;

public class LoginCmd implements Cmd{
	String type = null;
	HttpSession session = null;
	
	public LoginCmd(String type) {
		this.type = type;
	}
	
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		if(type.equals("login")){		
			String email = request.getParameter("email");
			String pw = request.getParameter("pw");
			
			MemberDao dao = new MemberDao();
			ArrayList<MemberVo> vo = null;
			vo = dao.getMemberInfo(email, pw);
			
			if(vo.size() == 0){
				return 0;
			}else{
				session = request.getSession();
				session.setAttribute("memberInfo", vo.get(0));
				return 1;
			}
		}else{  //logout
			session = request.getSession(false);
			session.invalidate();
			return 0;
		}	
	}
}
