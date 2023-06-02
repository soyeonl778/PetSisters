package com.kh.petsisters.reservation.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class Reservation {

	private int resNo;  			// 예약번호 	RES_NO	NUMBER		
	private Date startDate;		// 시작일시	START_DATE	DATE
	private Date endDate;			// 종료일시 	END_DATE	DATE
	private String registerDate;	// 등록일시	REGISTER_DATE	DATE
	private String content;			// 특이사항	CONTENT	VARCHAR2(2000 BYTE)
	private String status;			// 최초예약시,예약취소시 N / 펫시터승인시 Y	STATUS	VARCHAR2(1 BYTE)
	private int userNo;				// 회원번호	USER_NO	NUMBER
	private int refPno;				// 참조펫시터프로필번호  	REF_PNO	NUMBER
	private String caStatus;		// 자격증 여부 (Y 면 프로펫시터)
	private String ptitle;			// 펫시터 프로필 제목
 	private String pcareList;		// 펫시터 돌봄 환경
	private int pno;				// 펫시터 고유 번호
	private String petFile;			// 펫시터 대표 프로필 사진
	private String address;			// 펫시터 주소
	private String originName;		// 펫시터 원본 대표사진명
	private int reviewCount;		// 리뷰 갯수
	
	// 예약 조회시 필요한 정보
	/*
	 * 1. 예약 기간					<- 예약 테이블 (예약 시작일 - 종료일)
	 * 2. 펫시터 주소				<- 회원 테이블 (회원번호로 펫시터 프로필이랑 엮어서 조회 해야함)
	 * 3. 프로펫시터 여부 (자격증 Y 면)	<- 회원 테이블 (CA_STATUS = 'Y')
	 * 4. 펫시터 타이틀				<- 펫시터프로필 테이블 (펫시터 프로필 제목)
	 * 5. 해시태그					<- 펫시터프로필 테이블 (돌봄 환경)
	 * 6. 펫시터 고유 번호				<- 펫시터프로필 테이블 (고유 번호)
	 * 7. 펫시터 프로필 사진			<- 펫시터 첨부파일테이블 (파일레벨1번 골라와서 대표사진으로)
	 */
	
}
