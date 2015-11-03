package com.bitpj.gogo.command;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.bitpj.gogo.dao.BoardDao;

public class BDelCmd implements Cmd{
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest)map.get("request");
		int bno = Integer.parseInt(request.getParameter("no"));
		
		BoardDao dao = new BoardDao();
		dao.delete(bno);
		
		return 0;
	}
}
