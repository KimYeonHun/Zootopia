package com.kh.zootopia.repository;

import com.kh.zootopia.entity.MemberDto;

public interface MemberDao {

	boolean join(MemberDto memberDto);

}
