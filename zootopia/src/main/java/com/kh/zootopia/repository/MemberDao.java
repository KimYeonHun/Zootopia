package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface MemberDao {
	
	int searchpw(String member_id, String email);

	
	void changepw(String member_id);
	

}
