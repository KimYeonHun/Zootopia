package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;

@Controller
@RequestMapping("/member")
public class MypageController{

@Autowired
private MemberDao mdao;

@GetMapping("/mypage")
public String page() {
	return "member/mypage";
}


@GetMapping("/mypage2")
public String page2() {
	return "member/mypage2";
}



}