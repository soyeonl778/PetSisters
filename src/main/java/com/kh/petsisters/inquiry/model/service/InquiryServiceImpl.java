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

	// 대시보드용 : 
	@Override
	public int selectAllCount() {
		return inquiryDao.selectAllCount(sqlSession);
	}
	
	@Override
	public int selectListCount(int userNo) {
		return inquiryDao.selectListCount(sqlSession, userNo);
	}

	// 대시보드용 : 
	@Override
	public List<Inquiry> selectDashboardList(PageInfo pi) {
		return inquiryDao.selectDashboardList(sqlSession, pi);
	}
	
	@Override
	public List<Inquiry> selectList(PageInfo pi, int userNo) {
		return inquiryDao.selectList(sqlSession, pi, userNo);
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
		return inquiryDao.deleteInquiry(sqlSession, inquiryNo);
	}

	@Override
	public List<CSReply> selectReplyList(int inquiryNo) {
		return inquiryDao.selectReplyList(sqlSession, inquiryNo);
	}

	@Override
	public int insertReply(CSReply r) {
		return inquiryDao.insertReply(sqlSession, r);
	}

}
