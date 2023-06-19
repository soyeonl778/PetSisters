package com.kh.petsisters.common.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.member.model.vo.Member;

@Repository
public class DashboardDao {
	
	public ArrayList<Member> dashMemberView(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("dashboardMapper.dashMemberView", null);
	}
	
	public int dashMemberDelete(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.insert("dashboardMapper.dashMemberDelete", userNo);
	}
	

}
