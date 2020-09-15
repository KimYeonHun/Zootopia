package com.kh.zootopia.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.service.FindPasswordService;

@Controller
@RequestMapping("/find")
public class FindPWController {

	@Autowired
	private FindPasswordService findpass;
	
	@GetMapping("/findpw")
	public String findPW() {
		String email ="crysta49@naver.com";
		String title = "임시 비밀번호 안내";
		String text ="비밀번호는 1234";
		
		
		
		return "";
	}
	
}
