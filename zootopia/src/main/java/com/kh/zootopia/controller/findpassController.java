package com.kh.zootopia.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/help")
public class findpassController {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 회원 비밀번호 찾기 
	@GetMapping("/password")
	@ResponseBody
	public int findpw(
			@RequestParam String member_id,
			@RequestParam String email ) {
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("email", email);
		int user = sqlSession.selectOne("member.findpw", map);
		if(user ==1) {
			return 1;
		}else {
			return 0;
		}
	}
	

}
