package com.kh.petsisters.inquiry.model.service;

import java.util.List;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.inquiry.model.vo.CSReply;
import com.kh.petsisters.inquiry.model.vo.Inquiry;

public interface InquiryService {

	// 1:1문의 리스트 조회 서비스 (+ 페이징처리)
	// 1:1문의 게시글의 총 개수 조회
	int selectListCount();
	// 1:1문의 리스트 조회
	List<Inquiry> selectList(PageInfo pi, int userNo);
	
	// 1:1문의 작성하기 서비스
	int insertInquiry(Inquiry i);
	
	// 1:1문의 상세조회 서비스
	// 1:1문의 조회수 증가
	int increaseCount(int inquiryNo);
	// 1:1문의 상세 조회
	Inquiry selectInquiry(int inquiryNo);
	
	// 1:1문의 삭제 서비스
	int deleteInquiry(int inquiryNo);
	
	// 1:1문의 수정 서비스
	int updateInquiry(Inquiry i);
	
	// 댓글 리스트 조회 서비스 (Ajax)
	List<CSReply> selectReplyList(int inquiryNo);
	
	// 댓글 작성 서비스 (Ajax)
	int insertCSReply(CSReply r);
}
