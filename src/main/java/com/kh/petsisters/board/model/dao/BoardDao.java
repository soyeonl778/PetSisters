package com.kh.petsisters.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.common.model.vo.PageInfo;

@Repository
public class BoardDao {
	
	public int selectListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}
	
	public int selectFreeListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("boardMapper.selectFreeListCount");
	}
	
	public ArrayList<Board> selectList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit(); 
		int limit = pi.getBoardLimit(); 
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", null, rowBounds);
	}
	
	
	public ArrayList<Board> selectFreeList(SqlSessionTemplate sqlSession, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeList", null, rowBounds);
	}
	
	
	public int increaseCount(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount", boardNo);
	}
	
	public Board selectBoard(SqlSessionTemplate sqlSession, int boardNo) {
		return sqlSession.selectOne("boardMapper.selectBoard", boardNo);
	}
	
	
	public int insertFreeBoard(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("boardMapper.insertFreeBoard", b);
	}
	

	
	
	/*
	public int insertAttachmentList(SqlSessionTemplate sqlSession, ArrayList<Attachment> list) {
		return sqlSession.insert("xxx.insertAttachmentList", list);
		
		// INSERT 문 (1회 ~ 4회, 여러번) => int (처리된 행의 갯수)
		
		// 1. 필요한 변수 먼저 셋팅
		int result = 1;
		// insert 를 반복해서 진행 => 하나라도 실패할 경우 실패처리
		// result 를 애초에 1로 셋팅해두고 누적 곱을 구할 예정 
		
		
		
		
	}
	*/
}
