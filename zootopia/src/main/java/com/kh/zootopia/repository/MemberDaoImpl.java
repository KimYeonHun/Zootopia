package com.kh.zootopia.repository;

import javax.inject.Inject;

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
	
	
}
