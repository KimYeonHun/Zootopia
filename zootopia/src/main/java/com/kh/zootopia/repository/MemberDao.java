package com.kh.zootopia.repository;

import com.kh.zootopia.entity.CertDto;
import com.kh.zootopia.entity.MemberDto;

public interface MemberDao {
	
	int searchpw(String member_id, String email);

	
	void changepw(String member_id);
	
	String  searchid(String member_name,String email);
	
	
	/////////////////////////////
	// 아이디 찾기 인증 번호
	void insert(CertDto certDto);
	boolean validate(CertDto certDto);
	
	String CertId(String  secret);
	
	///////////////////////////
}
