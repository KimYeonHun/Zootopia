package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.entity.PetSitterDto;
import com.kh.zootopia.entity.ReserveDto;


@Repository
public class ReserveDaoImpl implements ReserveDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public int reserve(ReserveDto reserveDto) {
		int res_no = sqlSession.selectOne("reservation.getSeq");
		sqlSession.insert("reservation.reserve",reserveDto);
		return res_no;
	}

	@Override
	public int pet(ReserveDto reserveDto) {
		int pet_no = sqlSession.selectOne("reservation.getPet");
		return ;
	}


}
