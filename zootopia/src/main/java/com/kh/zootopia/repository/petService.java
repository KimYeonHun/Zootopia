package com.kh.zootopia.repository;

import com.kh.zootopia.entity.PetDto;

public interface petService {

	
    public void insertPet(PetDto PetDto) throws Exception;
    
   
    public void updatePet(PetDto PetDto) throws Exception;
	
   
    public void deletePet(PetDto PetDto) throws Exception;
}