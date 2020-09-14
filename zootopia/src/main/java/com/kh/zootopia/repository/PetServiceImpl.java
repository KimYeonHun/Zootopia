package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.PetDto;

@Service("petService")
public class PetServiceImpl implements PetDao {
	
	
	@Autowired
	    private SqlSession sqlSession;
	    
	 @Override
	    public void insertPet(PetDto PetDto) throws Exception {
		 PetMapper mapper = sqlSession.getMapper( PetMapper.class);
	        mapper.insertPet(PetDto);
	    }
	 
	    public void updatePet(PetDto PetDto) throws Exception {
	    	 PetMapper mapper = sqlSession.getMapper( PetMapper.class);
	        mapper.updatePet(PetDto);
	    }
	 
	    public void deletePet(PetDto PetDto) throws Exception {
	    	 PetMapper mapper = sqlSession.getMapper( PetMapper.class);
	        mapper.deletePet(PetDto);
	    }

}