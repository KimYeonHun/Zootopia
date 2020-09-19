package com.kh.zootopia.repository;


import com.kh.zootopia.entity.ReserveDto;

import java.util.List;
import java.util.Map;

import com.kh.zootopia.entity.PetSitterDto;


public interface ReserveDao {
	
	
	// 펫시터 조회 
	List<PetSitterDto> getSitterList(Map< String, Object> map);

	int reserve(ReserveDto reserveDto);


}
