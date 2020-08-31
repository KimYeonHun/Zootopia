package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface MemberDao {
	

	//회원정보 수정
	public void update(MemberDto memberDto);

	int searchpw(String member_id, String email);

	
	void changepw(String member_id);
	


}
