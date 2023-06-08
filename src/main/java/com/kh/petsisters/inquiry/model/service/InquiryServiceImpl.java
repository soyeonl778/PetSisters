package com.kh.petsisters.inquiry.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.inquiry.model.dao.InquiryDao;
import com.kh.petsisters.inquiry.model.vo.CSReply;
import com.kh.petsisters.inquiry.model.vo.Inquiry;
import com.kh.petsisters.member.model.vo.Member;

@Service
public class InquiryServiceImpl implements InquiryService {

	@Autowired
	private InquiryDao inquiryDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		return inquiryDao.selectListCount(sqlSession);
	}

	@Override
	public List<Inquiry> selectList(PageInfo pi, Member m) {
		return inquiryDao.selectList(sqlSession, pi, m);
	}

	@Override
	public int insertInquiry(Inquiry i) {
		return inquiryDao.insertInquiry(sqlSession, i);
	}

	@Override
	public Inquiry selectInquiry(int inquiryNo) {
		return inquiryDao.selectInquiry(sqlSession, inquiryNo);
	}

	@Override
	public int deleteInquiry(int inquiryNo) {
		return sqlSession.delete("inquiryMapper.deleteInquiry", inquiryNo);
	}

	@Override
	public List<CSReply> selectReplyList(int inquiryNo) {
		return sqlSession.selectList("inquiryMapper.selectReplyList", inquiryNo);
	}

	@Override
	public int insertReply(CSReply r) {
		return sqlSession.insert("inquiryMapper.insertReply", r);
	}
}
