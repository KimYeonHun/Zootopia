package com.kh.zootopia.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice(annotations = Controller.class)
public class Error {

	
	
	
	@ExceptionHandler(Exception.class)
	public String handler(Exception ex) {
		ex.printStackTrace();
		return "error/error";
	}
	
}
