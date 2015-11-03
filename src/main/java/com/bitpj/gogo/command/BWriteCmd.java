package com.bitpj.gogo.command;

import java.util.Map;

import org.springframework.ui.Model;

import com.bitpj.gogo.dao.BoardDao;
import com.bitpj.gogo.vo.BoardVo;

public class BWriteCmd implements Cmd{
	@Override
	public int execute(Model model) {
		Map<String, Object> map = model.asMap();
		BoardVo vo = (BoardVo)map.get("vo");
	
		BoardDao dao = new BoardDao();
		dao.write(vo);
		
		return 0;
	}
}
