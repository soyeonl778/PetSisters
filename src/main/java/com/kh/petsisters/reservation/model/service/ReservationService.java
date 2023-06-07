package com.kh.petsisters.reservation.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.reservation.model.vo.Reservation;
import com.kh.petsisters.reservation.model.vo.Review;

public interface ReservationService {
	
	// 리스트 총 갯수 조회
	public abstract int selectListCount(int userNo);
	
	// 내 예약 펫시터 리스트 조회 (select)
	ArrayList<Reservation> selectPetsitterList(PageInfo pi, int userNo, Integer checkReview);

	// 후기 작성시 날짜 조회용
	Reservation selectReview(int writeReviewNo);

	// 후기 작성
	int insertReview(Review r);

	// 후기 수정시 기본정보 조회용
	Review updateReview(int rNo);

	// 후기 수정 업데이트
	int updateForm(Review r);

	// 예약 리스트 삭제용
	int deleteReservation(int rNo);

	// 예약 상세페이지 조회
	Reservation reservationDetail(int rNo);

	
	
	// ======== 펫시터 관련 =========
	// 펫시터 예약 화면 조회용
	ArrayList<Reservation> petsitterRevList(int userNo, PageInfo pi);

	// 펫시터 예약 화면 갯수 (페이지네이션)
	int selectListPetsitterRev(int userNo);

	// 펫시터 예약 화면 검색어 입력
	ArrayList<Reservation> searchKeyword(String keyword);

	

}
