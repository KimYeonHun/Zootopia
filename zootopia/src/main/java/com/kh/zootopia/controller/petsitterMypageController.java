package com.kh.zootopia.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kh.zootopia.entity.grapeVO;



@Controller
@CrossOrigin("*")
@RequestMapping("/member")
public class petsitterMypageController{

@GetMapping("/petsitterpage")

public String petsitterpage() {
	return "member/petsitterpage";
}
@PostMapping("/petsitterpage")
public List<grapeVO> grpae(){
	List<grapeVO>list = new ArrayList<>();
	list.add(grapeVO.builder().month("6월").count(10).build());
	list.add(grapeVO.builder().month("7월").count(14).build());
	list.add(grapeVO.builder().month("8월").count(10).build());
	list.add(grapeVO.builder().month("9월").count(15).build());
return list;
}
}

