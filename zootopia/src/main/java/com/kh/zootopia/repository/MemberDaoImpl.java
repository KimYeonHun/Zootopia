package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.MemberDto;



@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private PasswordEncoder encoder;
	


	@Override
	public boolean join(MemberDto memberDto) {
		
		MemberDto find = sqlSession.selectOne( "member.get",
		memberDto.getMember_id());
		
		
		if(find == null) {
			memberDto.setMember_pw(encoder.encode(memberDto.getMember_pw()));
			
			sqlSession.insert("member.join", memberDto);
			return true;
		}
		else {
			return false;
		}
	}

	
	
	
}
