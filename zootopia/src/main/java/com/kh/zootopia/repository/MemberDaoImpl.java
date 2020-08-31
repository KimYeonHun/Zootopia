package com.kh.zootopia.repository;


import javax.inject.Inject;

import java.util.HashMap;
import java.util.Map;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.MemberDto;



@Repository
public class MemberDaoImpl implements MemberDao{
	
//	@Inject
//	SqlSession sqlSession;
	@Autowired
	SqlSession sqlSession;

	

	@Override
	public void update(MemberDto memberDto) {
		
		sqlSession.update("member.update", memberDto);
	}

	@Autowired
	private MemberDao memberDao;

	


	
	//비밀 번호 찾기
	@Override
	public int searchpw(String member_id, String email) {
		Map<String, Object> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("email", email);
		
		return sqlSession.selectOne("member.findpw", map);
	}


	// 비밀번호 변경
	@Override
	public void changepw(String member_id) {
		sqlSession.update("member.changepw", member_id);
		
	}

	
	

	
	
}
