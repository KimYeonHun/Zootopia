package com.kh.zootopia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;

@Controller
@RequestMapping("/test")
public class TestController {
	
	@Autowired
	private MemberDao mdao;
	
	//메인페이지
	@GetMapping("/home")
	public String main() {
		return"/test/home";
	}
	//로그인페이지
	@RequestMapping("/login")
	public String login() {
		return"/test/login";
	}
	//pw확인페이지
	@RequestMapping("/pw")
	public String checkpw() {
		return"/test/pw";
	}
	//내정보페이지
	@RequestMapping("/myinfo")
	public String mypage() {
		return"/test/myinfo";
	}
	//회원가입페이지
	@RequestMapping("/join")
	public String join(@ModelAttribute MemberDto memberDto) {
//		mdao.daojoin(memberDto);
		return"/test/join";
	}
	//내정보 수정
	@RequestMapping("/update")
	public String update() {
		return"/test/update";
	}
}
