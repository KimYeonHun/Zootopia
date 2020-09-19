

package com.kh.zootopia.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data@NoArgsConstructor@AllArgsConstructor@Builder
public class MemberDto {
	private String member_id,member_pw,birthday,
	phone,auth,member_name,post,baseaddr,extraaddr,email,
	gender;

	
	public int  getAge() {
		String year =birthday.substring(0,4);
		int a = Integer.parseInt(year); 
		int age = 2020-a+1;
		return age;
	}


}  




