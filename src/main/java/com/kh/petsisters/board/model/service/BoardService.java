package com.kh.petsisters.board.model.service;

import java.util.ArrayList;

import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;

public interface BoardService {
	
	// 게시글 리스트 조회 (+페이징처리)
	// 게시글 총 갯수 조회
	int selectListCount();
	
	int selectFreeListCount();
	
	// 커뮤니티 일반게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo pi);
	
	
	// 커뮤니티 자유게시판 리스트 조회
	ArrayList<Board> selectFreeList(PageInfo pi);
	
	// 게시글 상세조회 서비스
	// 게시글 조회수 증가
	int increaseCount(int boardNo);
	// 게시글 상세 조회
	Board selectBoard(int boardNo);
	
	// 게시글 작성하기 서비스
	int insertFreeBoard(Board b);
	
	// 첨부파일 업로드 서비스
	int insertAttachmentList(ArrayList<Attachment> list);
}
