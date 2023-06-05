package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.petsitter.model.dao.PetSitterDao;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Service
public class PetSitterServiceImpl implements  PetSitterService {

	@Autowired
	private PetSitterDao petSitterDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PetSitter selectPetSitter(int pno) {
		
		return petSitterDao.selectPetSitter(sqlSession, pno);
	}

	@Override
	public int updatePetSitter(PetSitter p) {
		
		return petSitterDao.updatePetSitter(sqlSession, p);
	}
	
	@Override
	public int selectListCount() {
		
		return petSitterDao.selectListCount(sqlSession);
	}
	
	@Override
	public ArrayList<PetSitter> selectList(PageInfo pi) {
		
		return petSitterDao.selectList(sqlSession, pi);
	}


	
	

}
