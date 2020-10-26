package com.js.pjt.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {
	@ExceptionHandler(Exception.class) 
	public String exceptionHandler(Exception  exception) {
		String message=exception.getMessage();
		exception.printStackTrace();
		if(message=="login") {
			return "error/error_login";
		} else if(message=="admin" || message=="posAdmin") {
			return "error/error_admin";
		} else {
			return "error/error";
		}
	}

}
