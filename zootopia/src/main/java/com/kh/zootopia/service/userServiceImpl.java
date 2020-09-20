package com.kh.zootopia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.loginDto;
import com.kh.zootopia.repository.MemberDao;

public class userServiceImpl implements userService{
@Autowired
MemberDao memberDao;

	@Override
	public void modifyPw(MemberDto memberDto) throws Exception {
		
		//회원 비밀번호를 인코딩하기 위해 객체 선언
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		System.out.println("암호화 전 비밀번호 : " + memberDto.getMember_pw());

		//회원 비밀번호를 암호화하여 user객체에 다시 저장
		String securePw = encoder.encode(memberDto.getMember_pw());
		memberDto.setMember_pw(securePw);
		
		System.out.println("암호화 후 비밀번호 : " + memberDto.getMember_pw());
		
		memberDao.modifyPw(memberDto);
		
	}

//	@Override
//	public MemberDto login(loginDto modifyUser) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	
}
