package com.kh.petsisters.petsitter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.petsisters.petsitter.model.vo.PetSitter;

public class PetSitterDao {

	public PetSitter selectPetSitter(SqlSessionTemplate sqlSession, int pNo) {
		
		return sqlSession.selectOne("petSitterMapper.selectPetSitter", pNo);
	}
}
