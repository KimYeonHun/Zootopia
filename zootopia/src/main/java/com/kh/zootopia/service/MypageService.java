package com.kh.zootopia.service;



import com.kh.zootopia.entity.MemberDto;


public interface MypageService {
	
	public void memberUpdate(MemberDto memberDto)throws Exception;

	public boolean passpw(MemberDto memberDto);
}

