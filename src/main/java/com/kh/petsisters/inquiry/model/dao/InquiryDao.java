package com.kh.petsisters.inquiry.model.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Repository
public class InquiryDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("inquiryMapper.selectListCount");
	}
	
	public List<Inquiry> selectList(SqlSessionTemplate sqlSession, PageInfo pi, Member m) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return sqlSession.selectList("inquiryMapper.selectList", m, rowBounds);
	}
	
	public int insertInquiry(SqlSessionTemplate sqlSession, Inquiry i) {
		return sqlSession.insert("inquiryMapper.insertInquiry", i);
	}
	
	public int increaseCount(SqlSessionTemplate sqlSession, int inquiryNo) {
		return sqlSession.update("inquiryMapper.increaseCount", inquiryNo);
	}
	
	public Inquiry selectInquiry(SqlSessionTemplate sqlSession, int inquiryNo) {
		return sqlSession.selectOne("inquiryMapper.selectInquiry", inquiryNo);
	}
	
}
