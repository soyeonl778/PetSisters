package com.kh.petsisters.payment.model.service;

import com.kh.petsisters.payment.model.vo.Payment;

public interface PaymentService {

	int processPayment(Payment p);

	int insertPay(String payDesc, int payPrice, int resNo);

	int insertRevInfo(String startRevDate, String endRevDate, String reqMsg, int totalPays, int userNo,
			int petsitterNo);

	int selectCurrval(int userNo, int petsitterNo);

}
