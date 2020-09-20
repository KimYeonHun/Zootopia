package com.kh.zootopia.repository;


import com.kh.zootopia.entity.MemberDto;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

import com.kh.zootopia.entity.CertDto;



public interface MemberDao {
	
	int searchpw(String member_id, String email);

	
	void changepw(String member_id, String member_pw);
	
	String  searchid(String member_name,String email);
	

	boolean login(MemberDto memberDto);

	MemberDto get(String member_id);
	
	/////////////////////////////
	// 아이디 찾기 인증 번호
	void insert(CertDto certDto);
	boolean validate(CertDto certDto);
	
	String CertId(String  secret);


	boolean join(MemberDto memberDto);


	boolean passcheck(MemberDto memberDto);


	void upass(MemberDto memberDto);


//	boolean coin(MemberDto memberDto);
//
//
//	MemberDto getUserPw(String member_id);



	
}
