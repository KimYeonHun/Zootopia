package com.kh.zootopia.controller;

import java.io.File;
import java.io.IOException;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetFileDto;
import com.kh.zootopia.entity.PetSitterDto;

import com.kh.zootopia.repository.PetSitterDao;

@Controller
@RequestMapping("/petsitter")
public class PetSitterController {

	@Autowired
	private PetSitterDao petSitterDao;

	
	@GetMapping("/petsitter_join")
	public String petsitter_join(
//		@RequestParam String member_id,
			HttpSession session,
			Model model
			){
		
		MemberDto userinfo= (MemberDto)session.getAttribute("userinfo");
		model.addAttribute("userinfo", userinfo);
		 
		return "petsitter/petsitter_join";
	}
	
	@PostMapping("/petsitter_join")
	public String petsitter_join(
			HttpSession session,
			@ModelAttribute PetSitterDto petSitterDto,
			@ModelAttribute PetFileDto petFileDto,
			@RequestParam MultipartFile photo
			
			) throws IllegalStateException, IOException {

//		 MemberDto memberInfo= (MemberDto)session.getAttribute("memberInfo");
		
//	     petSitterDao.getSeq(petSitterDto);
		 // 번호를 뽑고 
		
		 
			if(photo.getSize()!=0) {
				
				petSitterDao.photo(petFileDto, photo, petSitterDto);
				 return  "redirect:petsitter_result";
			}
			
			return "redirect:petsitter_join?error";
		
	}
	
	@GetMapping("/petsitter_result")
	public String petsitter_result() {
		
		return "petsitter/petsitter_result";
	}
	
	
	



}
