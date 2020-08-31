package com.kh.zootopia.controller;

import java.security.Provider.Service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.service.MemberService;

@Controller
@RequestMapping("member")
public class MypageController{

//	private static final Logger logger = LoggerFactory.getLogger(MypageController.class);
//	
//	@Inject
//	MemberService memberService;
	@Autowired
	MemberDao memberDao;
	
@GetMapping("/mypage")
public String login() {
	return "member/mypage";
}

@RequestMapping(value="/updateview", method=RequestMethod.GET)
public String update() {
	return"member/updateview";
}
//@GetMapping("/updateview")
//public String update

@RequestMapping(value="/memberupdate", method=RequestMethod.POST)
public String update(MemberDto memberDto,HttpSession session) {
	
//	memberService.update(memberDto);
	memberDao.update(memberDto);
	
	session.invalidate();
	
	return"redirect:/";
}


}