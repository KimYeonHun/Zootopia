package com.kh.zootopia.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.memberFileDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.repository.TestDao;
import com.kh.zootopia.service.TestService;

@Controller
@RequestMapping("/test")
public class TestController {
	
	
	@Autowired
	private TestDao testDao;
	@Autowired
	private TestService service;
	
	
	@GetMapping("/home")
	public String home() {
		return"test/home";
	}
	
	@RequestMapping(value="/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception{
		
		return "test/memberUpdateView";
	}

	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberDto memberDto, HttpSession session) throws Exception{
		
		service.memberUpdate(memberDto);
		
		
		return "redirect:/test/home";
	}
	
	
	@RequestMapping(value="/passcheck", method = RequestMethod.GET)
	public String passcheck() throws Exception{
		//1페이지를 보여준다
		return "test/passcheck";
	}
	@RequestMapping(value="/passcheck", method = RequestMethod.POST)
		public String passcheck(@ModelAttribute MemberDto memberDto) {
			boolean result = testDao.passcheck(memberDto);
			if(result) {
				return"redirect:/test/memberUpdateView";
			}		  
			else {
				return "redirect:passcheck?error";
			}
	}
	
//////////성공///////////////////////
	@GetMapping("/chattest")
	public String chattest() throws Exception{
		return"test/chattest";	
	}
	@GetMapping("chattest2")
	public String chattest2() throws Exception{
		return"test/chattest2";
	}
	@GetMapping("chattest3")
	public String chattest3() throws Exception{
		return"test/chattest3";
	}
	//////
	@RequestMapping(value="/memberimg", method = RequestMethod.POST)
		public String memberimg(@ModelAttribute memberFileDto mfDto,@RequestParam MultipartFile file)throws IllegalStateException, IOException {
		
		service.imgadd(mfDto,file);
		return "redirect:/test/home";
	}
}
