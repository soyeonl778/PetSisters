package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.petsitter.model.vo.PetSitter;

public interface PetSitterService {
	
	// 펫시터 프로필 상세조회
	PetSitter selectPetSitter(int pNo);
	
	// 펫시터 프로필 수정
	int updatePetSitter(PetSitter p);

	// 펫시터 프로필 리스트 조회 (페이징 처리)
	// 게시글 총 갯수 조회
	int selectListCount();
	
	// 펫시터 프로필 리스트 조회
	ArrayList<PetSitter> selectList(PageInfo pi);
}
