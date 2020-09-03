package com.kh.zootopia.service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.GallaryDto;
import com.kh.zootopia.repository.GallaryDao;

@Service
public class GallaryServiceImpl implements GallaryService {
	@Autowired
	private GallaryDao gallaryDao;
	@Override
	public void add(GallaryDto gallaryDto, MultipartFile file) throws IllegalStateException, IOException {
		gallaryDto.setPet_file_name(file.getOriginalFilename());
		gallaryDto.setPet_file_size(file.getSize());
		gallaryDto.setPet_file_type(file.getContentType());
		
		//gallaryDto를 등록 + 하드디스크에 저장
		int no = gallaryDao.add(gallaryDto);
		File target = new File("D:/upload", String.valueOf(no));
		file.transferTo(target);
	}
	
}



