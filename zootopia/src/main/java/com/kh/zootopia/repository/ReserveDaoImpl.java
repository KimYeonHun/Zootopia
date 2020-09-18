package com.kh.zootopia.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.PetSitterDto;

@Repository
public class ReserveDaoImpl implements ReserveDao{

	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<PetSitterDto> getSitterList(Map<String, Object> map) {
		
		return sqlSession.selectList("petsitter.getDay",map);
	} 

}
