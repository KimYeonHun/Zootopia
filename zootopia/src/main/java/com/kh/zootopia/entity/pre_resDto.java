package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class pre_resDto {
	
	private int pre_no,petsitter_no;
	private String res_day,res_start,res_finish,member_id;

}
