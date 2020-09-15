package com.kh.zootopia.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.memberFileDto;
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
	
	//TEST_이미지 업로드
	@Override
	//이름 지정_타입지정_사이즈 지정(계속 null값인 이유가 파일이름 입력된 파일이랑 매치가 안되서)
	public void imgadd(memberFileDto mfDto, MultipartFile file) {
		mfDto.setMember_file_name(file.getOriginalFilename());
		mfDto.setMember_file_type(file.getContentType());
		mfDto.setMember_file_size(file.getSize());
		
	}
		
		//gallaryDto를 등록 + 하드디스크에 저장
//				int no = TestDao.add(TestDto);
//				File target = new File("D:/upload", String.valueOf(no));
//				file.transferTo(target);
	
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