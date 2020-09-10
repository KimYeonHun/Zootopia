package com.kh.zootopia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;

@Controller
@RequestMapping("/member")
public class petController {
	@GetMapping("/pet")
	public String page() {
		return "member/pet";
	}
	
	@GetMapping("/petResult")
	public String join() {
		return "member/petResult";
	}
	@PostMapping("/petResult")
	public String join(@ModelAttribute PetDto PetDto) {
		return "member/petResult";
	}
}