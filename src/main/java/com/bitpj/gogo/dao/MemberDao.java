package com.bitpj.gogo.dao;

import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import com.bitpj.gogo.util.Constant;
import com.bitpj.gogo.vo.MemberVo;

public class MemberDao {
	JdbcTemplate template = null;
	
	public MemberDao() {
		template = Constant.template;
	}
	
	public ArrayList<MemberVo> getMemberInfo(String email, String pw){
		String query = "select * from member where email='"+email+"' and pw='"+pw+"'";
		return (ArrayList<MemberVo>)template.query(query, new BeanPropertyRowMapper<MemberVo>(MemberVo.class));
	}
}
