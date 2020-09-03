package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;



@Controller
@RequestMapping("/member")
public class MemberController {
	

	@Autowired
	private MemberDao memberDao;
	
	
	
	//////////////////////////////
	//////로그인////////////////////
	/////////////////////////////
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
	
	
	/////////////////////////////
	/////////회원가입///////////////
	/////////////////////////////
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	@PostMapping("/join")
	public String join(@ModelAttribute MemberDto memberDto) {
		memberDto.setAuth("회원");
		System.out.println(memberDto.toString());
		boolean result = memberDao.join(memberDto);
		if(result) {
			return "redirect:join_finish";
		}
		else {
			return "redirect:join?error";
		}
	}

}
