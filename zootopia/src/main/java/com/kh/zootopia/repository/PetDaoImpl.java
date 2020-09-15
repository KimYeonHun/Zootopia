package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;

@Repository
public class PetDaoImpl implements PetDao{
	@Autowired
	private SqlSession sql;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Override
	public void petUpdate(PetDto petDto) throws Exception {
		sql.update("pet.petUpdate", petDto); 
	}
	

}
	


