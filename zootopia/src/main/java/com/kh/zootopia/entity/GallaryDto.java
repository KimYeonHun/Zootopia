package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class GallaryDto {
	private int PETSITTER_NO;
	private String pet_file_name;
	private long pet_file_size;
	private String pet_file_type;
}