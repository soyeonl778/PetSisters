package com.kh.petsisters.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.member.model.dao.SupportDao;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;

@Service
public class SupportServiceImpl implements SupportService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private SupportDao supportDao;

	@Override
	public int insertSupport(Support s) {
		
		return supportDao.insertSupport(sqlSession, s);

	}

}
