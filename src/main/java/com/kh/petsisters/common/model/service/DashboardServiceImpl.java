package com.kh.petsisters.common.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.dao.DashboardDao;
import com.kh.petsisters.member.model.vo.Member;
import com.kh.petsisters.member.model.vo.Support;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

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
	public int dashMemberDelete(Member m) {
		return dashboardDao.dashMemberDelete(sqlSession, m);
	}

	@Override
	public ArrayList<PetSitter> dashPetsiterView() {
		return dashboardDao.dashPetsiterView(sqlSession);
	}

	@Override
	public int dashPetsiterDelete(PetSitter p) {
		return dashboardDao.dashPetsiterDelete(sqlSession, p);
	}

	@Override
	public ArrayList<Support> dashSupportView() {
		return dashboardDao.dashSupportView(sqlSession);
	}

	@Override
	public int dashSupportApprove(Support s) {
		return dashboardDao.dashSupportApprove(sqlSession, s);
	}

	@Override
	public int dashInsertPetSitter(Support s) {
		return dashboardDao.dashInsertPetSitter(sqlSession, s);
	}

	@Override
	public int dashSelectPetSitter(Support s) {
		return dashboardDao.dashSelectPetSitter(sqlSession, s);
	}

}
