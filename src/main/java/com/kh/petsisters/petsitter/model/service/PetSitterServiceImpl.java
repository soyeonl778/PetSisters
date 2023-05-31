package com.kh.petsisters.petsitter.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.petsitter.model.dao.PetSitterDao;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Service
public class PetSitterServiceImpl implements  PetSitterService {

	@Autowired
	private PetSitterDao petSitterDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public PetSitter selectPetSitter(int pNo) {
		
		return petSitterDao.selectPetSitter(sqlSession, pNo);
	}

	@Override
	public int updatePetSitter(PetSitter p) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

}
