package com.kh.petsisters.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;

@Repository
public class SupportDao {
	
	public int insertSupport(SqlSessionTemplate sqlSession, Support s) {
		
		return sqlSession.insert("supportMapper.insertSupport", s);
	}
	

}
