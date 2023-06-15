package com.kh.petsisters.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.petsisters.chat.model.service.ChatService;
import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;
import com.kh.petsisters.chat.model.vo.ChatSession;

@Controller
public class ChatController {
	
    @Autowired
    ChatService cService;
    
    @Autowired
    private ChatSession cSession;
	
	@RequestMapping("chatForm.ch")
	public String chatForm() {
		return "/common/chatForm";
	}
	
    @RequestMapping("chatRoomList.do")
    public void createChat(ChatRoom room, ChatMessage message, int userNo, HttpServletResponse response) throws JsonIOException, IOException {
        List<ChatRoom> cList = cService.chatRoomList(userNo);
        
        System.out.println(cList);
        System.out.println(cList.size());
        
        for(int i = 0; i < cList.size(); i++) {
            message.setRoomNo(cList.get(i).getRoomNo());
            message.setUserNo(userNo);
            int count = cService.selectUnReadCount(message);
            cList.get(i).setUnReadCount(count);
        }
        
        response.setContentType("application/json; charset=utf-8");
 
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(cList,response.getWriter());
    }
    
    @RequestMapping("chatSession.do")
    public void chatSession( HttpServletResponse response) throws JsonIOException, IOException{
        
        ArrayList<Integer> chatSessionList = cSession.getLoginUser();
        
        response.setContentType("application/json; charset=utf-8");
 
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(chatSessionList,response.getWriter());
        
        System.out.println(chatSessionList);
    }
	
	
	

}
