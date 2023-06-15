package com.kh.petsisters.chat.model.vo;

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
public class ChatMessage {

	private int messageNo;
	private String message;
	private String createDate;
	private int userNo;
	private String userNickname;
	private int roomNo;
	private int unReadCount;	// 안 읽은 메세지 수
	private int sessionCount;	// 현재 세션 수
	
}
