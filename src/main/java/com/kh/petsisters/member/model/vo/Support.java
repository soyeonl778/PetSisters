package com.kh.petsisters.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Support {
	
	private int supportNo;					//	SUPPORT_NO	NUMBER
	private String address;					//	ADDRESS	VARCHAR2(150 BYTE)
	private int pyeong;						//	PYEONG	 NUMBER
	private String smoke;					//	SMOKE	VARCHAR2(1 BYTE)
	private String myExperience;			//	MY_EXPERIENCE	VARCHAR2(1 BYTE)
	private String otherExperience;		//	OTHER_EXPERIENCE	VARCHAR2(2000 BYTE)
	private String etcExperience;			//	ETC_EXPERIENCE	VARCHAR2(2000 BYTE)
	private String petsitterExperience;	//	PETSITTER_EXPERIENCE	VARCHAR2(1 BYTE)
	private int userNo;						//	USER_NO	NUMBER
	
}
