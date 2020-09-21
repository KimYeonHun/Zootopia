package com.kh.zootopia.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

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
import com.kh.zootopia.entity.pre_resDto;
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
	public String ready(@RequestParam int petsitter_no,
			Model model) {
//		System.out.println(petsitter_no);
		PetSitterDto petSitterDto = sqlSession.selectOne("petsitter.getpet", petsitter_no);
//		System.out.println(petSitterDto.toString());
		model.addAttribute("petSitterDto", petSitterDto);
		//여기까지 들어왔엉 오늘 하루도 보람찬 하루였어  자고일어나서 완성해야징^^
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
		
		//파라미터 값 저장 (날짜, 시작 시간, 끝나는 시간 )
		
		
		//펫시터 닉네임 저장 
		
		
		// 날짜, 시간 
		//날짜를 요일로 변경 후 시간 까지 
		List<PetSitterDto> list = reserveDao.getSitterList(map);
		
		// 펫시터 검색 1. 요일 2. 시간 
		// 날짜 = 요일로 변경 and 시간 
		
		// 펫시터 찍기 
		model.addAttribute("list", list);
		model.addAttribute("map", map);
	
		
		// 펫시터 번호 = 멤버 번호 조회 해서 예약 페이지에 부르기 
	
		return "/member/reservation/reserve_step1";
	}
	
	////////////////////////////////////
	
	@GetMapping("/reserve_step2")
	public String reserve_step2(@RequestParam int petsitter_no,
			HttpSession session,Model model
			){
		
		System.out.println("-------------------------------");
		System.out.println(petsitter_no);
		
		MemberDto userinfo=(MemberDto)session.getAttribute("userinfo");
		List<PetDto> petinfo = sqlSession.selectList("reservation.getMyPet", userinfo.getMember_id());
		
		model.addAttribute("list", petinfo);
		
		pre_resDto pre_resDto = sqlSession.selectOne("reservation.getSitter",userinfo.getMember_id());
		model.addAttribute("pre_resDto", pre_resDto);
		return "/member/reservation/reserve_step2";
	}

	
	@PostMapping("/reserve_step2")
	public String reserve_step2(

			@ModelAttribute ReserveDto reserveDto,
			HttpSession session,

			@RequestParam String res_pack,
			@ModelAttribute ReserveDto reserveDto2

			) {

		MemberDto userinfo=(MemberDto)session.getAttribute("userinfo");

		int a = Integer.parseInt(res_pack.substring(0, 1));
		int price = (a/30)*8000;
		
		reserveDto.setRes_price(price);
		System.out.println("123123123213-----------------------------");
		System.out.println(reserveDto.toString());
		

		reserveDao.reserve(reserveDto);
		sqlSession.delete("reservation.del_res",userinfo.getMember_id());
		return "redirect:reserve_result";
	}
	
	
	@GetMapping("/reserve_result")
	public String reserve_result(
			) {
		
		

		return  "/member/reservation/result";
	}
	
}

