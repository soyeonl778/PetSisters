package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.reservation.model.vo.Review;

public interface PetSitterService {
	
	// 펫시터 프로필 상세조회
	PetSitter selectPetSitter(int pno);
	
	// 펫시터 프로필 수정
	int updatePetSitter(PetSitter p);

	// 펫시터 프로필 리스트 조회 (페이징 처리)
	// 게시글 총 갯수 조회
	int selectListCount();
	
	// 펫시터 프로필 리스트 조회
	ArrayList<PetSitter> selectList(PageInfo pi);
	
	// 펫시터 상세페이지 후기 리스트 조회
	ArrayList<Review> selectReviewList(int pno);
	
	// 펫시터 반려동물 조회
	ArrayList<Dog> selectDogList(int pno);
}
