package com.kh.zootopia.repository;

import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetFileDto;
import com.kh.zootopia.entity.PetSitterDto;


public interface PetSitterDao {
	
	int getSeq(PetSitterDto petSitterDto);
	
	void photo(PetFileDto petFileDto , MultipartFile photo,PetSitterDto petSitterDto) throws IllegalStateException, IOException;

	int getNick (String   petsitter_nick) throws Exception;
	
	PetFileDto getimg(int petsitter_no );
	
}
