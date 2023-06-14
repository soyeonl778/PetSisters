package com.kh.petsisters.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.dao.MemberDao;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private MemberDao memberDao;

	@Override
	public Member loginMember(Member m) {
		Member loginUser = memberDao.loginMember(sqlSession, m);
		return loginUser;
	}

	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}
	
	
	@Override
	public Member foundId(Member m) {
		return memberDao.foundId(sqlSession, m);
	}

	@Override
	public Member foundPwd(Member m) {
		return memberDao.foundPwd(sqlSession, m);
	}

	@Override
	public int updateMember(Member m) {
		return memberDao.updateMember(sqlSession, m);
	}

	@Override
	public int deleteMember(String userId) {
		return memberDao.deleteMember(sqlSession, userId);
	}
	
	@Override
	public int petInsert(Dog d) {
		return memberDao.petInsert(sqlSession, d);
	}

	@Override
	public int petUpdate(Dog d) {
		return memberDao.petUpdate(sqlSession, d);
	}


	@Override
	public int selectListCount(int userNo) {
		return memberDao.selectListCount(sqlSession, userNo);
	}

	@Override
	public ArrayList<Dog> petListView(PageInfo pi, int userNo) {
		return memberDao.petListView(sqlSession, pi, userNo);
	}

	@Override
	public Dog petDetailView(int dno) {
		return memberDao.petDetailView(sqlSession, dno);
	}
	
	@Override
	public int idCheck(String checkId) {
		return memberDao.idCheck(sqlSession, checkId);
	}
}
