package com.kh.petsisters.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.petsisters.member.model.vo.Member;

public class MemberDao {
	
	public Member login(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.login", m);
	}

}
