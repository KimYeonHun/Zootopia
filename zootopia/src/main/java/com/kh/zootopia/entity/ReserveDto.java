package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ReserveDto {
	private int res_no;
	private String res_id;
	private String res_pet;
	private int res_petsitter;
	private String res_date;
	private String res_place;
	private String res_post;
	private String res_Baddr;
	private String res_Eaddr;
	private String res_pack;
	private int res_price;
	private String singularity;
	private String res_state;
}
