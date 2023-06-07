package com.kh.petsisters.payment.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaymentDao {

	@Autowired
	private SqlSession sqlSession;
	
}
