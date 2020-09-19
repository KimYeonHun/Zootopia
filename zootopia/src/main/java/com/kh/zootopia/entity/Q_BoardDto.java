package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class Q_BoardDto {
	
	private int 
	q_board_no,
	q_read,
	q_replycount,
	q_group_no;
	private String 
	member_id,
	q_title,
	q_head,
	q_content,
	q_when,
	q_file;
}
