package com.kh.zootopia.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class FindPasswordServiceImpl implements FindPasswordService{


	
	
	@Override
	public void findPassword(String email, String title, String text) {
	
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(email);
		message.setSubject(title);
		message.setText(text);
		
		
		
	}

	
	
}
