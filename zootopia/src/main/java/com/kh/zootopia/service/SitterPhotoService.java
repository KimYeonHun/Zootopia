package com.kh.zootopia.service;

import java.io.IOException;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;

import com.kh.zootopia.entity.PetFileDto;

public interface SitterPhotoService {

	ResponseEntity<ByteArrayResource> getImg(PetFileDto petFileDto) throws IOException ;
	
}
