package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;

public interface PetDao {

	// pet정보 수정
		public void petUpdate(PetDto petDto)throws Exception;
		
	

	}
