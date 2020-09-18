<<<<<<< HEAD
package com.kh.zootopia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.zootopia.entity.MemberDto;

import com.kh.zootopia.repository.MypageDao;
@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDao dao;
	
	//수정
	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {

		dao.memberUpdate(memberDto);
		
	}


	@Override
	public boolean passpw(MemberDto memberDto) {
		
		return false;
	}

	
=======
package com.kh.zootopia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.zootopia.entity.MemberDto;

import com.kh.zootopia.repository.MypageDao;
@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDao dao;
	
	//수정
	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {

		dao.memberUpdate(memberDto);
		
	}


	@Override
	public boolean passpw(MemberDto memberDto) {
		
		return false;
	}

	
>>>>>>> branch 'dong_pet' of https://github.com/KimYeonHun/Zootopia
}