package com.kh.zootopia.repository;


import java.util.List;

import com.kh.zootopia.entity.PETFDTO;
import com.kh.zootopia.entity.PetDto;

public interface PetDao {
	void insert(PetDto petDto);
PetDto getList(String member_id);
List<PetDto> getList(String col, String order);
PetDto get(int pet_no);

void edit(PetDto petDto);
void delete(int pet_no);




///파일 사진올리기 테스트
void insert(PETFDTO pfDto);
}