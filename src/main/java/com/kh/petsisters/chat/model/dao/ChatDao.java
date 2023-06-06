package com.kh.petsisters.chat.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;

@Repository
public class ChatDao {
	
	@Autowired
    SqlSessionTemplate sqlSession;
	
    public ChatRoom selectChatRoom(int roomNo) {
    	System.out.println(roomNo);
        return sqlSession.selectOne("chatMapper.selectChatRoom", roomNo);
    }
    
    public int insertMessage(ChatMessage chatMessage) {
        return sqlSession.insert("chatMapper.insertMessage", chatMessage);
    }
//    
//    public List<ChatMessage> messageList(String roomId) {
//        return sqlSession.selectList("chatMapper.messageList", roomId);
//    }
// 
//    public int createChat(ChatRoom room) {
//        return sqlSession.insert("chatMapper.createChat", room);
//    }
// 
//    public ChatRoom searchChatRoom(ChatRoom room) {
//        return sqlSession.selectOne("chatMapper.searchChatRoom", room);
//    }
// 
//    public List<ChatRoom> chatRoomList(String userEmail) {
//        return sqlSession.selectList("chatMapper.chatRoomList", userEmail);
//    }
// 
//    public int selectUnReadCount(ChatMessage message) {
//        return sqlSession.selectOne("chatMapper.selectUnReadCount",message);
//    }
// 
//    public int updateCount(ChatMessage message) {
//        return sqlSession.update("chatMapper.updateCount", message);
//    };

}
