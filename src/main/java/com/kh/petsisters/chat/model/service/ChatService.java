package com.kh.petsisters.chat.model.service;

import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;

public interface ChatService {
	
	ChatRoom selectChatRoom(int roomNo);
	
	int insertMessage(ChatMessage chatMessage);

}
