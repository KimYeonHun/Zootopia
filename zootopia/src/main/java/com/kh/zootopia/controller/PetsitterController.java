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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;

import com.kh.zootopia.entity.grapeVO;

@Controller
@RequestMapping("/member")
public class PetsitterController{

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


