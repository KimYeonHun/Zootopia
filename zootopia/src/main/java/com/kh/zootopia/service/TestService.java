package com.kh.zootopia.service;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import com.kh.zootopia.entity.MemberDto;
import com.kh.zootopia.repository.MemberDao;

public interface TestService {
	public void memberUpdate(MemberDto memberDto)throws Exception;

//	public boolean passcheck(String member_id, String member_pw);

//	public void deleteMember(String member_id);
	
	//실험
	public boolean passpw(MemberDto memberDto);
}
