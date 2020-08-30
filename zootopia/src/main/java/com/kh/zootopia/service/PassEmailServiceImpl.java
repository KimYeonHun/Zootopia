package com.kh.zootopia.service;

import java.util.Random;

import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.kh.zootopia.entity.MemberDto;

@Service
public class PassEmailServiceImpl implements PassEmailService {

	@Autowired
	private JavaMailSender sender;
	


	@Override
	public void sendSimpleMessage(SimpleMailMessage message) {
		sender.send(message);
		
	}

	@Override
	public void sendSimpleMessage(String email, String title, String text) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(email);
		message.setSubject(title);
		message.setText(text);
		
		this.sendSimpleMessage(message);
		
		
	}

	
	

	
		
	

		
		
	}
	
	

