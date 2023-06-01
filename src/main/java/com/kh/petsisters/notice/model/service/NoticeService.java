package com.kh.petsisters.notice.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.notice.model.vo.Notice;

public interface NoticeService {

	// 공지사항 리스트 조회 서비스 (+ 페이징처리)
	// 공지사항의 총 개수 조회
	int selectListCount();
	// 공지사항 리스트 조회
	ArrayList<Notice> selectList(PageInfo pi);
	
	// 공지사항 작성하기 서비스
	int insertNotice(Notice n);
	
	// 공지사항 상세조회 서비스
	// 공지사항 조회수 증가
	int increaseCount(int noticeNo);
	// 공지사항 상세 조회
	Notice selectNotice(int noticeNo);
	
	// 공지사항 삭제 서비스
	int deleteNotice(int noticeNo);
	
	// 공지사항 수정 서비스
	int updateNotice(Notice n);

}
