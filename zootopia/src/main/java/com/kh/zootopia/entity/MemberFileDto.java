package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class MemberFileDto {
	private String member_id,profile_type,profile_name;
	private int profile_no;
	private long profile_size;
}
