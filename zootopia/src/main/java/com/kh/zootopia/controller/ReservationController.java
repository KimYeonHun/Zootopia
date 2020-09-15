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
	
	@GetMapping("/reserve")
	public String reserve() {
		return "/member/reservation/reserve";
	}
	@PostMapping("/reserve")
	public String reserve(
			@ModelAttribute ReserveDto reserveDto,
			HttpSession session
			) {
		return "redirect:/member/reservation/result";
	}
	

}
