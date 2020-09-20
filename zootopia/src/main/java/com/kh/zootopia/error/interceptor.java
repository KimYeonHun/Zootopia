package com.kh.zootopia.error;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.kh.zootopia.entity.MemberDto;

public class interceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("***********");
		System.out.println("인터셉터 실행");
		System.out.println(" *************");
		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("userinfo");
		
		if(obj == null) {
			// 로그인이 안되어있으면
			response.sendRedirect("http://localhost:8080/zootopia/member/login");
			return false;
		}
		
		
		return true;
		
	
	}

}
