package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ReserveDto {
	private int res_no;
	private String res_name;
	private int res_pet;
	private int res_petsitter;
	private String res_date;
	private String res_post;
	private String res_Baddr;
	private String res_Eaddr;
	private int res_pack;
	private String singularity;
	private String location;
	private String common_porch;
	private String access_method;
	private String cctv;
	private String safety_door;
	private String parking;
	private String useparking;
	private int res_price;
	private int pre_no;
}
