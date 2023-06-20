package com.kh.petsisters.board.model.service;

import java.util.ArrayList;

import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.board.model.vo.BoardReply;
import com.kh.petsisters.common.model.vo.PageInfo;

public interface BoardService {
	
	// 게시글 리스트 조회 (+페이징처리)
	// 게시글 총 갯수 조회
	int selectListCount(Board b);
	
	// 커뮤니티 일반게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo pi, Board b);
	
	
	// 커뮤니티 자유게시판 리스트 조회
	ArrayList<Board> selectFreeList(PageInfo pi);
	
	// 게시글 상세조회 서비스
	// 게시글 조회수 증가
	int increaseCount(int bno);
	// 게시글 상세 조회
	Board selectBoard(int bno);
	
	// 자유게시글 작성하기 서비스
	int insertBoard(Board b);
	
	// 첨부파일 업로드 서비스
	int insertAttachmentList(ArrayList<Attachment> list);
	
	// 사진게시판 리스트 조회
	ArrayList<Board> selectTopList();

	ArrayList<Board> selectBottomList1();

	// 자유게시판 수정하기 서비스
	Board selectBoardInUpdate(int bno);
	
	// 자유게시글 수정하기 서비스
	int updateBoard(Board b);
	
	// 기존 첨부파일 STATUS = 'N' 변경 서비스
	int deleteAttaAll(int boardNo);
	
	// 첨부파일 수정하기 서비스
	int updateAttachmentList(Attachment at);
	
	ArrayList<BoardReply> addReply(int bno);

	int writeReply(String replyDesc, int userNo, int bNo);
	
	Board dogInfo(int bno);

	int replyDelete(int repNo);
	
	// 첨부파일을 가져오는 서비스
	ArrayList<Attachment> selectAttachment(int bno);
	
	// 업데이트폼 board / attachment 수정하기 
	//int updateBoardForm(Board b, ArrayList<Attachment> list);
	
	// 게시글 삭제하는 서비스
	int deleteBoard(int bNo);
	
	// 게시글 수정하는 서비스
	//int updateBoardAndAtt(Board b);
	// 게시글 수정하는 서비스
	//int updateAttachment(Attachment at);
}
