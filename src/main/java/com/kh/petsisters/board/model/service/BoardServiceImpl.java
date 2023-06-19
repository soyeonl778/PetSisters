package com.kh.petsisters.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.board.model.dao.BoardDao;
import com.kh.petsisters.board.model.vo.Attachment;
import com.kh.petsisters.board.model.vo.Board;
import com.kh.petsisters.board.model.vo.BoardReply;
import com.kh.petsisters.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao boardDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int selectListCount(Board b) {
		return boardDao.selectListCount(sqlSession, b);
	}

	
	@Override
	public ArrayList<Board> selectList(PageInfo pi, Board b) {
		return boardDao.selectList(sqlSession, pi, b);
	}
	
	
	@Override
	public ArrayList<Board> selectFreeList(PageInfo pi) {
		return boardDao.selectFreeList(sqlSession, pi);
	}
	
	@Override
	public int increaseCount(int bno) {
		return boardDao.increaseCount(sqlSession, bno);
	}
	
	@Override
	public Board selectBoard(int bno) {
		return boardDao.selectBoard(sqlSession, bno);
	}
	
	
	@Override
	public int insertBoard(Board b) {
		return boardDao.insertBoard(sqlSession, b);
	}


	@Override
	public int insertAttachmentList(ArrayList<Attachment> list) {
		return boardDao.insertAttachmentList(sqlSession, list);
	}

	@Override
	public ArrayList<Board> selectTopList() {
		return boardDao.selectTopList(sqlSession);
	}

	@Override
	public ArrayList<Board> selectBottomList1() {
		return boardDao.selectBottomList1(sqlSession);
	}


	@Override
	public Board selectBoardInUpdate(int bno) {
		return boardDao.selectBoardInUpdate(sqlSession, bno);
	}
	
	@Override
	public int updateBoard(Board b) {
		return boardDao.updateBoard(sqlSession, b);
	}

	@Override
	public int deleteAttaAll(int boardNo) {
		return boardDao.deleteAttaAll(sqlSession, boardNo);
	}
	
	@Override
	public int updateAttachmentList(Attachment at) {
		return boardDao.updateAttachmentList(sqlSession, at);
	}
	
	@Override
	public ArrayList<BoardReply> addReply(int bno) {
		return boardDao.addReply(sqlSession, bno);
	}

	@Override
	public int writeReply(String replyDesc, int userNo, int bNo) {
		return boardDao.writeReply(sqlSession, replyDesc, userNo, bNo);
	}
	
	@Override
	public Board dogInfo(int bno) {
		return boardDao.dogInfo(sqlSession, bno);
	}

	@Override
	public int replyDelete(int repNo) {
		return boardDao.replyDelete(sqlSession, repNo);
	}


	@Override
	public ArrayList<Attachment> selectAttachment(int bno) {
		return boardDao.selectAttachment(sqlSession, bno);
	}
	
	/*
	@Override
	public ArrayList<Attachment> updateBoardForm(Board b, ArrayList<Attachment> list) {
		return boardDao.updateBoardForm(sqlSession, b, list);
	}
	 */

	@Override
	public int deleteBoard(int bNo) {
		return boardDao.deleteBoard(sqlSession, bNo);
	}
	
	

	




}





















