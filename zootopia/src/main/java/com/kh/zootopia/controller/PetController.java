package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.repository.PetDao;
import com.kh.zootopia.service.PetService;

@Controller
@RequestMapping("/member")
public class PetController {

	
	
	@Autowired
	private PetDao petDao;
	@Autowired
	private PetService service;
	
	@GetMapping("/pet")
	public String pet() {
		return "member/pet";
	}
		@RequestMapping(value="/petUpdateView", method = RequestMethod.GET)
		public String registerUpdateView() throws Exception{
			
			return "member/petUpdateView";
		}

		@RequestMapping(value="/petUpdateView", method = RequestMethod.POST)
		public String registerUpdate(PetDto petDto, HttpSession session) throws Exception{
			
			service.petUpdate(petDto);
			
			
			return "redirect:/member/pet";
		}
		
		
		
}
