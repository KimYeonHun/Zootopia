package com.kh.zootopia.controller;

import java.util.List;


import javax.servlet.http.HttpSession;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MypageDao;
import com.kh.zootopia.service.MypageService;

@Controller
@RequestMapping("/test")
public class TestController {
	
	
	@Autowired
	private MypageDao testDao;
	@Autowired
	private MypageService service;
	
	
	@GetMapping("/home")
	public String home() {
		return"test/home";
	}
	
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "test/memberUpdateView";
	}

	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberDto memberDto, HttpSession session) throws Exception{
		
		service.memberUpdate(memberDto);
		
		
		return "redirect:/test/home";
	}
	
	
//	@RequestMapping(value="/passcheck", method = RequestMethod.GET)
//	public String passcheck() throws Exception{
//		//1페이지를 보여준다
//		return "test/passcheck";
//	}
//	@RequestMapping(value="/passcheck", method = RequestMethod.POST)
//		public String passcheck(@ModelAttribute MemberDto memberDto) {
//			boolean result = testDao.passcheck(memberDto);
//			if(result) {
//				return"redirect:/test/memberUpdateView";
//			}		  
//			else {
//				return "redirect:passcheck?error";
//			}
//	}
//////////성공///////////////////////
}
