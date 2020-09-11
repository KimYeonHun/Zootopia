package com.kh.zootopia.repository;

import com.kh.zootopia.entity.PetDto;

public interface PetDao {



// pet 등록
 public void insertBoard(PetDto PetDto ) throws Exception;
    
    // pet 수정
 public void updateBoard(PetDto  PetDto ) throws Exception;
    
    // pet 삭제
 public void deleteBoard(PetDto  PetDto ) throws Exception;
 
}
