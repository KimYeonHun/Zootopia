package com.kh.zootopia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class petController {
	@GetMapping("/pet")
	public String page() {
		return "member/pet";
	}
	}