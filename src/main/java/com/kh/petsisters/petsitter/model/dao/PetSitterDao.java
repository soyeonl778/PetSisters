package com.kh.petsisters.petsitter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Repository
public class PetSitterDao {

	public PetSitter selectPetSitter(SqlSessionTemplate sqlSession, int pno) {
		
		return sqlSession.selectOne("petSitterMapper.selectPetSitter", pno);
	}
	
	public int updatePetSitter(SqlSessionTemplate sqlSession, PetSitter p) {
		
		return sqlSession.update("petSitterMapper.updatePetSitter", p);
	}
}
