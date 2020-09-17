package com.kh.zootopia.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.kh.zootopia.entity.PetDto;

@Repository
public class PetDaoImpl implements PetDao {

	@Autowired
	private SqlSession sqlSession;

	


	
	@Override
	public void insert(PetDto petDto) {
		sqlSession.insert("pet.petinfo",petDto);

	}
		

	@Override
	public List<PetDto> getList(){
		return sqlSession.selectList("pet.getList");
			}
	@Override
	public List<PetDto> getList(String col, String order) {
		Map<String , Object> map =new HashMap<>();
		map.put("col",col);
		map.put("order", order);
		List<PetDto> list = sqlSession.selectList("pet.getList2",map);
		return list;
}
@Override
public void edit(PetDto petDto) {
	sqlSession.update("pet.edit",petDto);

	
}
@Override
public PetDto get(int pet_no) {
	PetDto petDto = sqlSession.selectOne("pet.get",pet_no);
	return petDto;
}


	

}