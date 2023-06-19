package com.kh.petsisters.common.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.dao.DashboardDao;
import com.kh.petsisters.member.model.vo.Member;

@Service
public class DashboardServiceImpl implements DashboardService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private DashboardDao dashboardDao;

	@Override
	public ArrayList<Member> dashMemberView() {
		
		return dashboardDao.dashMemberView(sqlSession);
	}

	@Override
	public int dashMemberDelete(int userNo) {
		return dashboardDao.dashMemberDelete(sqlSession, userNo);
	}

}
