package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class F_ReplyDto {
	private int f_board_no, fr_no;
	private String fr_content,fr_writer,fr_regdate;
}
