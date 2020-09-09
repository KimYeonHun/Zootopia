package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PetSitterDto {

	private int petsitter_no;
	private String member_id,petsitter_nick,petsitter_career,career_info,available_time,
	sitter_checklist,sitter_checklist_two,sitter_checklist_three,sitter_checklist_four,sitter_checklist_five,sitter_checklist_six,photo,sitter_accept,petsitter_email;
	
}
