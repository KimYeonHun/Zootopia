package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @Builder @AllArgsConstructor
public class PETFDTO {
	private String petf_name,petf_type;
	private long petf_size;
	
	//fk
	private String member_id;
	private int pet_no;
	
}
