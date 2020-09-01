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
import com.kh.zootopia.service.CertService;
import com.kh.zootopia.service.PassEmailService;



@Controller
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private MemberDao memberDao;
	@Autowired
	private PassEmailService sender;
	@Autowired
	private CertService certService;

	
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
	
		String secret=certService.CreateCert(info);
		//인증번호 랜덤 생성 후 ,
		
		sender.sendSimpleMessage(email, "[zootopia]아이디 찾기 인증번호 안내입니다", 
				"인증번호: "+secret);
		//메일 발송
		model.addAttribute("member_id", info);
		// 회원 아이디 저장  
		}

			
	
		return "/member/findid";
	}

	
}
