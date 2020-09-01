package com.kh.zootopia.repository;

import com.kh.zootopia.entity.GallaryDto;

public interface GallaryDao {
	int add(GallaryDto gallaryDto);
	GallaryDto get(int no);
}