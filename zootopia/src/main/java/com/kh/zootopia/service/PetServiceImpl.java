package com.kh.zootopia.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.repository.PetDao;

@Service
public class PetServiceImpl implements PetService {

	@Autowired
	private PetDao petdao;
	
	@Override
	public void petUpdate(PetDto petDto) throws Exception {

		petdao.petUpdate(petDto);
		
	}



}