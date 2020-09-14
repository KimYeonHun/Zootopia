package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.Q_BoardDto;

@Repository
public class Q_BoardDaoImpl implements Q_BoardDao{
	
	@Autowired
	public SqlSession sqlSession;
	
	
	@Override
	public int write(Q_BoardDto q_boardDto) {
		int no = sqlSession.selectOne("q_board.getSeq");
		
		q_boardDto.setQ_board_no(no);
		sqlSession.insert("q_board.write",q_boardDto);
		return no;
	}


	@Override
	public Q_BoardDto read(int q_board_no) {
		sqlSession.update("q_board.read", q_board_no);
		Q_BoardDto q_boardDto = sqlSession.selectOne("q_board.get", q_board_no);
		return q_boardDto;
	}

}
