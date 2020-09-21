package com.kh.zootopia.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.service.MypageService;
import com.kh.zootopia.entity.grapeVO;

@Controller
@RequestMapping("/member")
public class MypageController{

@Autowired
private MemberDao mdao;
@Autowired
private MypageService service;

@GetMapping("/mypage")
public String page() {
	return "member/mypage";
}


@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
public String registerUpdateView() throws Exception{
	
	return "member/memberUpdateView";
}


@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
public String registerUpdate(MemberDto memberDto, HttpSession session) throws Exception{
	
	service.memberUpdate(memberDto);
	
	session.setAttribute("userinfo", memberDto);
	return "redirect:/member/mypage";
}





@RequestMapping(value="/passcheck", method = RequestMethod.GET)
public String passcheck() throws Exception{
	//1페이지를 보여준다
	return "member/passcheck";
}
@RequestMapping(value="/passcheck", method = RequestMethod.POST)
	public String passcheck(@ModelAttribute MemberDto memberDto) {
		boolean result = mdao.passcheck(memberDto);
		if(result) {
			return"redirect:/member/memberUpdateView";
		}		  
		else {
			return "redirect:passcheck?error";
		}
}
//////////성공///////////////////////

@GetMapping("/petsitterpage")

public String petsitterpage() {
	return "member/petsitterpage";
}
@PostMapping("/petsitterpage")
public List<grapeVO> grpae(){
	List<grapeVO>list = new ArrayList<>();
	list.add(grapeVO.builder().month("6월").count(10).build());
	list.add(grapeVO.builder().month("7월").count(14).build());
	list.add(grapeVO.builder().month("8월").count(10).build());
	list.add(grapeVO.builder().month("9월").count(15).build());
return list;
}
}


