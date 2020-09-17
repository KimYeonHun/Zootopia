package com.kh.zootopia.controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.PetSitterDto;



@Controller
@RequestMapping("/member")
public class AdminController {

	@Autowired
	private SqlSession sqlSession;


	@GetMapping("/list")
	public String applicant(Model model) {
		
		  List<PetSitterDto> list = sqlSession.selectList("petsitter.getlist");
		  model.addAttribute("list", list);
		 
		return "admin/list";
	}
	
	@GetMapping("/content/{petsitter_no}")
	public String content(@PathVariable int petsitter_no) {
		
		 PetSitterDto petSitterDto = sqlSession.selectOne("petsitter.get", petsitter_no);
		 System.out.println(petSitterDto.toString());
		 
		return "/admin/content";
		
	}
	
	
}
