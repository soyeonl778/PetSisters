package com.kh.petsisters.board.model.service;

import java.util.ArrayList;

import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;

public interface BoardService {
	
	// 게시글 리스트 조회 (+페이징처리)
	// 게시글 총 갯수 조회
	int selectListCount();
	
	// 커뮤니티 게시글 리스트 조회
	ArrayList<Board> selectList(PageInfo pi);
	
	// 게시글 상세조회
	Board selectBoard(int boardNo);
	
	// 게시글 작성하기 서비스
	int insertBoard(Board b);
}
