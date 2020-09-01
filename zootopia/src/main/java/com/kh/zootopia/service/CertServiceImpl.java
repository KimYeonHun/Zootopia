package com.kh.zootopia.service;

import java.text.DecimalFormat;
import java.text.Format;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.CertDto;
import com.kh.zootopia.repository.MemberDao;

@Service
public class CertServiceImpl implements CertService {

	@Autowired
	private MemberDao memberDao;

	Random r = new Random();

	// 랜덤 인증번호 생성
	@Override
	public String RandomCert() {

		int n = r.nextInt(100000);
		Format f = new DecimalFormat("000000");
		String secret = f.format(n);

		return secret;
	}

	// 인증번호 DB 추가
	@Override
	public String CreateCert(String member_id) {

		String secret = this.RandomCert();
		CertDto certDto = CertDto.builder()
				.member_id(member_id)
				.secret(secret)
				.build();
		memberDao.insert(certDto);

		return secret;
	}

}
