package com.kh.zootopia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("petsitter")
public class petsitterMypageController{

@GetMapping("/petsitterpage")
public String login() {
	return "petsitter/petsitterpage";
}
}