package com.kh.zootopia.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kh.zootopia.entity.grapeVO;

@RestController

@RequestMapping("/petsitter")
@CrossOrigin("*")
public class restController {
//통계용 데이터 매핑
	
	@GetMapping("/petsitterpage")
	public List<grapeVO> petsitterpage(){
		List<grapeVO>list = new ArrayList<>();
		list.add(grapeVO.builder().month("6월").count(10).build());
		list.add(grapeVO.builder().month("7월").count(14).build());
		list.add(grapeVO.builder().month("8월").count(10).build());
		list.add(grapeVO.builder().month("9월").count(15).build());
	return list;
	}
}
