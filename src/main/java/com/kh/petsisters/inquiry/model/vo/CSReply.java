package com.kh.petsisters.inquiry.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Setter
@Getter
@ToString
public class CSReply {
	
	private int repIno;
	private String repIcontent;
	private String createDate;
	private String status;
	private int userNo;
	private int refIno;

}