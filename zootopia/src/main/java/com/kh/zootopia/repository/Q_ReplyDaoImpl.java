package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.Q_BoardDto;
import com.kh.zootopia.entity.Q_ReplyDto;

@Repository
public class Q_ReplyDaoImpl implements Q_ReplyDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	

}
