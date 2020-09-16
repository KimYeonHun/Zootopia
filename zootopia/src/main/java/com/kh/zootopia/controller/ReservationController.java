package com.kh.zootopia.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.zootopia.entity.ReserveDto;
import com.kh.zootopia.repository.ReserveDao;

@Controller
@RequestMapping("/member/reservation")
public class ReservationController {
	
	@Autowired
	private ReserveDao reserveDao;
	
	@GetMapping("/ready")
	public String ready() {
		return "/member/reservation/ready";
	}
	
	@GetMapping("/reserve_step1")
	public String reserve_step1() {
		return "/member/reservation/reserve_step1";
	}
	@PostMapping("/reserve_step1")
	public String reserve_step1(
			@ModelAttribute ReserveDto reserveDto,
			HttpSession session
			) {
		return "redirect:/member/reservation/reserve_step2";
	}
	@GetMapping("/reserve_step2")
	public String reserve_step2() {
		return "/member/reservation/reserve_step2";
	}
	@PostMapping("/reserve_step2")
	public String reserve_step2(
			@ModelAttribute ReserveDto reserveDto,
			HttpSession session
			) {
		return "redirect:/member/reservation/result";
	}
	

}
