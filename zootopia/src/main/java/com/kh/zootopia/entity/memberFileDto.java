package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class memberFileDto {

	private String member_file_name;
	private long member_file_size;
	private String member_file_type;
	
}
