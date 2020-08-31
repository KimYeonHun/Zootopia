package com.kh.zootopia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.service.PassEmailService;



@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private PassEmailService sender;

	
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
	
	
// 비밀 번호 찾기 
	@GetMapping("/findpass")
	public String findpw() {

		return "/member/findpass";
}
	
// 아이디 찾기 
	@GetMapping("/findid")
	public String findid() {
		
		return "/member/findid";
	}
	
	@PostMapping("/findid")
	public String findid(
			@RequestParam String member_name,
			@RequestParam String email,
			Model model
			) {
		
		// 1. 파라미터 값으로 이름과 이메일을 받는다 
		String info=memberDao.searchid(member_name, email);
//		System.out.println(info);
		if(info!=null) {
		model.addAttribute("member_id", info);
		// 해당 정보가 있으면 저장하고, 인증번호 랜덤 생성 후 , 메일 발송
		
		
		}

			
	
		return "/member/findid";
	}

	
}
