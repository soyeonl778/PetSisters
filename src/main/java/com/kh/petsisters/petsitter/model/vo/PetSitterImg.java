package com.kh.petsisters.petsitter.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class PetSitterImg {
	
	private int fileNo;              //	FILE_NO	NUMBER
	private String originName;       //	ORIGIN_NAME	VARCHAR2(100 BYTE)
	private String changeName;       //	CHANGE_NAME	VARCHAR2(100 BYTE)
	private String filePath;         //	FILE_PATH	VARCHAR2(1000 BYTE)
	private Date createDate;         //	CREATE_DATE	DATE
	private String status;           //	STATUS	VARCHAR2(1 BYTE)
	private int fileLevel;           //	FILE_LEVEL	NUMBER
	private int refPno;              //	REF_PNO	NUMBER
}
