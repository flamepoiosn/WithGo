package com.bitpj.gogo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.bitpj.gogo.vo.BoardVo;

public class MongoDao {
	
	private MongoTemplate mongoTemplate;
	
	@Autowired
	public void setMongoTemplate(MongoTemplate mongoTemplate){
		this.mongoTemplate = mongoTemplate;
	}
	
	public List<BoardVo> list(){
		return mongoTemplate.findAll(BoardVo.class);
	}
}
