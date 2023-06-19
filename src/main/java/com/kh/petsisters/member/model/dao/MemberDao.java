package com.kh.petsisters.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

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
	
	public int selectListCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("memberMapper.selectListCount", userNo);
	}
	
	public ArrayList<Dog> petListView(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.petListView", userNo, rowBounds);
	}
	
	public Dog petDetailView(SqlSessionTemplate sqlSession, int dno) {
		return sqlSession.selectOne("memberMapper.petDetailView", dno);
	}
	
	public int petInsert(SqlSessionTemplate sqlSession, Dog d) {
		
		return sqlSession.insert("memberMapper.petInsert", d);
	}
	
	public int petUpdate(SqlSessionTemplate sqlSession, Dog d) {
		
		return sqlSession.update("memberMapper.petUpdate", d);
	}
	
	public int petDelete(SqlSessionTemplate sqlSession, int dogNo) {
		return sqlSession.update("memberMapper.petDelete", dogNo);
	}
	
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	
	public int selectLikeListCount(SqlSessionTemplate sqlSession, int userNo) {
		
		return sqlSession.selectOne("memberMapper.selectLikeListCount", userNo);
	}
	
	public ArrayList<PetSitter> selectLikeList(SqlSessionTemplate sqlSession, PageInfo pi, int userNo) {
		
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		int limit = pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectLikeList", userNo, rowBounds);
	}
	
	
	

}
