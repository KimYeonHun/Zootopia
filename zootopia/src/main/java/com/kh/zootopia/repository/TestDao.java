package com.kh.zootopia.repository;

import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.memberFileDto;

public interface TestDao {
	// 회원정보 수정
	public void memberUpdate(MemberDto memberDto)throws Exception;
	
	//비번체크
	boolean passcheck(MemberDto memberDto);
	
	//test
	//-이미지 등록-
	public void imgadd(memberFileDto mfDto);


}
