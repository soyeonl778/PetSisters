package com.kh.petsisters.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.petsisters.member.model.vo.Member;

public class AdminInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request
						   , HttpServletResponse response
						   , Object handler) throws Exception {
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("loginUser") != null) {
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			
			if(loginUser.getUserName().equals("관리자")) {
			
				return true;
				
			} else {
				
				session.setAttribute("alertMsg", "관리자만 접근 가능한 페이지입니다.");
				response.sendRedirect(request.getContextPath() + "/");
				
				return false;
				
			}
			

		}
		
		session.setAttribute("alertMsg", "로그인 후 이용 가능한 서비스입니다.");
		response.sendRedirect(request.getContextPath() + "/");
		return false;
	
	}
						 

}
