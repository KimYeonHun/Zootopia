package com.kh.zootopia.controller;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.PetSitterDto;

@Controller
@RequestMapping("/petsitter")
public class PetSitterController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping("/petsitter_join")
	public String petsitter_join(){
		return "petsitter/petsitter_join";
	}
	
	@PostMapping("/petsitter_join")
	public String petsitter_join(
			@ModelAttribute PetSitterDto petSitterDto
			) {
		sqlSession.insert("petsitter.petsitter_join",petSitterDto);
		return  "petsitter/petsitter_join";
	}
	

}
