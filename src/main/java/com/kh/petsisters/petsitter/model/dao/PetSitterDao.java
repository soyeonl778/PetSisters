package com.kh.petsisters.petsitter.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.petsitter.model.vo.PetSitter;

@Repository
public class PetSitterDao {

	public PetSitter selectPetSitter(SqlSessionTemplate sqlSession, int pNo) {
		
		return sqlSession.selectOne("petSitterMapper.selectPetSitter", pNo);
	}
}
