package com.kh.petsisters.reservation.model.service;

import java.util.ArrayList;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.reservation.model.vo.Reservation;

public interface ReservationService {
	
	// 리스트 총 갯수 조회
	public abstract int selectListCount(int userNo);
	
	// 내 예약 펫시터 리스트 조회 (select)
	ArrayList<Reservation> selectPetsitterList(PageInfo pi, int userNo);
	

}
