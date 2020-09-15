package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface TestDao {
	// 회원정보 수정
	public void memberUpdate(MemberDto memberDto)throws Exception;
	
	//비번체크
	boolean passcheck(MemberDto memberDto);


}
