package com.kh.zootopia.repository;

import com.kh.zootopia.entity.F_BoardDto;

public interface F_BoardDao {

	public int write(F_BoardDto f_boardDto);

	public F_BoardDto read(int f_board_no);
	
	public void f_update(F_BoardDto f_boardDto);

	public void f_delete(int f_board_no);
	
	public F_BoardDto get(int f_board_no);
}
