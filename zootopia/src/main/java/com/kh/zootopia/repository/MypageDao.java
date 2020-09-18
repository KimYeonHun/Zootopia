<<<<<<< HEAD
package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface MypageDao {
	// 회원정보 수정
	public void memberUpdate(MemberDto memberDto)throws Exception;
	
	//비번체크
	boolean passcheck(MemberDto memberDto);


}
=======
package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface MypageDao {
	// 회원정보 수정
	public void memberUpdate(MemberDto memberDto)throws Exception;
	
	//비번체크
	boolean passcheck(MemberDto memberDto);


}
>>>>>>> branch 'dong_pet' of https://github.com/KimYeonHun/Zootopia
