package com.kh.zootopia.repository;

import java.util.List;
import java.util.Map;

import com.kh.zootopia.entity.PetSitterDto;

public interface ReserveDao {
	
	
	// 펫시터 조회 
	List<PetSitterDto> getSitterList(Map< String, Object> map);

}
