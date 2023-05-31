package com.kh.petsisters.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.petsisters.reservation.model.service.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	private ReservationService reservationService;

}
