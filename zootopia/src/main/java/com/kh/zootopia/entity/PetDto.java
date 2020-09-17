package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder

public class PetDto {
private int pet_no;
	private String pet_name;
	private String pet_gender;
	private String pet_kind;
	private String pet_type;
	private int pet_age;
	private String pet_size;
	private int pet_total;
	private String pet_intro;
	private String pet_vaccin;
	private String pet_toilet;
	private String when;
}
