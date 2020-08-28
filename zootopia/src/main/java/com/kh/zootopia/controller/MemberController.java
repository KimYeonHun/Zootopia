package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.zootopia.repository.MemberDao;



@Controller
@RequestMapping("/member")
public class MemberController {
	

	@Autowired
	private MemberDao memberDao;
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(
			@RequestParam String MEMBER_ID,
			@RequestParam String MEMBER_PW,
			HttpSession session
			) {
		session.setAttribute("userinfo", MEMBER_ID);
		return "redirect:/";
	}

}
