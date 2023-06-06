package com.kh.petsisters.chat.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.chat.model.dao.ChatDao;
import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public ChatRoom selectChatRoom(int roomNo) {
		
		// 메세지에 채팅방정보 담길때 기능 살릴 예정
		// return chatDao.selectChatRoom(roomNo);
		
		ChatRoom cr = new ChatRoom();
		cr.setRoomNo(1);
		return cr;
	}

	@Override
	public int insertMessage(ChatMessage chatMessage) {
		return chatDao.insertMessage(chatMessage);
	}
	


}
