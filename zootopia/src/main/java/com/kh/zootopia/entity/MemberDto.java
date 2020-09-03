

package com.kh.zootopia.entity;

import org.springframework.beans.factory.annotation.Autowired;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@NoArgsConstructor@AllArgsConstructor@Builder
public class MemberDto {
	private String member_id,member_pw,birthday,
	phone,auth,member_name,post,baseaddr,extraaddr,email,
	gender;
	
}

