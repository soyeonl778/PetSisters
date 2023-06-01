package com.kh.petsisters.notice.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.notice.model.dao.NoticeDao;
import com.kh.petsisters.notice.model.vo.Notice;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDao noticeDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		// TODO Auto-generated method stub
		return noticeDao.selectListCount(sqlSession);
	}

	@Override
	public ArrayList<Notice> selectList(PageInfo pi) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertNotice(Notice n) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int increaseCount(int noticeNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Notice selectNotice(int noticeNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteNotice(int noticeNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateNotice(Notice n) {
		// TODO Auto-generated method stub
		return 0;
	}

}
