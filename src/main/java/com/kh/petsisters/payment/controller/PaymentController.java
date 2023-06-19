package com.kh.petsisters.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.petsisters.payment.model.service.PaymentService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	// 결제화면 띄우기
	@RequestMapping("pay")
	public String enrollForm(String startRevDate, String endRevDate,
			String reqMsg, int totalPays, int userNo,
			int petsitterNo, Model model) {

		System.out.println(startRevDate);
		System.out.println(endRevDate);
		System.out.println(reqMsg);
		System.out.println(totalPays);
		System.out.println(userNo);
		System.out.println(petsitterNo);
		
		int result = paymentService.insertRevInfo(startRevDate, endRevDate,
				reqMsg, totalPays, userNo, petsitterNo);
		
		if(result > 0) {
			
			int revNo = paymentService.selectCurrval(userNo, petsitterNo);
			
			System.out.println(revNo);
		
			model.addAttribute("startRevDate", startRevDate);
			model.addAttribute("endRevDate", endRevDate);
			model.addAttribute("reqMsg", reqMsg);
			model.addAttribute("totalPays", totalPays);
			model.addAttribute("userNo", userNo);
			model.addAttribute("petsitterNo", petsitterNo);
			model.addAttribute("revNo", revNo);
		
			return "reservation/reservationEnrollForm";
		} else {
			return null;
		}
		
	}
	
	
	
	
	
	
	@ResponseBody
	@RequestMapping(value="insertPay", produces = "application/json; charset=UTF-8")
	public String insertPay(String payDesc, int payPrice, int resNo) {
		
		System.out.println(payDesc);
		System.out.println(payPrice);
		System.out.println(resNo);
		
		int result = paymentService.insertPay(payDesc, payPrice, resNo);
		
		System.out.println(result);
		
		if(result > 0) {
			new Gson().toJson(result);
		}
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 결제완료화면 띄우기
	@RequestMapping("paySuccess")
	public String paySuccess() {
		
		return "reservation/reservationSuccess";
	}
	
}