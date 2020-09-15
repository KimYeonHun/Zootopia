package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class Q_ReplyDto {
	private int 
	q_board_no,
	qr_no;
	private String 
	qr_content,
	qr_writer,
	qr_regdate;
}
