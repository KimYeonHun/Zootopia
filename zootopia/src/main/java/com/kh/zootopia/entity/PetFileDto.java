package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@NoArgsConstructor@AllArgsConstructor@Builder
public class PetFileDto {
	
	private int petsitter_no,pet_file_size;
	private String pet_file_name,pet_file_type;
	

}
