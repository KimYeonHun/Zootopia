package com.kh.zootopia.repository;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.MemberDto;

@Repository
public class MypageDaoImpl implements MypageDao{
	@Autowired
	private SqlSession sql;
	
	@Autowired
	private PasswordEncoder encoder;
	
	@Override
	public void memberUpdate(MemberDto memberDto) throws Exception {
		sql.update("member.memberUpdate", memberDto); 
	}
	
	@Override
	public boolean passcheck(MemberDto memberDto) {
		MemberDto find = sql.selectOne("member.get",memberDto.getMember_id());//1.id가져오기
				if(find != null) {//id가있으면
					//조회된 비밀번호와 입력된비밀번호를 비교
					boolean pass = encoder.matches(memberDto.getMember_pw(),find.getMember_pw());
					if(pass) {
						return true;
					}
				}
				return false;
			}			
}
	


