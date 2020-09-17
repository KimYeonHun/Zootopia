package com.kh.zootopia.repository;


import java.util.List;

import com.kh.zootopia.entity.PetDto;

public interface PetDao {
	void insert(PetDto petDto);
List<PetDto> getList();
List<PetDto> getList(String col, String order);
PetDto get(int pet_no);

void edit(PetDto petDto);

		
	

}
