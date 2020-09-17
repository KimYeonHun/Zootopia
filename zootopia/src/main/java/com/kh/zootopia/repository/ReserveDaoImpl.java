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
		int reserveno = sqlSession.selectOne("reserve.getSeq");
		reserveDto.setRes_no(reserveno);
		sqlSession.insert("reservation.reserve",reserveDto);
		return reserveno;
	}


}
