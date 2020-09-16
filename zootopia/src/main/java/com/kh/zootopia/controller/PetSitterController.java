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
import org.springframework.web.bind.annotation.ResponseBody;
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
		String member_id =userinfo.getMember_id();
		
		// 해당 아이디가 펫시터 등록을 했으면 안넘어가기 
		// 등록을 안했으면 등록할 수 있게
		 
		return "petsitter/petsitter_join";
	}
	
	@PostMapping("/petsitter_join")
	public String petsitter_join(
			HttpSession session,
			@ModelAttribute PetSitterDto petSitterDto,
			@ModelAttribute PetFileDto petFileDto,
			@RequestParam MultipartFile photo
			
			) throws Exception {

		int result = petSitterDao.getNick(petSitterDto.getPetsitter_nick());
		
		if(result==0) { // 닉네임이 중복이 아닐때
			
			if(photo.getSize()!=0) {// 아이디가 중복아니고 사진이 들어있을 때
				
				petSitterDao.photo(petFileDto, photo, petSitterDto);
			}
			return  "redirect:petsitter_result";
		
		}else { //중복일때
			
			return "redirect:petsitter_join?error";
		}

		
	}
	
	@GetMapping("/petsitter_result")
	public String petsitter_result() {
		
		return "petsitter/petsitter_result";
	}
	
	
	@PostMapping("/getnick")
	@ResponseBody
	public int getNick(String  petsitter_nick) throws Exception {
		int result = petSitterDao.getNick(petsitter_nick);
		return result ;
	}
	
	
	
	
	



}
