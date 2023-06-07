package com.kh.petsisters.payment.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class Payment {
	
	private int payNo;
	private String payDate;
	private String payDscpt; // PAY_DESCRIPTION
	private int payPrice;
	private String status;
	private int refResno; // REF_RESNO

}
