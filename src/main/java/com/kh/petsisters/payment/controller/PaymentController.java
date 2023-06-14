package com.kh.petsisters.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.petsisters.payment.model.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	
	// 결제화면 띄우기
	@RequestMapping("/pay")
	public String enrollForm() {
		
		return "reservation/reservationEnrollForm";
	}
	
	
}