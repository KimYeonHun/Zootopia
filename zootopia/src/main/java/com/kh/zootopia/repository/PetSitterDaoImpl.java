package com.kh.zootopia.repository;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.kh.zootopia.entity.PetFileDto;
import com.kh.zootopia.entity.PetSitterDto;


@Repository
public class PetSitterDaoImpl implements PetSitterDao {

	@Autowired
	private SqlSession sqlSession;

	
	// 시퀀스 뽑아내서 입력
	@Override
	public int getSeq(PetSitterDto petSitterDto) {
		
		 int sitter_no=sqlSession.selectOne("petsitter.getSeq");
		 petSitterDto.setPetsitter_no(sitter_no);
		 sqlSession.insert("petsitter.petsitter_join",petSitterDto);
		
		return sitter_no;
	}

	@Override
	public void photo(PetFileDto petFileDto,MultipartFile photo,PetSitterDto petSitterDto) throws IllegalStateException, IOException {
		
		int no = this.getSeq(petSitterDto);
		String original =  photo.getOriginalFilename(); // 오리지날 이름 
		String exc = original.substring(original.lastIndexOf(".")+1, original.length()); // 확장자 구하기 
		String name= no+"."+exc;
		Object file = PetFileDto.builder().petsitter_no(no).pet_file_name(name).pet_file_size(photo.getSize()).pet_file_type(photo.getContentType());
	
		File target = new File("D:/upload", name); // 이름 처리 
		 photo.transferTo(target);
		 
		 sqlSession.insert("petsitter.sitter_file", file);
		
	}

	@Override
	public int getNick(String  petsitter_nick) throws Exception {
		
		int result = sqlSession.selectOne("petsitter.getNick",petsitter_nick);
		
		return result;
	}

	@Override
	public PetFileDto getimg(int petsitter_no) {
		
		return sqlSession.selectOne("petsitter.getimg", petsitter_no);
	}



	
	
}
