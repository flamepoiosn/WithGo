package com.bitpj.gogo.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;

import com.bitpj.gogo.config.PageNum;
import com.bitpj.gogo.util.Constant;
import com.bitpj.gogo.vo.BoardVo;

public class BoardDao {
	JdbcTemplate template = null;
	
	public BoardDao() {
		template = Constant.template;
	}
	
	public ArrayList<BoardVo> list(String category, int curPage){
		int total = getTotal(category);
		int startNo = total - (PageNum.PAGEROW * (curPage-1));
		String query = "select B.* from (select A.*, rownum rn from (select * from board where category='"+category+"' order by bno) A) B where rn between "+(startNo-PageNum.PAGEROW+1)+" and "+startNo+" order by rn desc";
		return (ArrayList<BoardVo>)template.query(query, new BeanPropertyRowMapper<BoardVo>(BoardVo.class));
	}
	
	public int getTotal(String category){
		String query = "select count(*) from board where category='"+category+"'";
		return template.queryForInt(query);
	}
	
	public void write(final BoardVo vo){
		String query = "insert into board(bno, category, nickname, title, content) values(b_seq.nextval, ?, ?, ?, ?)";
		template.update(query, new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, vo.getCategory());
				pstmt.setString(2, vo.getNickname());
				pstmt.setString(3, vo.getTitle());
				pstmt.setString(4, vo.getContent());
			}
		});
	}
	
	public void upHit(final int bno){
		String query = "update board set hit=hit+1 where bno=?";
		template.update(query, new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setInt(1, bno);
			}
		});
	}
	
	public BoardVo read(int bno){
		upHit(bno);
		
		String query = "select * from board where bno="+bno;
		return template.queryForObject(query, new BeanPropertyRowMapper<BoardVo>(BoardVo.class));
	}
	
	public void delete(final int bno){
		String query = "delete from board where bno=?";
		template.update(query, new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setInt(1, bno);
			}
		});
	}
	
	public void update(final BoardVo vo){
		String query = "update board set title=?, content=? where bno=?";
		template.update(query, new PreparedStatementSetter(){
			@Override
			public void setValues(PreparedStatement pstmt) throws SQLException {
				pstmt.setString(1, vo.getTitle());
				pstmt.setString(2, vo.getContent());
				pstmt.setInt(3, vo.getBno());
			}
		});
	}
}
