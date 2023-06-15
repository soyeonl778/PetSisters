package com.kh.petsisters.payment.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.payment.model.vo.Payment;

@Repository
public class PaymentDao {

	@Autowired
	private SqlSession sqlSession;

	public int processPayment(SqlSessionTemplate sqlSession, Payment p) {
		return sqlSession.insert("paymentMapper.processPayment", p);
    }
	
}
