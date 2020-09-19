package com.kh.zootopia.repository;

import com.kh.zootopia.entity.ReserveDto;

public interface ReserveDao {

	int reserve(ReserveDto reserveDto);
	
	int pet(ReserveDto reserveDto);

}
