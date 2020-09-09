package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetSitterDto;

@Controller
@RequestMapping("/petsitter")
public class PetSitterController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/petsitter_join")
	public String petsitter_join(
			@RequestParam String member_id,
			HttpSession session
			){
		MemberDto mdto = sqlSession.selectOne("member.getList",member_id);
		session.setAttribute("userinfo", mdto);
		
		return "petsitter/petsitter_join";
	}
	
	@PostMapping("/petsitter_join")
	public String petsitter_join(
			HttpSession session,
			@ModelAttribute PetSitterDto petSitterDto,
			Model model
			) {
		Object member = session.getAttribute("userinfo");
		model.addAttribute("memberinfo", member);
		sqlSession.insert("petsitter.petsitter_join",petSitterDto);
		
		return  "petsitter/join_result";
	}
	


}
