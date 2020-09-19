package com.kh.zootopia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.entity.PetSitterDto;
import com.kh.zootopia.entity.ReserveDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.repository.PetDao;
import com.kh.zootopia.repository.PetSitterDao;
import com.kh.zootopia.repository.ReserveDao;

@Controller
@RequestMapping("/member/reservation")
public class ReservationController {
	
	@Autowired
	private ReserveDao reserveDao;
	
	@Autowired PetSitterDao petsitterDao;

	@Autowired
	private SqlSession sqlSession;

	
	@GetMapping("/ready")
	public String ready() {
		return "/member/reservation/ready";
	}
	

	////////////////////////
	@GetMapping("/reserve_step1")
	public String reserve_step1() {
		
		// 검색 파라미터 (요일, 날짜 )
		
		return "/member/reservation/reserve_step1";
	}
	
	
	
	
	@PostMapping("/reserve_step1")
	public String reserve_step1(
			
			@RequestParam String reservation_day,
			@RequestParam String available_start_time,
			@RequestParam String available_finish_time,
			HttpSession session,
			Model model
			
			) {
		
		
		Map<String,Object > map = new HashMap<>();
		map.put("available_start_time", available_start_time);
		map.put("available_finish_time", available_finish_time);
		map.put("reservation_day", reservation_day);
		
		// 날짜, 시간 
		//날짜를 요일로 변경 후 시간 까지 
		List<PetSitterDto> list = sqlSession.selectList("petsitter.getDay",map);
		
		// 펫시터 검색 1. 요일 2. 시간 
		// 날짜 = 요일로 변경 and 시간 
		
		// 펫시터 찍기 
		model.addAttribute("list", list);
	
		return "/member/reservation/reserve_step1";
	}
	
	////////////////////////////////////
	
	@GetMapping("/reserve_step2")
	public String reserve_step2(
			HttpSession session,Model model){
		
		MemberDto userinfo=(MemberDto)session.getAttribute("userinfo");
		List<PetDto> pet_name = sqlSession.selectList("reservation.getMyPet", userinfo.getMember_id());
		
		model.addAttribute("list", pet_name);
		
		return "/member/reservation/reserve_step2";
	}

	
	@PostMapping("/reserve_step2")
	public String reserve_step2(
			@ModelAttribute ReserveDto reserveDto
			
			) {
		 // 로그인 한 회원정보
		
		
		// 회원 정보를 통해서 펫 정보 불러오기 
		
//		System.out.println(petinfo);
//		System.out.println(pet_name);
		reserveDao.pet(reserveDto);
		reserveDao.reserve(reserveDto);
		return "redirect:/member/reservation/result";
	}
	
}

