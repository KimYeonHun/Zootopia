package com.kh.zootopia.repository;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

@Repository
public class PetDao {

	@Resource(name="sqlSession")
	private Sqlsession sqlSession
	

}
