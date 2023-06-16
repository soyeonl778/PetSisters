package com.kh.petsisters.chat.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.petsisters.chat.model.service.ChatService;
import com.kh.petsisters.chat.model.vo.ChatMessage;
import com.kh.petsisters.chat.model.vo.ChatRoom;
import com.kh.petsisters.chat.model.vo.ChatSession;
import com.kh.petsisters.member.model.vo.Member;

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
	
	/*
	 * 세션에 로그인되어 있는 유저 조회
	 */
    @RequestMapping("chatSession.do")
    public void chatSession( HttpServletResponse response) throws JsonIOException, IOException{
        
        ArrayList<Integer> chatSessionList = cSession.getLoginUser();
        
        response.setContentType("application/json; charset=utf-8");
 
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(chatSessionList,response.getWriter());
    }
	
    /*
     * 채팅 방 목록 불러오기
     */
    @RequestMapping("chatRoomList.do")
    public void createChat(ChatRoom room, ChatMessage message, int userNo, HttpServletResponse response) throws JsonIOException, IOException {
    	
        List<ChatRoom> cList = cService.chatRoomList(userNo);
        
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
    
	/*
	 * 해당 채팅방의 채팅 메세지 불러오기
	 */
    @RequestMapping(value="{roomNo}.do")
    public void messageList(@PathVariable int roomNo, int userNo, Model model, HttpServletResponse response) throws JsonIOException, IOException {
        
        List<ChatMessage> mList = cService.messageList(roomNo);
        response.setContentType("application/json; charset=utf-8");
        System.out.println(mList);
 
        // 안읽은 메세지의 숫자 0으로 바뀌기
        ChatMessage message = new ChatMessage();
        message.setUserNo(userNo);
        message.setRoomNo(roomNo);
        // cService.updateCount(message);
        
        Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
        gson.toJson(mList,response.getWriter());
    }
    
    /**
     * 채팅 방이 없을 때 생성
     */
    @RequestMapping("createChat.do")
    public String createChat(ChatRoom room,
    								HttpSession session, int masterNo) {
    	
        Member user = (Member)session.getAttribute("loginUser");
        Member master = cService.getMemberDetail(masterNo);
        
        room.setUserNo(user.getUserNo());
        room.setUserNickname(user.getUserNickname());
        room.setUserPic(user.getFilePath());
        room.setUserPet(user.getSitterStatus());
        room.setUserPro(user.getCaStatus());
        
        
        room.setMasterNo(master.getUserNo());
        room.setMasterNickname(master.getUserNickname());
        room.setMasterPic(master.getFilePath());
        room.setMasterPet(master.getSitterStatus());
        room.setMasterPro(master.getCaStatus());


 
        ChatRoom exist  = cService.searchChatRoom(room);
        
        // DB에 방이 없을 때
        if(exist == null) {
            System.out.println("방이 없다!!");
            int result = cService.createChat(room);
            if(result == 1) {
                System.out.println("방 만들었다!!");
                return "redirect:/chatForm.ch";
            }else {
                return "fail";
            }
        }
        // DB에 방이 있을 때
        else{
            System.out.println("방이 있다!!");
            return "redirect:/chatForm.ch";
        }
    }
    
    
	

}
