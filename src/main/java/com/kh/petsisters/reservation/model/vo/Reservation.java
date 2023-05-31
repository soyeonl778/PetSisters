package com.kh.petsisters.reservation.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/**
 * 2023-05-31
 * 조승호
 * @author dkarl
 *
 */
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Reservation {

	private int resNo;  			// 예약번호 	RES_NO	NUMBER		
	private String startDate;		// 시작일시	START_DATE	DATE
	private String endDate;			// 종료일시 	END_DATE	DATE
	private String registerDate;	// 등록일시	REGISTER_DATE	DATE
	private String content;			// 특이사항	CONTENT	VARCHAR2(2000 BYTE)
	private String status;			// 최초예약시,예약취소시 N / 펫시터승인시 Y	STATUS	VARCHAR2(1 BYTE)
	private int userNo;				// 회원번호	USER_NO	NUMBER
	private int refPno;				// 참조펫시터프로필번호  	REF_PNO	NUMBER
	
}
