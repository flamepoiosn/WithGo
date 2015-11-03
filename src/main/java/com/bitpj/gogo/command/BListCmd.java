package com.bitpj.gogo.command;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.bitpj.gogo.dao.BoardDao;
import com.bitpj.gogo.vo.BoardVo;

public class BListCmd implements Cmd{
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		
		String category = request.getParameter("category");
		if(category == null){
			category = "greeting";
		}
		
		String strPage = request.getParameter("page");
		if(strPage == null){
			strPage = "1";
		}
		
		int curPage = Integer.parseInt(strPage);
		
		BoardDao dao = new BoardDao();
		ArrayList<BoardVo> list = dao.list(category, curPage);
		
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		model.addAttribute("curPage", curPage);
		model.addAttribute("total", dao.getTotal(category));
		return 0;
	}
}
