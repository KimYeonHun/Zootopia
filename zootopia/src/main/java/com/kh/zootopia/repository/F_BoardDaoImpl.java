package com.kh.zootopia.repository;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.F_BoardDto;
import com.kh.zootopia.entity.Q_BoardDto;

@Repository
public class F_BoardDaoImpl implements F_BoardDao{

	@Autowired
	public SqlSession sqlSession;
	
	@Override
	public int write(F_BoardDto f_boardDto) {
		int no = sqlSession.selectOne("f_board.getSeq");
		
		f_boardDto.setF_board_no(no);
		sqlSession.insert("f_board.write",f_boardDto);
		return no;
	}
	
	@Override
	public F_BoardDto read(int f_board_no) {
		sqlSession.update("f_board.read", f_board_no);
		F_BoardDto f_boardDto = sqlSession.selectOne("f_board.get", f_board_no);
		return f_boardDto;
	}
	
	@Override
	public void f_update(F_BoardDto f_boardDto) {
		sqlSession.update("f_board.f_update", f_boardDto);
	}


	@Override
	public void f_delete(int f_board_no) {
		sqlSession.delete("f_board.f_delete", f_board_no);
		
	}
	
	@Override
	public F_BoardDto get(int f_board_no) {
		F_BoardDto f_boardDto = sqlSession.selectOne("f_board.get", f_board_no);
		return f_boardDto;
	}
	
	
	
	
}
