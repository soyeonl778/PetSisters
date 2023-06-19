package com.kh.petsisters.petsitter.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.member.model.vo.Dog;
import com.kh.petsisters.petsitter.model.vo.ImpossibleDate;
import com.kh.petsisters.petsitter.model.vo.PetSitter;
import com.kh.petsisters.petsitter.model.vo.PetSitterImg;
import com.kh.petsisters.petsitter.model.vo.PetSitterLike;
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
	ArrayList<PetSitter> selectList(PageInfo pi, PetSitter p);
	
	// 펫시터 상세페이지 후기 리스트 조회
	ArrayList<Review> selectReviewList(int pno);
	
	// 펫시터 반려동물 조회
	ArrayList<Dog> selectDogList(int pno);
	
	// 펫시터 답글 작성, 수정
	int updateComment(Review r);
	
	// 펫시터 답글 삭제
	int deleteComment(Review r);
	
	// 펫시터 프로필 이미지 등록
	int insertPetSitterImg(ArrayList<PetSitterImg> newList);
	
	// 펫시터 프로필 이미지 조회
	ArrayList<PetSitterImg> selectPetSitterImg(int pno);
	
	// 펫시터 프로필 이미지 삭제
	int deletePetSitterImg(ArrayList<Integer> deleteList);
	
	// 회원의 펫시터 찜 체크 여부 조회
	int selectLikeCheck(PetSitterLike psLike);
	
	// 펫시터 찜 추가 요청
	int insertLike(PetSitterLike psLike);
	
	// 펫시터 찜 삭제 요청
	int deleteLike(PetSitterLike psLike);
	
	// 펫시터 찜 갯수 조회
	int selectLikeCount(int refPno);
	
	// 펫시터 예약 불가능일 등록 요청
	int insertImpoDate(ArrayList<ImpossibleDate> newDateList);
	
	// 펫시터 예약 불가능일 조회
	ArrayList<ImpossibleDate> selectImpoDate(int pno);
	
	// 펫시터 예약 불가능일 삭제
	int deleteImpoDate(ArrayList<ImpossibleDate> newDateList);
}





