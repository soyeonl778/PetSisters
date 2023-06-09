package com.kh.petsisters.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public Member foundId(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.foundId", m);
	}
	
	public Member foundPwd(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.selectOne("memberMapper.foundPwd", m);
	}
	
	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, String userId) {
		
		return sqlSession.update("memberMapper.deleteMember", userId);
	}
	
	public int petInsert(SqlSessionTemplate sqlSession, Dog d) {
		
		return sqlSession.insert("memberMapper.petInsert", d);
	}
	
	public int petUpdate(SqlSessionTemplate sqlSession, Dog d) {
		
		return sqlSession.update("memberMapper.petUpdate", d);
	}
	
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	

}
