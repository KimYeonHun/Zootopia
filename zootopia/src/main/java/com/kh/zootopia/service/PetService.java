package com.kh.zootopia.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.PetDto;
import com.kh.zootopia.repository.PetDao;

@Service
public class PetService {

@Autowired
private PetDao petDao;

public List<PetDto> getBoardList(PetForm petForm) throws Exception {
	 
    return petDao.getPetList(petForm);
}
public PetDto getBoardDetail(PetForm petForm) throws Exception {
	 
    PetDto petDto = new PetDto();

    String searchType = petForm.getSearch_type();

    if("S".equals(searchType)){
        
        int updateCnt = petDao.updateBoardHits(petForm);
    
        if (updateCnt > 0) {
            petDto = petDao.getBoardDetail(petForm);
        }
        
    } else {
        
       petDto = petDao.getBoardDetail(petForm);
    }

    return petDto;
}

/** 게시판 - 등록 */
public PetDto insertPet(petForm petForm) throws Exception {

    PetDto petDto = new PetDto();

    int insertCnt = petDao.insertBoard(petForm);

    if (insertCnt > 0) {
        petDto.setResult("SUCCESS");
    } else {
        petDto.setResult("FAIL");
    }

    return petDto;
}

/** 게시판 - 삭제 */
public PetDto deletePet(PetForm petForm) throws Exception {

	PetDto petDto = new PetDto();

    int deleteCnt = petDao.deleteBoard(petForm);

    if (deleteCnt > 0) {
        petDto.setResult("SUCCESS");
    } else {
        petDto.setResult("FAIL");
    }

    return petDto;
}

/** 게시판 - 수정 */
public PetDto updateBoard(PetForm boardForm) throws Exception {

    PetDto boardDto = new PetDto();

    int deleteCnt = petDao.updatePet(petForm);

    if (deleteCnt > 0) {
        petDto.setResult("SUCCESS");
    } else {
        petDto.setResult("FAIL");
    }

    return petDto;
}
}


