package com.kh.petsisters.chat.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.petsisters.chat.model.dao.ChatDao;
import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Autowired
	private ChatDao chatDao;

	@Override
	public ChatRoom selectChatRoom(int roomNo) {
		
		ChatRoom cr = new ChatRoom();
		cr.setRoomNo(1);
		
		return cr;
	}

	@Override
	public int insertMessage(ChatMessage chatMessage) {
		return chatDao.insertMessage(sqlSession, chatMessage);
	}
	


}
