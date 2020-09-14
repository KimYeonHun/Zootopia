package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class PetSitterDto {

	private int petsitter_no,sitter_checklist,sitter_checklist_two,care_one,care_two,care_three,
	care_four,care_five;
	
	private String member_id,petsitter_nick,petsitter_career,career_info,available_start_time,available_finish_time,
	sitter_checklist_four,sitter_checklist_five,sitter_checklist_six,sitter_accept;
	
	
	private String monday,tuesday ,wednesday ,thursday ,friday ,saturday ,sunday; 
	
}
