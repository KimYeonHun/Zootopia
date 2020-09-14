package com.kh.zootopia.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;
import com.kh.zootopia.repository.TestDao;
@Service
public class TestServiceImpl implements TestService{
	
	@Autowired
	private TestDao dao;
	
	//수정
	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {

		dao.memberUpdate(memberDto);
		
	}

//	@Override
//	public void deleteMember(String member_id) {
//		// TODO Auto-generated method stub
//		
//	}

	@Override
	public boolean passpw(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return false;
	}

	//비밀번호체크(보류)
//	@Override
//	public boolean passcheck(String member_id, String member_pw) {
//		return dao.passcheck(member_id,member_pw);
//		
//		
//	}
	//보류2
//	@Override
//	public void deleteMember(String member_id) {
//		dao.deleteMember(member_id);
//	}
	
	//실험
//	@Override
//	public boolean passpw(MemberDto memberDto) {
//		return dao.passpw(memberDto);
//	}
//	}
}