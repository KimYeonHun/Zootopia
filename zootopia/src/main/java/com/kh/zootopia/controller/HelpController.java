package com.kh.zootopia.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kh.zootopia.entity.CertDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.service.CertService;
import com.kh.zootopia.service.PassEmailService;

@RestController
@RequestMapping("/help")
public class HelpController {

	@Autowired
	private MemberDao memberDao;
	@Autowired
	private PassEmailService sender;
	@Autowired 
	private CertService certService;

	// 회원 비밀번호 찾기
	@PostMapping("/password")
	public int findpw(@RequestParam String member_id, @RequestParam String email) {

		int user = memberDao.searchpw(member_id, email);
		if (user == 1) {
			// 1. 파라미터 값으로 아이디와 이메일을 받는다
//			int info =memberDao.searchpw(member_id,email);

			// 2. 정보가 일치하면 비밀번호 변경

			memberDao.changepw(member_id);

			// 3. 변경된 비밀번호를 이메일로 발송
			sender.sendSimpleMessage(email, "[zootopia] 임시 비밀번호 발급 안내 입니다", "임시 비밀번호: zoo123%^");

			return 1;
		} else {
			return 0;
		}
	}
	


}
