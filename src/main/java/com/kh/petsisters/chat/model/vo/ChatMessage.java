package com.kh.petsisters.chat.model.vo;

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

	private int roomNo;
	private int messageNo;
	private int userNo;
	private String message;
	private String name;
	private int unReadCount;	// 안 읽은 메세지 수
	private int sessionCount;	// 현재 세션 수
	
}
