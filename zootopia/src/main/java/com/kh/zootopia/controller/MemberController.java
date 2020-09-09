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
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kh.zootopia.entity.CertDto;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.service.CertService;
import com.kh.zootopia.service.PassEmailService;

@Controller
@RequestMapping("/member")

public class MemberController {

	@Autowired
	private MemberDao memberDao;

	
	
	
	//////////////////////////////
	//////로그인////////////////////
	/////////////////////////////

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
			@ModelAttribute MemberDto memberDto,
			HttpSession session, Model model) {
		if(memberDao.login(memberDto)) {
			MemberDto find = memberDao.get(memberDto.getMember_id());
			session.setAttribute("userinfo", find);
			
			return "refirect:/";	
		}
		else {
			return "redirect:login?error";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
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


// 비밀 번호 찾기 
	@GetMapping("/findpass")
	public String findpw() {

		return "/member/findpass";
	}

	////////////////////////////////////////////
// 아이디 찾기 
	@GetMapping("/findid")
	public String findid() {
		return "/member/findid";
	}

	@PostMapping("/findid")
	public String findid(
			@RequestParam String member_name, 
			@RequestParam String email, 
			HttpSession session, 
			Model model
	) {
		// 1. 파라미터 값으로 이름과 이메일을 받는다
		String info = memberDao.searchid(member_name, email);
//		System.out.println(info);
		if (info != null) {// 여기가 찾는 회원이 있을때니까 아이디가 있는곳이고
			String secret = certService.CreateCert(info);
			// 인증번호 랜덤 생성 후 ,
			sender.sendSimpleMessage(email, "[zootopia]아이디 찾기 인증번호 안내입니다", "인증번호: " + secret);
			// 메일 발송
			session.setAttribute("member_id", info);
			return "redirect:check";
		} else {
		
			return "redirect:findid?error";
		}
	}

// 인증번호 확인
	@GetMapping("/check")
	public String check() {
		return "cert/certnuminput";
	}

	@PostMapping("/check")
	public String check(@RequestParam String secret, HttpSession session, Model model) {
		String member_id = (String) session.getAttribute("member_id");
		boolean result = memberDao.validate(CertDto.builder().member_id(member_id).secret(secret).build());
		// 회원 아이디 저장
		if (result == true) {
			session.setAttribute("member_id", member_id);
			return "redirect:result_id";
		} else {
			return "redirect:check?error";
		}
	}
	// 아이디 result
	@GetMapping("/result_id")
	public String result_id(Model model, HttpSession session) {
		String member_id = (String) session.getAttribute("member_id");
		model.addAttribute("member_id", member_id);
		return "cert/certid_result";
	}

	/////////////////////////////////////////////////

}
