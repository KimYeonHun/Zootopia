package com.kh.zootopia.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.kh.zootopia.entity.CertDto;
import com.kh.zootopia.entity.MemberDto;



@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Autowired
	private PasswordEncoder encoder;
	


	@Override
	public boolean join(MemberDto memberDto) {
		
		MemberDto find = sqlSession.selectOne( "member.get",
		memberDto.getMember_id());
		
		
		if(find == null) {
			memberDto.setMember_pw(encoder.encode(memberDto.getMember_pw()));
			
			sqlSession.insert("member.join", memberDto);
			return true;
		}
		else {
			return false;
		}
	}



	//로그인

	@Override
	public boolean login(MemberDto memberDto) {
		//아이디로 회원정보를 가져오고
		MemberDto find = sqlSession.selectOne("member.get",memberDto.getMember_id());
		//아이디가 있다면
		if(find!=null) {
			//조회된 비밀번호와 입력된비밀번호를 비교
			boolean pass = encoder.matches(memberDto.getMember_pw(),find.getMember_pw());
			if(pass) {
				return true;
			}
		}
		return false;
	}

	@Override
	public MemberDto get(String member_id) {
		MemberDto find = sqlSession.selectOne("member.get",member_id);
		return find;
	}

	


	
	//비밀 번호 찾기
	@Override
	public int searchpw(String member_id, String email) {
		Map<String, Object> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("email", email);
		
		return sqlSession.selectOne("member.findpw", map);
	}


	// 비밀번호 변경
	@Override
	public void changepw(String member_id, String member_pw) {
		Map<String, Object> map = new HashMap<>();
		map.put("member_id", member_id);
		map.put("member_pw", member_pw);
		
		
		
		sqlSession.update("member.changepw", map);
		
	}
	
	
	
	/////////////////////////////////////////
// 아이디 찾기 
	@Override
	public String searchid(String member_name, String email) {
		Map<String, Object> map = new HashMap<>();
		map.put("member_name", member_name);
		map.put("email", email);

		return sqlSession.selectOne("member.findid",map);
	}

	// 아이디 찾기 랜덤 번호 추가
	@Override
	public void insert(CertDto certDto) {
		
		sqlSession.insert("member.insertCert",certDto);
	}
	@Override
	public boolean validate(CertDto certDto) {
		
		CertDto result = sqlSession.selectOne("member.validate",certDto);
		if(result !=null) {
			sqlSession.delete("member.remove",result);
		}
		
		return result !=null;

	}

	@Override
	public String CertId(String secret) {
		
		return sqlSession.selectOne("member.certId",secret);
	}



	@Override
	public boolean passcheck(MemberDto memberDto) {
		MemberDto find = sqlSession.selectOne("member.get",memberDto.getMember_id());//1.id가져오기
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
