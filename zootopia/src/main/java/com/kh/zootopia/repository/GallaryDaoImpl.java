package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.GallaryDto;

@Repository
public class GallaryDaoImpl implements GallaryDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public int add(GallaryDto gallaryDto) {
		int no = sqlSession.selectOne("gallary.seq");
		gallaryDto.setPETSITTER_NO(no);
		sqlSession.insert("gallary.add", gallaryDto);
		return no;
	}

	@Override
	public GallaryDto get(int no) {
		GallaryDto gallaryDto = sqlSession.selectOne("gallary.get", no);
		return gallaryDto;
	}
	
}
