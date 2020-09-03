

package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data@AllArgsConstructor@NoArgsConstructor@Builder
public class MemberDto {
	private String member_id,member_pw,birthday,
	phone,auth,member_name,post,baseaddr,extraaddr,email,
	gender;
	

}  




