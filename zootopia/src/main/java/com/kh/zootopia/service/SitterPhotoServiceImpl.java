package com.kh.zootopia.service;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;

import org.apache.commons.io.FileUtils;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.PetFileDto;

@Service
public class SitterPhotoServiceImpl implements SitterPhotoService{

	
	//이미지 다운로드
	@Override
	public ResponseEntity<ByteArrayResource> getImg(PetFileDto petFileDto) throws IOException {
		
		if(petFileDto == null) {
			return ResponseEntity.notFound().build();
		}else {
			File target = new File("D:/upload",petFileDto.getPet_file_name());
			byte[] data = FileUtils.readFileToByteArray(target);
			ByteArrayResource res = new ByteArrayResource(data);
			
			return ResponseEntity .ok().contentType(MediaType.APPLICATION_OCTET_STREAM)
					.contentLength(petFileDto.getPet_file_size())
					.header(HttpHeaders.CONTENT_DISPOSITION	,"attachment; filename=\""+URLEncoder.encode(petFileDto.getPet_file_name(), "UTF-8")+"\"" )
					.header(HttpHeaders.CONTENT_ENCODING, "UTF-8")
					.body(res);
		}
		
		
//		return null;
	}

	
	
}
