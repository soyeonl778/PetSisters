package com.kh.petsisters.common.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Repository
public class DashboardDao {
	
	public ArrayList<Member> dashMemberView(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dashboardMapper.dashMemberView", null);
	}
	
	public int dashMemberDelete(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("dashboardMapper.dashMemberDelete", userNo);
	}
	
	public ArrayList<PetSitter> dashPetsiterView(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dashboardMapper.dashPetsiterView", null);
	}
	
	public int dashPetsiterDelete(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.update("dashboardMapper.dashPetsiterDelete", userNo);
	}
	
	public ArrayList<Support> dashSupportView(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dashboardMapper.dashSupportView", null);
	}
	
}
