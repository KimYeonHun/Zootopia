package com.kh.zootopia.service;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.loginDto;

public interface userService {

	void modifyPw(MemberDto memberDto) throws Exception;

//	MemberDto login(loginDto modifyUser);

}
