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

		
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("userinfo");
		
		if(obj == null) {
			
			response.sendRedirect(request.getContextPath()+"/member/login");
			return false;
		}
		
		
		return true;
		
	
	}

}
