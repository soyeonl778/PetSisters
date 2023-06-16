package com.kh.petsisters.chat.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.chat.model.dao.ChatDao;
import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;
import com.kh.petsisters.member.model.vo.Member;

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

	@Override
	public List<ChatRoom> chatRoomList(int userNo) {
		return chatDao.chatRoomList(userNo);
	}

	@Override
	public int selectUnReadCount(ChatMessage message) {
		return chatDao.selectUnReadCount(message);
	}

	@Override
	public List<ChatMessage> messageList(int roomNo) {
		return chatDao.messageList(roomNo);
	}

	@Override
	public Member getMemberDetail(int userNo) {
		return chatDao.getMemberDetail(userNo);
	}

	@Override
	public ChatRoom searchChatRoom(ChatRoom room) {
		return chatDao.searchChatRoom(room);
	}

	@Override
	public int createChat(ChatRoom room) {
		return chatDao.createChat(room);
	}


}
