package com.kh.zootopia.service;

import java.io.IOException;

import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ResponseEntity;

import com.kh.zootopia.entity.PetDto;

public interface petPhotoService {
	ResponseEntity<ByteArrayResource> getImg(PetDto pfDto) throws IOException ;
}
