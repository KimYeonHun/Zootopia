package com.kh.zootopia.service;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.GallaryDto;

public interface GallaryService {
	void add(GallaryDto gallaryDto, MultipartFile file) throws IllegalStateException, IOException;
}

