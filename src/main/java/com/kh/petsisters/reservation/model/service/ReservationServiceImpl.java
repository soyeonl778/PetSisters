package com.kh.petsisters.reservation.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.reservation.model.dao.ReservationDao;
import com.kh.petsisters.reservation.model.vo.Reservation;
import com.kh.petsisters.reservation.model.vo.Review;

@Service
public class ReservationServiceImpl implements ReservationService{
	
	@Autowired
	private ReservationDao reservationDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount(int userNo) {
		return reservationDao.selectListCount(sqlSession, userNo);
	}

	@Override
	public ArrayList<Reservation> selectPetsitterList(PageInfo pi, int userNo, Integer checkReview) {
		return reservationDao.selectPetsitterList(sqlSession, pi, userNo, checkReview);
	}

	@Override
	public Reservation selectReview(int writeReviewNo) {
		return reservationDao.selectReview(sqlSession, writeReviewNo);
	}

	@Override
	public int insertReview(Review r) {
		return reservationDao.insertReview(sqlSession, r);
	}


}
