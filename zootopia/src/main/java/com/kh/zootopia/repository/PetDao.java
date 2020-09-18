
package com.kh.zootopia.repository;

import java.util.List;

import com.kh.zootopia.entity.PETFDTO;
import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.entity.PetFileDto;

public interface PetDao {
	void insert(PetDto petDto);
List<PetDto> getList();
List<PetDto> getList(String col, String order);


///파일 사진올리기 테스트
void insert(PETFDTO pfDto);
}

