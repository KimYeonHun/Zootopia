package com.kh.zootopia.repository;


import com.kh.zootopia.entity.MemberDto;

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
	

}
