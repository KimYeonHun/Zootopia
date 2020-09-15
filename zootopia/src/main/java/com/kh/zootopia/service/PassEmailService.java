package com.kh.zootopia.service;





import org.springframework.mail.SimpleMailMessage;



public interface PassEmailService {

	
	void sendSimpleMessage(SimpleMailMessage message);  // 참조랑 숨은 참조가 있을 때
	void sendSimpleMessage(String email,String title,String text); // 한사람에게 보낼때
	

	


}
