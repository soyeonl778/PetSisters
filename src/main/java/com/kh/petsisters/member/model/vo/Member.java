package com.kh.petsisters.member.model.vo;

import java.sql.Date;

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
public class Member {
	
	private int userNo;
	private String userId;	
	private String userPwd;		
	private String userName;
	private String userSsn;
	private String userNickname;
	private String phone;
	private String email;		
	private String address;		
	private String gender;	
	private String sitterStatus;			
	private Date caDate;
	private String caStatus;
	private String status;
	private String filePath;
	private Date enrollDate;
	
	
}
