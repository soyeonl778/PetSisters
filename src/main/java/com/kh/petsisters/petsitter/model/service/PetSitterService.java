package com.kh.petsisters.petsitter.model.service;

import com.kh.petsisters.petsitter.model.vo.PetSitter;

public interface PetSitterService {
	
	// 펫시터 프로필 상세조회
	PetSitter selectPetSitter(int pNo);
	
	// 펫시터 프로필 수정
	int updatePetSitter(PetSitter p);

}
