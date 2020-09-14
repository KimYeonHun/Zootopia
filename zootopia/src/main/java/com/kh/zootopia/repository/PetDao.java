package com.kh.zootopia.repository;

import com.kh.zootopia.entity.PetDto;

public interface PetDao {



PetMapper insertPet = null;

// pet 등록
void insertPet(PetDto PetDto ) throws Exception;
    
    // pet 수정
void updatePet(PetDto  PetDto ) throws Exception;
    
    // pet 삭제
void deletePet(PetDto  PetDto ) throws Exception;




 
}
