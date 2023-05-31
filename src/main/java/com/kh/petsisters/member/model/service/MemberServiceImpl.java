package com.kh.petsisters.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.petsisters.member.model.dao.MemberDao;
import com.kh.petsisters.member.model.vo.Member;

public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public Member login(Member m) {
		Member loginUser = memberDao.login(sqlSession, m);
		return loginUser;
	}

}
