package com.kh.petsisters.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.petsisters.payment.model.service.PaymentService;
import com.kh.petsisters.payment.model.vo.Payment;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	// 결제화면 띄우기
	@RequestMapping("/pay")
	public String enrollForm() {
		
		return "reservation/reservationEnrollForm";
	}
	
	// 결제완료화면 띄우기
	@RequestMapping("/paySuccess")
	public String paySuccess() {
		
		return "reservation/reservationSuccess";
	}
	
	@PostMapping("/savePayment")
    @ResponseBody
    public String savePayment(@RequestBody Payment p) {
        paymentService.processPayment(p);
        return "결제 완료";
    }
		
}