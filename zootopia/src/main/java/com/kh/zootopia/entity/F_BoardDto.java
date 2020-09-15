package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class F_BoardDto {
	
	private int 
	f_board_no,
	f_read;
	private String 
	member_id,
	f_title,
	f_content,
	f_when,
	f_file;
	
}
