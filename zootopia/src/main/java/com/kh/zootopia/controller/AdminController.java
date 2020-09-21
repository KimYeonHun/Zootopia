package com.kh.zootopia.controller;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetSitterDto;
import com.kh.zootopia.service.PassEmailService;



@Controller
@RequestMapping("/member")
public class AdminController {

	@Autowired
	private SqlSession sqlSession;
	
	@Autowired
	private PassEmailService sender;

	@GetMapping("/list")
	public String applicant(Model model) {
		
		  List<PetSitterDto> list = sqlSession.selectList("petsitter.getlist");
		  model.addAttribute("list", list);
		 
		return "admin/list";
	}
	
	@GetMapping("/content/{petsitter_no}")
	public String content(@PathVariable int petsitter_no, Model model) {
		
		 PetSitterDto petSitterDto = sqlSession.selectOne("petsitter.get", petsitter_no);
		
		 
		 int sum = petSitterDto.getSitter_checklist()+petSitterDto.getSitter_checklist_two()+petSitterDto.getCare_one()
		 + petSitterDto.getCare_two()+ petSitterDto.getCare_three()+ petSitterDto.getCare_four()+petSitterDto.getCare_five();
		 
		 petSitterDto.setSitter_checklist(sum);
		 
		 model.addAttribute("petSitterDto", petSitterDto);
		 
		return "/admin/content";	
	}
	@PostMapping("/content/{petsitter_no}")
	public String content(@ModelAttribute PetSitterDto petSitterDto,
			@RequestParam String sitter_accept,
			HttpSession session) {
		if(sitter_accept.equals("승인")) {
			petSitterDto.setSitter_accept(sitter_accept);
			sqlSession.update("petsitter.enrollment", petSitterDto);
			
			MemberDto memberDto = sqlSession.selectOne("member.get", petSitterDto.getMember_id());
			sender.sendSimpleMessage(memberDto.getEmail(), "[zootopia]펫시터 신청", memberDto.getMember_name()+"님께\n"+"[ZOOTOPIA]펫시터에 지원 해주셔서 감사합니다\n"+"승인 되었음을 알려드립니다.");
			session.setAttribute("member_id", memberDto);
			
			return "redirect:/member/list";
		}
		else {
			sqlSession.delete("petsitter.delete", petSitterDto.getMember_id());
			
			MemberDto memberDto = sqlSession.selectOne("member.get", petSitterDto.getMember_id());
			sender.sendSimpleMessage(memberDto.getEmail(), "[zootopia]펫시터 신청", memberDto.getMember_name()+"님께\n"+"[ZOOTOPIA]펫시터에 지원 해주셔서 감사합니다\n"+"유감스럽게도 미승인 되었음을 알려드립니다.");
			session.setAttribute("member_id", memberDto);
			return "redirect:/member/list";
		}
	}
	
	
}
