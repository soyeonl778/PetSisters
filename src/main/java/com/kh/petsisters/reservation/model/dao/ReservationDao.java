package com.kh.petsisters.reservation.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.common.model.vo.PageInfo;
import com.kh.petsisters.reservation.model.vo.Reservation;

@Repository
public class ReservationDao {

	public int selectListCount(SqlSessionTemplate sqlSession, int userNo) {
		return sqlSession.selectOne("reservationMapper.selectListCount", userNo);
	}

	public ArrayList<Reservation> selectPetsitterList(SqlSessionTemplate sqlSession, PageInfo pi
			, int userNo, Integer checkReview) {
		
		Map<String, Object> parameters = new HashMap<>();
        parameters.put("userNo", userNo);
        parameters.put("checkReview", checkReview);
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();	// 건너뛸 숫자
		int limit = pi.getBoardLimit();		// 조회할 갯수
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("reservationMapper.selectPetsitterList", parameters, rowBounds);
	}



}
